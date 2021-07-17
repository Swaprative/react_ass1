import React, { useState } from 'react';
import Icon from './Components/Icon.js';

//toastify
import { ToastContainer, toast } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';

//reactstrap
import { Button,Container,Card,CardBody,Row,Col } from 'reactstrap';
import 'bootstrap/dist/css/bootstrap.css'
import './tic_tac.css';

const tictacArray=new Array(9).fill("")
const App=()=>{
      let [isCross, setIsCross]=useState()
      let [winMessage, setWinMessage] = useState("")
      const playAgain=()=>{
            setIsCross(true)
            setWinMessage("")
            tictacArray.fill("")
      }
      const findWinner=()=>{
            if (tictacArray[0]==tictacArray[1] && tictacArray[0]==tictacArray[2] && tictacArray[0]!="")
            {
                  setWinMessage(tictacArray[0]+" has won !");
            }
            else if(tictacArray[3]==tictacArray[4] && tictacArray[3]==tictacArray[5] && tictacArray[3]!="")
            {
                  setWinMessage(tictacArray[3]+" has won !");
            }
            else if(tictacArray[6]==tictacArray[7] && tictacArray[6]==tictacArray[8] && tictacArray[6]!="")
            {
                  setWinMessage(tictacArray[6]+" has won !");
            }
            else if(tictacArray[0]==tictacArray[3] && tictacArray[0]==tictacArray[6] && tictacArray[0]!="")
            {
                  setWinMessage(tictacArray[0]+" has won !");
            }
            else if(tictacArray[1]==tictacArray[4] && tictacArray[1]==tictacArray[7] && tictacArray[1]!="")
            {
                  setWinMessage(tictacArray[1]+" has won !");
            }
            else if(tictacArray[5]==tictacArray[2] && tictacArray[2]==tictacArray[8] && tictacArray[2]!="")
            {
                  setWinMessage(tictacArray[2]+" has won !");
            }
            else if(tictacArray[0]==tictacArray[4] && tictacArray[0]==tictacArray[8] && tictacArray[0]!="")
            {
                  setWinMessage(tictacArray[0]+" has won !");
            }
            else if(tictacArray[2]==tictacArray[4] && tictacArray[2]==tictacArray[6] && tictacArray[2]!="")
            {
                  setWinMessage(tictacArray[2]+" has won !");
            }
            else if(tictacArray[0]!="" && tictacArray[1]!="" && tictacArray[2]!="" && tictacArray[3]!="" && tictacArray[4]!="" && tictacArray[5]!="" && tictacArray[6]!="" && tictacArray[7]!="" && tictacArray[8]!="" && tictacArray[9]!="")
            {
                  setWinMessage("Draw Game");
            }
            
      }
      const changeItem=(index)=>
      {
            if(winMessage)
            {
                  return toast("Game is already been over",{type: 'success'})
            }
            if(tictacArray[index]==""){
                  tictacArray[index]= (isCross ? "Cross" : "Circle")
                  setIsCross(!isCross)
            }
            else{
                  return toast("This is already occupied",{type: 'error'})
            }
            findWinner()
      }


      return(
            <Container className="p-5">
            <ToastContainer position="bottom-center"></ToastContainer>
            <Row>
                  <Col md={6} className="offset-md-3">
                  {
                      winMessage? (
                            <div>
                            <h1 className="text-center">
                                  {winMessage}
                            </h1>
                            <Button className='play' onClick={playAgain}>Play Again</Button>
                            </div>
                            ):(
                                  <h1>
                                  {isCross?"Cross's Turn":"Circle's Turn"}
                                  </h1>
                                  
                            )
                  }
                  <div className="grid">

                  {tictacArray.map((value,index)=>
                  (
                        <card onClick={()=>changeItem(index)}>
                              <CardBody className="box">
                              <Icon choice={tictacArray[index]}/>
                              </CardBody>
                        </card>
                  )
                  )}

                  </div>


                  </Col>
            </Row>
            <h1>Choose Your Sign!</h1>
            <div>
            <button className='play2' onClick={()=>setIsCross(true)}>X</button>
            <button className='play2' onClick={()=>setIsCross(false)}>O</button>
            </div>
            </Container>
      )
}

export default App