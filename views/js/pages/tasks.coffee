import React from 'react'
import ReactDOM from 'react-dom'

import $ from 'jquery'

import Page from '../components/page'
import { Header, Paragraph, Subsection, Image, Images, TextBoxes, TextBox } from '../components/content'

class PageTasks extends React.Component 

  constructor: (props) ->
    super props
    @state = {}
    return

  render: ->
    <Page name="tasks" items={@props.items} history={@props.history}>
      <Header
        title="Tasks"
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
      <Paragraph
        title="requirements"
      >
        The previous version of student tasks had poor usability due to a lack of hierarchy and visual interest. I worked to ensure our new version fixed these issues, without sacrificing any of its strengths. My team and I brainstormed features and interactions that were needed, and prioritized those in conjunction with opportunities for improvement. From there, I created user stories to ensure full understanding of the updated functionality and our target user.
      </Paragraph>
      <Image
        src="/images/tasks-one.svg"
      />
      <Paragraph
        title="sketches"
      >
        With user stories and requirements in hand, I took to sketching in order to visualize the page layout.
        <Subsection
          title="components"
        >
          The tasks page is loaded with information and students tend to skim through this content quickly. In order to avoid information overload and allow students to immediately digest and engage with the content, I decided to implement a card-based interface. Users can easily scan through many cards to find relevant tasks, without feeling overwhelmed.
        </Subsection>
        <Subsection
          title="hierarchy"
        >
          After collecting a content inventory of all information and actions on the page, I separated high priority actions and information from the lower priority. By sketching collapsed tasks alongside tasks with fully expanded details, I established the visual hierarchy of the page. The important information was placed into the collapsed state, with all other content placed into the expanded state.
        </Subsection>
        <Subsection
          title="progress"
        >
          After building the layout of the task components, I needed make task progress extremely clear for the users, as this is one of the most important heuristics for this page. Through the use of color coding and iconography, I was able to display the status of each task in a simple and intuitive way.
        </Subsection>
      </Paragraph>
      <Images
        images={['/images/tasks-eight.png', '/images/tasks-seven.png']}
        background="#f2f2f2"
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
        images={['/images/tasks-two.svg', '/images/tasks-three.svg']}
      />
      <Images
        images={['/images/tasks-four.png', '/images/tasks-five.png', '/images/tasks-six.png']}
        background="#f2f2f2"
      />
      <Paragraph
        title="development"
      >
        I worked cross-functionally with the back and front-end development teams to ensure the tasks page was developed as intended. By regularly checking in with the developers, I minimized miscommunication and prevented waste of development resources. We completed the entire feature redesign within a two-week development sprint.
      </Paragraph>
      <Images
        images={['/images/tasks-before-one.png', '/images/tasks-after-one.png']}
      />
      <Images
        images={['/images/tasks-before-two.png', '/images/tasks-after-two.png']}
      />
    </Page>

export default PageTasks