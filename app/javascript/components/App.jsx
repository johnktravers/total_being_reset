import React from 'react';
import { BrowserRouter, Route, Switch } from 'react-router-dom';

import HomePage    from '../pages/HomePage';
import AboutPage   from '../pages/AboutPage';
import ContactPage from '../pages/ContactPage';

function App() {
  return (
    <BrowserRouter>
      <Switch>
        <Route path='/' exact component={ HomePage } />
        <Route path='/about' exact component={ AboutPage } />
        <Route path='/contact' exact component={ ContactPage } />
      </Switch>
    </BrowserRouter>
  );
}

export default App;
