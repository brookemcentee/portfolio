import React from 'react'
import ReactDOM from 'react-dom'
import $ from 'jquery'
import { BrowserRouter as Router, Route, Link, Switch } from "react-router-dom"

import Accordion from './components/accordion'
import About from './components/about'

import PageMobile from './pages/mobile'
import PageTasks from './pages/tasks'
import PageBasketball from './pages/basketball'
import PageUdine from './pages/udine'

accordionItems = [
  key: 'mobile'
  name: 'Mobile'
  color: '#28666E'
,
  key: 'tasks'
  name: 'Tasks'
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
              history={props.history}
            />
        } />
        <Route exact path="/about" render={
          (props) =>
            <About history={props.history} />
        } />
        <Route exact path="/projects/mobile" render={
          (props) =>
            <PageMobile history={props.history} />
        } />
        <Route exact path="/projects/tasks" render={
          (props) =>
            <PageTasks history={props.history} />
        } />
        <Route exact path="/projects/basketball" render={
          (props) =>
            <PageBasketball history={props.history} />
        } />
        <Route exact path="/projects/udine" render={
          (props) =>
            <PageUdine history={props.history} />
        } />
      </Switch>
    </Router>

ReactDOM.render <App />, $('div#app')[0]