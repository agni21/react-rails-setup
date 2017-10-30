import React from 'react' 
import ReactDOM from 'react-dom'   
import QuotesDisplay from './QuotesDisplay'


class App extends React.Component {
  render() {
    return <QuotesDisplay quotes={this.props.quotes} />;
  }
}

export default App