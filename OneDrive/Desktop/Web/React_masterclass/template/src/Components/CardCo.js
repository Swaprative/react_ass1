import React from 'react';

const CardCo=({title,desc,text,img})=>
      {
            return(
            <div className="col-4">
            <div className="card">
              <img
                src={img}
                className="card-img-top"
                alt="..."
              />
              <div className="card-body">
                <h5 className="card-title">{title}</h5>
                <p className="card-text">
                  {desc}
                </p>
                <a href="#" className="btn btn-success">{text}</a>
              </div>
            </div>
          </div>
            )
      }
 export default CardCo