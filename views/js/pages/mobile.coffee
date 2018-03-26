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

  componentDidMount: ->
    @props.onPageEntered()
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
        The student-facing mobile app required a complete facelift. After trashing the old app, plagued with inconsistency and outdated design paradigms, our work was cut out for us. We challenged ourselves to think backward, a concept I learned about at a design conference just before starting this project. We started with our end goal, a perfectly smooth mobile experience, and worked backward to figure out what we needed to implement to make that ideal experience a reality.
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
        A tight timeline meant that we had to strictly prioritize our most impactful ideas which, in turn, allowed us to focus on creating an elegant app with a few essential new features. Our design strategy centered around simplification, customization, and optimization.
      </Paragraph>
      <Paragraph
        title="wireframes"
      >
        The initial phase of the project was spent in Balsamiq creating wireframes. Focusing on simplicity and clarity, I was able to get a feel for the navigation and components that would make up the majority of the app. Before wrapping up the project, I held a design review where I received the necessary feedback to move on to mockups.
      </Paragraph>
      <Images
        images={['/images/mobile-wireframe-1.png', '/images/mobile-wireframe-2.png', '/images/mobile-wireframe-3.png', '/images/mobile-wireframe-4.png']}
        noShadow
      />
      <Images
        images={['/images/mobile-wireframe-5.png', '/images/mobile-wireframe-6.png', '/images/mobile-wireframe-7.png', '/images/mobile-wireframe-8.png']}
        noShadow
      />
      <Paragraph
        title="mockups"
      >
        I created mockups using Sketch.
        <Subsection
          title="simplicity"
        >
          Our main goal for the new mobile app was to keep it simple. This meant clear navigation, paring down and reorganizing data, simple transitions, and meaningful iconography.
        </Subsection>
        <Subsection
          title="iconography"
        >
          I created an iconography set that would act as a language to reduce text, increase screen real estate, and add personality to the mobile app.
        </Subsection>
        <Image
        src="/images/mobile-iconography-1.svg"
        />
        <Subsection
          title="discovery"
        >
          Emphasizing and optimizing discovery within each feature of the mobile app was imperative.
        </Subsection>
      </Paragraph>
      <Paragraph
        title="development"
      >
        Using Zeplin and Asana as collaboration tools, I worked cross-functionally with the back and front-end development teams to ensure the new mobile app was developed as intended. By regularly checking in with the developers, I minimized miscommunication and prevented waste of development resources.
      </Paragraph>
    </Page>

export default PageMobile