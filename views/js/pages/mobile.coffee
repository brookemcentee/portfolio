import React from 'react'
import ReactDOM from 'react-dom'

import $ from 'jquery'

import Page from '../components/page'
import { Header, Paragraph, Subsection, Image, Images } from '../components/content'

class PageMobile extends React.Component 

  constructor: (props) ->
    super props
    @state = {}
    return

  render: ->
    <Page history={@props.history}>
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
      <Image
        src="/images/tasks-one.svg"
      />
      <Paragraph
        title="mockups"
      >
        Illustrator is where my ideas and sketches come to life. I perfected the visual elements and created design consistency.
        <Subsection
          title="pattern"
        >
          Circles indicating progress are always on the left of its corresponding content. I made this a clear and intentional design paradigm to ensure that student users know where to look and what to look for when searching for their progress per task and per each group of tasks.
        </Subsection>
        <Subsection
          title="visibility"
        >
          Although this page holds a lot of information, I wanted to highlight the most relevant content for the user. Dates, progress and task type were the most important elements, so those are always shown. Task details, associated links, attachments and notes are hidden as to not overwhelm the student. The main call-to-action, the start/complete button, is always prominent.
        </Subsection>

        <Subsection
          title="color"
        >
          When tasks are started, they change from blue to orange, indicating that the task requires more action. Once it is marked complete, the task becomes green, sending the student positive feedback. As tasks are completed, the overall progress circles in the sidebar dynamically fill up with color. These color changes are stimulating to the user, and provide incentive for the student to continue completing tasks.
        </Subsection>
      </Paragraph>
      <Images
        images={['/images/sample-double.png', '/images/sample-double.png']}
      />
      <Images
        images={['/images/sample-triple.png', '/images/sample-triple.png', '/images/sample-triple.png']}
        background="#f2f2f2"
      />
    </Page>

export default PageMobile