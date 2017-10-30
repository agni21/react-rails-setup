import React from 'react'
import ReactDOM from 'react-dom'
import Button from 'react-bootstrap/lib/Button';
//import { Button } from 'react-bootstrap';

class QuotesDisplay extends React.Component {  
  constructor (props) {
    super(props);
    this.state = {
      id: 1,
      quote: props.quotes[1]
    };
    this.next = this.next.bind(this);
    this.previous = this.previous.bind(this);
  }

  next () {
    if(this.state.id < Object.keys(this.props.quotes).length) {
      this.setState(prevState => ({ 
        id: prevState.id + 1,
        quote: this.props.quotes[prevState.id + 1]
      }));
    }
    else {
      this.setState({
        id: 1,
        quote: this.props.quotes[1]
        });
    }
  }
    previous () {
    if(this.state.id > 1) {
      this.setState(prevState => ({ 
        id: prevState.id - 1,
        quote: this.props.quotes[prevState.id - 1]
      }));
    }
    else {
      this.setState({
        id: 5,
        quote: this.props.quotes[5]
        });
    }
  }

  render () {

//        <button onClick={() => { this.next() }}>
    return (
      <div style={{
    margin: 'auto',
    maxWidth: 500}}>
        <Button onClick={this.previous}>
          Previous
        </Button>
        <button className='btn float-right' onClick={this.next} style={{float: 'right'}}>
          Next
        </button>
        <p>{this.state.id}</p>
        <p>{this.state.quote.text}</p>
        <p>{this.state.quote.author}</p>
      </div>
    );
  }
}

export default QuotesDisplay;