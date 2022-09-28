import React, { Component } from 'react';
import HomeIcon from '@mui/icons-material/Home';
import GrassIcon from '@mui/icons-material/Grass';
import MapIcon from '@mui/icons-material/Map';
import SettingsIcon from '@mui/icons-material/Settings';
import agrolora from "../assets/agrolora.png"
import ContextModule from '../utils/contextModule';

class Lateral extends Component {
    constructor(props) {
        super(props);

    }
    static contextType = ContextModule;

    componentDidMount() {

    }

    componentWillUnmount() {

    }

    render() {
        return (
            <div style={{ position: "absolute", left: "0%", width: "10%" }}>
                <div style={{ display: "flex", flexDirection: "column", alignItems: "center", backgroundColor: "#47B973", borderRadius: "20px", margin: "20%" }}>
                    <div style={{ height: window.innerHeight * 0.22 }}>
                        <img src={agrolora} height={window.innerHeight * 0.09} />
                    </div>
                    <div style={{ height: window.innerHeight * 0.22, paddingTop: "25%" }} onClick={() => this.context.setValue({ tab: 0 })}>
                        <GrassIcon style={{ fontSize: "2.5rem", color: this.context.value.tab === 0 ? "white" : "black" }} />
                    </div>
                    <div style={{ height: window.innerHeight * 0.22, paddingTop: "25%" }} onClick={() => this.context.setValue({ tab: 1 })}>
                        <MapIcon style={{ fontSize: "2.5rem", color: this.context.value.tab === 1 ? "white" : "black" }} />
                    </div>
                </div>
            </div>
        );
    }
}

export default Lateral;