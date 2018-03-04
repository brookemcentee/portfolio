import React from 'react'
import ReactDOM from 'react-dom'

import $ from 'jquery'

class Navigation extends React.Component 

  constructor: (props) ->
    super props
    @state = {}
    return

  render: ->
    <div className="navigation">
      <a href="javascript:;">
        work
      </a>
      <a href="javascript:;">
        about
      </a>
    </div>

export default Navigation