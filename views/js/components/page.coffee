import React from 'react'
import ReactDOM from 'react-dom'

import Navigation from './navigation'

import $ from 'jquery'

class Page extends React.Component

  constructor: (props) ->
    super props
    @state = {}
    return

  gotoPage: (url) =>
    @props.history.push url
    return

  render: ->
    <div id="page-#{@props.name}" className="page">
      <div className="container">
        <div className="row">
          <div className="col-md-7">
            <div className="content-author">
              <a onClick={@gotoPage.bind @, '/'} href="javascript:;">
                brooke mcentee
              </a>
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