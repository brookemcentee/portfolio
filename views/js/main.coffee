import React from 'react'
import ReactDOM from 'react-dom'
import $ from 'jquery'
import { BrowserRouter as Router, Route, Link, Switch } from "react-router-dom"

import Accordion from './components/accordion'

import PageMobile from './pages/mobile'

accordionItems = [
  key: 'mobile'
  name: 'Mobile'
  color: '#28666E'
,
  key: 'scholarships'
  name: 'Scholarships'
  color: '#64B6AC'
,
  key: 'basketball'
  name: 'Basketball'
  color: '#F6AE2D'
,
  key: 'udine'
  name: 'UDine'
  color: '#DC9596'
]

class App extends React.Component

  constructor: (props) ->
    super props
    @state = {}
    return

  render: ->
    <Router>
      <Switch>
        <Route exact path="/" render={
          (props) =>
            <Accordion
              items={accordionItems}
            />
        } />
        <Route exact path="/projects/mobile" render={
          (props) =>
            <PageMobile />
        } />
      </Switch>
    </Router>

ReactDOM.render <App />, $('div#app')[0]