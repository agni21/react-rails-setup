import React from 'react'  
import ReactDOM from 'react-dom'  
import NavC from './Nav'


// const quotes = document.querySelector('#quotes')  
// ReactDOM.render(<App />, quotes)

document.addEventListener('DOMContentLoaded', () => {
  const node = document.getElementById('navContainer')
  const data = JSON.parse(node.getAttribute('data'))
  ReactDOM.render(
    <NavC data={data} />,
    node
  )
})
