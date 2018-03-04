import React from 'react'
import ReactDOM from 'react-dom'

import $ from 'jquery'

import Page from '../components/page'
import { Header, Paragraph } from '../components/content'

class PageMobile extends React.Component 

  constructor: (props) ->
    super props
    @state = {}
    return

  render: ->
    <Page>
      <Header
        title="Mobile"
        subtitle="– ui/ux design"
      />
      <Paragraph
        title="challenge"
      >
        Tasks are the most important part of the student experience on NextTier. Therefore, we need a robust feature that clearly highlights relevant tasks, while also communicating task status and action items. My challenge was to improve the student tasks experience based on one year of user feedback by creating attractive, familiar and easy to use UI components.
      </Paragraph>
      <Paragraph
        title="process"
      >
        <div className="ordered-list">
          <div>1. Requirements</div>
          <div>2. Sketches</div>
          <div>3. Mockups</div>
          <div>4. Development</div>
        </div>
      </Paragraph>
    </Page>

export default PageMobile