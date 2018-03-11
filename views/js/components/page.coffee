import React from 'react'
import ReactDOM from 'react-dom'

import Navigation from './navigation'

import $ from 'jquery'

class Page extends React.Component

  constructor: (props) ->
    super props
    @state = {}
    return

  render: ->
    <div className="page">
      <div className="container">
        <div className="row">
          <div className="col-md-7">
            <div className="content-author">
              brooke mcentee
            </div>
          </div>
          <div className="col-md-5">
            <Navigation
              history={@props.history}
              active="work"
            />
          </div>
        </div>
      </div>
      {@props.children}
    </div>

export default Page