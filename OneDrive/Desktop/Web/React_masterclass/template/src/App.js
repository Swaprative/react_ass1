import React from 'react';
import Navbar from './Components/Navbar.js';
import Content from './Components/Content.js';
import Feature from './Components/Features.js';
import Card from './Components/Card.js';
import Footer from './Components/Footer.js';
import './App.css';

function App() {
  return (
    <div>
      <Navbar/>
      <Content/>
      <Feature/>
      <Card/>
      <Footer/>
    </div>
  );
}

export default App;
