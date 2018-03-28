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

class Images extends React.Component 

  constructor: (props) ->
    super props
    @state = {}
    return

  render: ->
    <div className="content-images" style={background: if @props.background then @props.background else 'inherit'}>
      <div className="container">
        <div className="row">
          {
            @props.images.map (image, i) =>
              <div key={i} className="col-sm-#{12 / @props.images.length} col-xs-12 #{if @props.centered then 'text-center' else ''}">
                {
                  if @props.labels?[i]?
                    <span className="image-label">
                      {@props.labels[i]}
                    </span>
                }
                <img
                  className="#{if @props.noShadow then '' else 'img-float'}"
                  src={image}
                />
              </div>
          }
        </div>
      </div>
    </div>

class TextBoxes extends React.Component

  constructor: (props) ->
    super props
    @state = {}
    return

  render: ->
    children = @props.children
    if not Array.isArray children
      children = [children]
    <div className="container-fluid">
      <div className="row">
        {
          children.map (box, i) =>
            <div key={i} className="col-sm-#{12 / children.length} col-xs-12">
              {box}
            </div>
        }
      </div>
    </div>

class TextBox extends React.Component

  constructor: (props) ->
    super props
    @state = {}
    return

  render: ->

    <div className="text-box img-float">
      <h4 className="text-box-title">{@props.title}</h4>
      {@props.children}
    </div>

export {Header, Paragraph, Subsection, Image, Images, TextBoxes, TextBox}