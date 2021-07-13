import React from 'react'
import Button from "./Button"
import "./style.css"

function Appgo(){
      return (
            <div className='division'> 
            <h1 style={{ textAlign:"center", 
            fontSize:80
            }}>Hello World</h1>
            <h2 className='text'>This is a React Program</h2>
            <Button buttontext='The button'/>
            <img src="https://reactjs.org/logo-og.png"></img>
            </div>
      )
}

export default Appgo