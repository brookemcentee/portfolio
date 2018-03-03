import React from 'react'
import ReactDOM from 'react-dom'
import $ from 'jquery'

import Accordion from './components/accordion'

accordionItems = [
  name: 'First'
  color: '#DC9596'
,
  name: 'Second'
  color: '#F6AE2D'
,
  name: 'Third'
  color: '#64B6AC'
,
  name: 'Four'
  color: '#28666E'
]

class App extends React.Component 

  constructor: (props) ->
    super props
    @state = {}
    return

  render: ->
    <div> 
      <Accordion items={accordionItems} />
    </div>

ReactDOM.render <App />, $('div#app')[0]