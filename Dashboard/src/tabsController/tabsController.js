import React, { Component } from 'react';
import Charts from '../tabs/charts';
import Maps from '../tabs/maps';
import ContextModule from '../utils/contextModule';

class TabsController extends Component {
    static contextType = ContextModule;
    render() {
        return (
            <div>
                {
                    this.context.value.tab === 0 &&
                    <Charts />
                }
                {
                    this.context.value.tab === 1 &&
                    <Maps/>
                }
            </div>
        );
    }
}

export default TabsController;