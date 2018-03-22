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

  gotoLast: =>
    name = @props.name
    nextItemIndex = 0
    for item, i in @props.items
      if item.key is name
        nextItemIndex = i - 1
        if nextItemIndex < 0
          nextItemIndex = @props.items.length - 1
    nextItem = @props.items[nextItemIndex]
    @gotoPage '/projects/' + nextItem.key
    window.scrollTo(0, 0)
    return

  gotoNext: =>
    name = @props.name
    nextItemIndex = 0
    for item, i in @props.items
      if item.key is name
        nextItemIndex = i + 1
        if nextItemIndex >= @props.items.length
          nextItemIndex = 0
    nextItem = @props.items[nextItemIndex]
    @gotoPage '/projects/' + nextItem.key
    window.scrollTo(0, 0)
    return

  render: ->
    <div id="page-#{@props.name}" className="page">
      <div className="container-fluid">
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
      <div className="container-fluid">
        <div className="row footer">
          <div className="col-md-7">
            <a onClick={@gotoPage.bind @, '/'} href="javascript:;">
              brooke mcentee
            </a>
          </div>
          <div className="col-md-5 footer-pages">
            <a href="javascript:;" onClick={@gotoLast.bind @}>
              last
            </a>
            <a href="javascript:;" onClick={@gotoNext.bind @}>
              next
            </a>
          </div>
        </div>
      </div>
    </div>

export default Page