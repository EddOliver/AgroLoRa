import React, { Component } from 'react';
import './App.css';
import Lateral from './components/lateral';
import { ContextProvider } from './utils/contextModule';
import TabsController from './tabsController/tabsController';

class App extends Component {
  render() {
    return (
      <>
        <ContextProvider>
          <Lateral />
          <TabsController />
        </ContextProvider>
      </>
    );
  }
}

export default App;
