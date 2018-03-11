import React from 'react'
import ReactDOM from 'react-dom'

import Navigation from './navigation'

import $ from 'jquery'

class About extends React.Component

  render: ->
    <div className="container-fluid no-padding about-page">
      <div className="col-sm-7 about-image-background">
        <div className="accordion-title">
          <div className="accordion-title-header">
            Brooke<br />McEntee
          </div>
          <div className="accordion-title-subheader">
            – ui/ux designer
          </div>
        </div>
      </div>
      <div className="col-sm-5 about-content-bg">
        <Navigation
          history={@props.history}
          active="about"
        />
        <div className="about-content">
          <div className="content-section">
            <div className="content-section-title">
              who
            </div>
            I’m Brooke McEntee. If you’d like to skip the next four W’s and get right to my resume and LinkedIn, feel free. If you get to the end of all five W’s and want to know more, send me an email.
          </div>
          <div className="content-section">
            <div className="content-section-title">
              what, why
            </div>
            It was always my dream to become an architect.
            <br /><br />
            At a young age, what drew me to architecture was the creative process involved: Understanding who you are building for and what they will do in the space you build. Designing, gathering feedback and iterating on your designs until something works.
            <br /><br />
            I didn’t realize until my first Introduction to Architecture lecture that designing buildings was not my calling.
            <br /><br />
            Today, I am following my dream. As a user experience designer, I am an architect because I am understanding my users and their goals. I am observing and adjusting based on user feedback. As a user interface designer, I am an architect because I am bringing my visions to life. I am creating, writing, and presenting.
          </div>
          <div className="content-section">
            <div className="content-section-title">
              where, when
            </div>
              I was born and raised in Chagrin Falls, Ohio and have a strong connection to the Metroparks and Cleveland sports. My early 20s were spent in Chicago, Illinois spending far too much on the best new restaurants. Much unlike my six months of life in Lyon, France, the gastronomic capital of the world, when all I could afford was a baguette a day. 
              <br /><br />
              Today, I live in St. Louis, Missouri with my boyfriend and our rescue dog, Maisy. Most of my free time is spent in biking through Forest Park, testing a new recipe, or dipping my toes into interior design. I also love to travel; I was most recently in Bend, Oregon skiing Mount Bachelor.
          </div>
        </div>
      </div>
    </div>

export default About