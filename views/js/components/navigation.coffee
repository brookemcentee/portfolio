import React from 'react'
import ReactDOM from 'react-dom'

import $ from 'jquery'

class Navigation extends React.Component 

  constructor: (props) ->
    super props
    @state = {}
    return

  gotoPage: (url) =>
    @props.history.push url
    return

  render: ->
    <div className="navigation">
      <a onClick={@gotoPage.bind @, '/'} className="#{if @props.active is 'work' then 'active' else ''}" href="javascript:;">
        work
      </a>
      <a onClick={@gotoPage.bind @, '/about'} className="#{if @props.active is 'about' then 'active' else ''}" href="javascript:;">
        about
      </a>
    </div>

export default Navigation