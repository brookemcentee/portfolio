import React from 'react'
import ReactDOM from 'react-dom'

import $ from 'jquery'

class Header extends React.Component 

  constructor: (props) ->
    super props
    @state = {}
    return

  render: ->
    <div className="row">
      <div className="col-sm-12">
        <div className="content-header">
          <div className="content-header-title">
            {@props.title}
          </div>
          <div className="content-header-subtitle">
            {@props.subtitle}
          </div>
        </div>
      </div>
    </div>

class Paragraph extends React.Component 

  constructor: (props) ->
    super props
    @state = {}
    return

  render: ->
    <div className="row content-section">
      <div className="col-sm-12">
        {
          if @props.title
            <div className="content-section-title">
              {@props.title}
            </div>
        }
        {@props.children}
      </div>
    </div>

export {Header, Paragraph}