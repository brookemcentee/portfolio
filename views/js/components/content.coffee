import React from 'react'
import ReactDOM from 'react-dom'

import $ from 'jquery'

class Header extends React.Component 

  constructor: (props) ->
    super props
    @state = {}
    return

  render: ->
    <div className="container">
      <div className="row">
        <div className="col-sm-7">
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
    </div>

class Paragraph extends React.Component 

  constructor: (props) ->
    super props
    @state = {}
    return

  render: ->
    <div className="container">
      <div className="row content-section">
        <div className="col-sm-7">
          {
            if @props.title
              <div className="content-section-title">
                {@props.title}
              </div>
          }
          {@props.children}
        </div>
      </div>
    </div>

class Subsection extends React.Component 

  constructor: (props) ->
    super props
    @state = {}
    return

  render: ->
    <div className="row content-subsection">
      <div className="col-sm-12">
        {
          if @props.title
            <div className="content-subsection-title">
              {@props.title}
            </div>
        }
        {@props.children}
      </div>
    </div>

class Image extends React.Component 

  constructor: (props) ->
    super props
    @state = {}
    return

  render: ->
    <div className="content-image">
      <img src={@props.src} />
    </div>

export {Header, Paragraph, Subsection, Image}