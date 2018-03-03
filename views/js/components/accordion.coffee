import React from 'react'

class Accordion extends React.Component 

  constructor: (props) ->
    super props
    @state = {}
    return

  render: ->
    <div className="container-fluid no-padding">
      <div className="accordion">
        <div className="col-md-7 accordion-content">
          <div className="accordion-title">
            <div className="accordion-title-header">
              Brooke McEntee
            </div>
            <div className="accordion-title-subheader">
              – ui/ux designer
            </div>
          </div>
          <div className="accordion-items">
            {
              @props.items.map (item, i) ->
                offset = i * 50
                <AccordionItem key={i} offset={offset} item={item} />
            }
          </div>
        </div>
      </div>
      <div className="col-md-5">
        Links
      </div>
    </div>

class AccordionItem extends React.Component 

  constructor: (props) ->
    super props
    @state = {}
    return

  render: ->
    <div className="accordion-item" style={right: "#{@props.offset}px", background: @props.item.color}> 
      {@props.item.name}
    </div>

export default Accordion