import React from 'react'  
import ReactDOM from 'react-dom'  
import App from './components/App'


// const quotes = document.querySelector('#quotes')  
// ReactDOM.render(<App />, quotes)
document.addEventListener('DOMContentLoaded', () => {
  const node = document.getElementById('quotes')
  const data = JSON.parse(node.getAttribute('data'))
  ReactDOM.render(
    <App quotes={data} />,
    node,
  )
})