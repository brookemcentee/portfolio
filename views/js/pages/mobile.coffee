import React from 'react'
import ReactDOM from 'react-dom'

import $ from 'jquery'

import Page from '../components/page'
import { Header, Paragraph, Subsection, Image, Images, TextBoxes, TextBox } from '../components/content'

class PageMobile extends React.Component 

  constructor: (props) ->
    super props
    @state = {}
    return

  render: ->
    <Page name="mobile" items={@props.items} history={@props.history}>
      <Header
        title="Mobile"
        subtitle="– ui/ux design"
      />
      <Paragraph
        title="challenge"
      >
        The student-facing mobile app required a complete facelift. After trashing the old app plagued with inconsistency and outdated design paradigms, our work was cut out for us. We challenged ourselves to think backward, a concept I learned about at a design conference just before starting this project. We started with our end goal, a perfectly smooth mobile experience, and then worked backward to figure out what we needed to do/implement to make that ideal experience a reality.
      </Paragraph>
      <Paragraph
        title="process"
      >
        <div className="ordered-list">
          <div>1. Brainstorming</div>
          <div>2. Requirements</div>
          <div>3. Wireframes</div>
          <div>4. Mockups</div>
          <div>5. Development</div>
        </div>
      </Paragraph>
      <Paragraph
        title="brainstorming"
      >
        Because we were starting from scratch, brainstorming was an essential part of this project. I took the lead on brainstorming and planned out a week of structured two-hour sessions. Each session had a theme to ensure focus and included both solo and collaborative brainstorming.
      </Paragraph>
      <Paragraph
        title="requirements"
      >
        Our tight two-month timeline meant that we had to strictly prioritize our most impactful ideas which, in turn, allowed us to focus on creating an elegant app with a few essential new features. The most impactful design requirements were based on simplification, customization, and optimization.
      </Paragraph>
      <Paragraph
        title="wireframes"
      >
        I spent the first week of the project in Balsamiq creating wireframes. Focusing on simplicity and clarity, I was able to get a feel for the navigation and components that would make up the majority of the app. At the end of the week, I held a design review where I received the necessary feedback to move on to mockups.
      </Paragraph>
      <Paragraph
        title="mockups"
      >
        Using Sketch, I created mockups.
      </Paragraph>
      <Paragraph
        title="development"
      >
        Worked cross-functionally with 1 project lead, 2 FE devs and 1 BE dev
      </Paragraph>
    </Page>

export default PageMobile