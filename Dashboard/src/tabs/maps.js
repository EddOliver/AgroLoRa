import React, { Component } from 'react';
import '../App.css';
import ReactDOM from 'react-dom/client';
import styles from "../components/style-module"
import MyMap from '../components/mapos';

class Maps extends Component {
  constructor(props) {
    super(props);
    this.state = {
      coord: [-99.075887, 19.314],
      coords: [[-99.074787, 19.310355], [-99.07, 19.3105], [-99.08437, 19.3150355],[-99.074387, 19.315155], [-99.076, 19.3125], [-99.08337, 19.3102355]],
      colors: [styles.Blue, styles.Blue, styles.Blue],
    }
  }

  componentDidMount() {

  }

  componentWillUnmount() {

  }

  render() {
    return (
      <div style={{ position: "absolute", left: "10%", width: "90%", paddingTop: "2%" }}>
        <MyMap
          coord={this.state.coord}
          coords={this.state.coords}
          colors={this.state.colors}
          zoom={16}
        />
      </div>
    );
  }
}

export default Maps;
