import React from 'react';
import './CardCo.js'
import '../App.css'
import CardCo from './CardCo.js';


const Card=()=>
{
      return(
            <section className="contact bg-success ">
      <div className="container ">
        <h2 className="text-white">
          We love new friends!
        </h2>
        <div className="row">
        <CardCo title="Rajasthan" desc="very hot place, it's a desert." text="Go there" img="https://images.pexels.com/photos/3532557/pexels-photo-3532557.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"/>
        <CardCo title="Bombay" desc="Sea shore, highly populated area." text="Go there" img="https://images.pexels.com/photos/3532544/pexels-photo-3532544.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"/>
        <CardCo title="Delhi" desc="Heart of India." text="Go there" img="https://images.pexels.com/photos/2522663/pexels-photo-2522663.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"/>
        </div>
      </div>
    </section>
      )
}

export default Card