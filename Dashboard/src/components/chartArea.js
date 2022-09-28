import React, { Component } from 'react';
import {
    Chart as ChartJS,
    CategoryScale,
    LinearScale,
    PointElement,
    LineElement,
    Title,
    Tooltip,
    Filler,
    Legend,
} from 'chart.js';
import { Line } from 'react-chartjs-2';

ChartJS.register(
    CategoryScale,
    LinearScale,
    PointElement,
    LineElement,
    Title,
    Tooltip,
    Filler,
    Legend
);

class ChartArea extends Component {
    constructor(props) {
        super(props);

    }

    componentDidMount() {

    }

    componentWillUnmount() {

    }

    render() {
        const labels = this.props.labels ?? []
        const options = {
            responsive: true,
            plugins: {
                legend: {
                    position: 'top',
                },
                title: {
                    display: true,
                    text: this.props.title ?? "Chart",
                },
            },
        };
        const data = {
            labels,
            datasets: [
                {
                    fill: true,
                    label: this.props.label ?? "Chart",
                    data: this.props.data ?? [],
                    borderColor: this.props.color ?? "#AAAAAA",
                    backgroundColor: (this.props.color ?? "#AAAAAA") + '77',
                },
            ],
        };
        return (
            <div style={{ width: this.props.width ?? "30%", height: "auto" }}>
                <Line options={options} data={data} />
            </div>
        );
    }
}

export default ChartArea;