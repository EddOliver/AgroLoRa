import React, { Component } from 'react';
import '../App.css';
import { Card, CardBody, CardHeader } from 'reactstrap';
import IotReciever from "../components/iot-reciever-aws"
import apple from "../assets/apple.png"
import orange from "../assets/orange.png"
import tomato from "../assets/tomatoes.png"
import pineapple from "../assets/pineapple.png"
import mango from "../assets/mango.png"
import strawberry from "../assets/strawberry.png"
import ChartArea from '../components/chartArea';
import { decode as atob, encode as btoa } from 'base-64'
import ContextModule from '../utils/contextModule';

const plants = [
  {
    kind: "Tomatoes",
    image: tomato
  },
  {
    kind: "Apples",
    image: apple
  },
  {
    kind: "Oranges",
    image: orange
  },
  {
    kind: "Pineapples",
    image: pineapple
  },
  {
    kind: "Mangos",
    image: mango
  },
  {
    kind: "Strawberries",
    image: strawberry
  }
]

function gen(max, min) {
  return Math.floor(Math.random() * (max - min + 1)) + min
}

class Charts extends Component {
  constructor(props) {
    super(props);
    this.state = {
      humidity: {
        data: [],
        label: [],
        color: "#00FF00"
      },
      temp: {
        data: [],
        label: [],
        color: "#00FF00"
      },
      soil: {
        data: [],
        label: [],
        color: "#00FF00"
      },
      selected: {
        kind: "Tomatoes",
        image: tomato
      },
    }
    this.interval = null
  }

  static contextType = ContextModule;

  componentDidMount() {
    fetch(`https://api.openweathermap.org/data/2.5/weather?lat=${this.context.value.geo.lat}&lon=${this.context.value.geo.lon}&appid=07acc2a1d2550505e58e5721466a4944`, { method: 'GET', redirect: 'follow' }).then(response => response.text())
      .then(result => this.context.setValue({ weather: JSON.parse(result).weather[0] }))
      .catch(error => console.log('error', error));
    this.interval = setInterval(() => {
      if (this.state.selected.kind !== "Tomatoes" && this.state.selected.kind !== "Apples") {
        let humidity = this.state.humidity
        let temp = this.state.temp
        let soil = this.state.soil
        if (humidity.data.length > 5) {
          humidity.data.shift()
          humidity.label.shift()
        }
        if (temp.data.length > 5) {
          temp.data.shift()
          temp.label.shift()
        }
        if (soil.data.length > 5) {
          soil.data.shift()
          soil.label.shift()
        }
        humidity.data.push(gen(40, 50))
        temp.data.push(gen(77, 83))
        soil.data.push(gen(40, 50))
        humidity.label.push((new Date).toLocaleTimeString())
        temp.label.push((new Date).toLocaleTimeString())
        soil.label.push((new Date).toLocaleTimeString())
        this.setState({
          humidity,
          temp,
          soil
        })
      }
    }, 5000)
  }

  componentWillUnmount() {
    clearInterval(this.interval)
  }

  callBackIoT = (data) => {
    let tempe = {
      name: JSON.parse(data[1]).name,
      payload: atob(JSON.parse(data[1]).payload),
    }
    console.log(tempe)
    if (tempe.name === "Lora E5 mini" && this.state.selected.kind === "Apples") {
      tempe.payload = tempe.payload.split(",").map((item) => (item).toString(16).codePointAt(0))
      let humidity = this.state.humidity
      let temp = this.state.temp
      let soil = this.state.soil
      if (humidity.data.length > 5) {
        humidity.data.shift()
        humidity.label.shift()
      }
      if (temp.data.length > 5) {
        temp.data.shift()
        temp.label.shift()
      }
      if (soil.data.length > 5) {
        soil.data.shift()
        soil.label.shift()
      }
      humidity.data.push(tempe.payload[1])
      temp.data.push(tempe.payload[2])
      soil.data.push(Math.abs(255 - tempe.payload[0]) * (100 / 255))
      humidity.label.push((new Date).toLocaleTimeString())
      temp.label.push((new Date).toLocaleTimeString())
      soil.label.push((new Date).toLocaleTimeString())
      this.setState({
        humidity,
        temp,
        soil
      })
    }
    if (tempe.name === "Agro1" && this.state.selected.kind === "Tomatoes") {
      tempe.values = []
      tempe.values.push(tempe.payload.substring(1,2))
      tempe.values.push(tempe.payload.substring(3,4))
      tempe.values.push(tempe.payload.substring(5))
      tempe.values = tempe.values.map((item) => (item).toString(16).codePointAt(0))
      let humidity = this.state.humidity
      let temp = this.state.temp
      let soil = this.state.soil
      if (humidity.data.length > 5) {
        humidity.data.shift()
        humidity.label.shift()
      }
      if (temp.data.length > 5) {
        temp.data.shift()
        temp.label.shift()
      }
      if (soil.data.length > 5) {
        soil.data.shift()
        soil.label.shift()
      }
      humidity.data.push(tempe.values[1])
      temp.data.push(tempe.values[0]*1.8+32)
      soil.data.push(tempe.values[2])
      humidity.label.push((new Date).toLocaleTimeString())
      temp.label.push((new Date).toLocaleTimeString())
      soil.label.push((new Date).toLocaleTimeString())
      this.setState({
        humidity,
        temp,
        soil
      })
    }
  }

  render() {
    let chartsW = "60%"
    return (
      <>
        <IotReciever sub_topics={["/helium/devices"]} callback={this.callBackIoT} />
        <div style={{ position: "absolute", left: "10%", width: "90%" }}>
          <div style={{ display: 'flex', flexDirection: "row", flexWrap: "wrap", justifyContent: "space-evenly" }}>
            {
              plants.map((item, index) =>
                <div key={"Plant:" + index} style={{ width: "15%", display: 'flex', justifyContent: "center", paddingTop: "2%" }}>
                  <Card style={{ width: "70%" }} onClick={() =>
                    this.setState({
                      selected: plants[index],
                      humidity: {
                        data: [],
                        label: [],
                        color: "#00FF00"
                      },
                      temp: {
                        data: [],
                        label: [],
                        color: "#00FF00"
                      },
                      soil: {
                        data: [],
                        label: [],
                        color: "#00FF00"
                      }
                    })}>
                    <CardHeader style={{ textAlign: "center", backgroundColor: "#47B973" }}>
                      {
                        item.kind
                      }
                    </CardHeader>
                    <CardBody style={{ textAlign: "center", backgroundColor: this.state.selected.kind === item.kind ? "#E6F8EA" : "white" }}>
                      <img src={item.image} width={"100%"} style={{ borderRadius: "10px" }}></img>
                    </CardBody>
                  </Card>
                </div>
              )
            }
          </div>
          {
            this.state.selected.kind &&
            <div style={{ display: 'flex', flexDirection: "row", justifyContent: "space-between", paddingTop: "10px" }}>
              <div style={{ width: "50%" }}>
                <div style={{ display: 'flex', flexDirection: "column", justifyContent: "space-evenly", alignItems: "center", flexWrap: "wrap", height: "100%" }}>
                  <Card style={{ width: chartsW, padding: "20px", margin: "10px", backgroundColor: "#E6F8EA" }}>
                    <ChartArea
                      title="Humidity"
                      label="Relative Humidity [%]"
                      data={this.state.humidity.data}
                      labels={this.state.humidity.label}
                      color={this.state.humidity.color} // Hex Color Please
                      width={"100%"}
                    />
                  </Card>
                  <Card style={{ width: chartsW, padding: "20px", margin: "10px", backgroundColor: "#E6F8EA" }}>
                    <ChartArea
                      title="Temperature"
                      label="Fahrenheit [°F]"
                      data={this.state.temp.data}
                      labels={this.state.temp.label}
                      color={this.state.temp.color} // Hex Color Please
                      width={"100%"}
                    />
                  </Card>
                </div>
              </div>
              <div style={{ width: "50%" }}>
                <div style={{ display: 'flex', flexDirection: "column", alignItems: "center", justifyContent: "space-evenly" }}>
                  <Card style={{ width: chartsW, padding: "20px", margin: "10px", backgroundColor: "#E6F8EA" }}>
                    <ChartArea
                      title="Soil Moisture"
                      label="Relative Moisture [%]"
                      data={this.state.soil.data}
                      labels={this.state.soil.label}
                      color={this.state.soil.color} // Hex Color Please
                      width={"100%"}
                    />
                  </Card>
                  <Card style={{ width: chartsW, padding: "20px", margin: "10px", backgroundColor: "#47B973" }}>
                    {
                      this.context.value.weather &&
                      <div style={{ display: 'flex', flexDirection: "row", alignItems: "center", justifyContent: "space-evenly" }}>
                        <img width={"50%"} src={`http://openweathermap.org/img/wn/${this.context.value.weather.icon}@4x.png`} />
                        <div style={{ textAlign: "center", fontSize: "2rem" }}>
                          {
                            this.context.value.weather.main
                          }
                          <br />
                          {
                            this.context.value.weather.description
                          }
                        </div>
                      </div>
                    }
                  </Card>
                </div>
              </div>
            </div>
          }
        </div>
      </>
    );
  }
}

export default Charts;
