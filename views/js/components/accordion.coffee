import React from 'react'
import ReactDOM from 'react-dom'
import { Redirect } from "react-router-dom"

import Navigation from './navigation'

import $ from 'jquery'

class Accordion extends React.Component 

  constructor: (props) ->
    super props
    @state =
      transitioning: false
      contentHidden: false
    return

  openItem: (item) =>
    $(ReactDOM.findDOMNode(@refs["links-#{item.key}"])).css 'color', item.color
    if not @state.transitioning
      @refs["item-#{item.key}"].open()
    return

  closeItem: (item) =>
    $(ReactDOM.findDOMNode(@refs["links-#{item.key}"])).css 'color', '#000'
    if not @state.transitioning
      @refs["item-#{item.key}"].close()
    return

  expandItem: (item) =>
    if not @state.transitioning
      @setState
        transitioning: true
      , =>
        @refs["item-#{item.key}"].expand()
        return
    return

  hideContent: =>
    @setState
      contentHidden: true
    return

  render: ->
    <div className="container-fluid no-padding">
      <div className="accordion">
        <div className="col-md-7 accordion-content" style={background: "#{if @state.contentHidden then '#FFF' else '#E2E2E2'}"}>
          <div className="accordion-title">
            <div className="accordion-title-header">
              Brooke<br />McEntee
            </div>
            <div className="accordion-title-subheader">
              – ui/ux designer
            </div>
          </div>
          <div className="accordion-items">
            {
              @props.items.map (item, i) =>
                offset = (@props.items.length - 1 - i) * 50
                <AccordionItem
                  ref="item-#{item.key}"
                  key="item-#{i}"
                  offset={offset}
                  item={item}
                  index={i}
                  hideContent={@hideContent}
                  contentHidden={@state.contentHidden}
                  history={@props.history}
                />
            }
          </div>
        </div>
      </div>
      <div className="col-md-5 #{if @state.contentHidden then 'hidden' else ''}">
        <Navigation
          history={@props.history}
          active="work"
        />
        <div className="accordion-links">
          {
            @props.items.map (item, i) =>
              <div key="links-#{i}" >
                <a
                  ref="links-#{item.key}"
                  href="javascript:;"
                  onMouseEnter={@openItem.bind @, item}
                  onMouseLeave={@closeItem.bind @, item}
                  onClick={@expandItem.bind @, item}
                >
                  {item.name}
                </a>
              </div>
          }
        </div>
      </div>
    </div>

class AccordionItem extends React.Component 

  constructor: (props) ->
    super props
    @state =
      isOpen: false
      expanded: false
    return

  open: =>
    @setState
      isOpen: true
    , =>
      node = $(ReactDOM.findDOMNode(@refs.item))
      node.stop()
      node.animate
        width: "#{node.offset().left + node.width()}px"
      , 300
    return

  close: =>
    @setState
      isOpen: false
    , =>
      node = $(ReactDOM.findDOMNode(@refs.item))
      node.stop()
      node.animate
        width: '50px'
      , 300
    return

  expand: =>
    if not @state.expanded
      @setState
        expanded: true
      , =>
        node = $(ReactDOM.findDOMNode(@refs.item))
        offset = ($(window).width() - (node.offset().left + node.outerWidth()))
        right = Math.ceil(offset - parseInt(node.css('right')))
        node.animate
          width: "#{$(window).width()}px"
          right: "-#{right}px"
        , 300, =>
          @props.hideContent()
          node.animate
            height: '0px'
          , 300, =>
            @props.history.push '/projects/' + @props.item.key
            return
          return
        return
    return

  render: ->
    itemStyle =
      right: "#{@props.offset}px"
      background: @props.item.color
      zIndex: if not @state.expanded then (1500 + @props.index) else 1900
    
    <div ref="item" className="accordion-item #{if @props.contentHidden and not @state.expanded then 'hidden' else ''}" style={itemStyle}> 
      &nbsp;
    </div>

export default Accordion