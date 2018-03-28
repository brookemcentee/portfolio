import React from 'react'
import ReactDOM from 'react-dom'

import $ from 'jquery'

import Page from '../components/page'
import { Header, Paragraph, Subsection, Image, Images, TextBoxes, TextBox } from '../components/content'

class PageUdine extends React.Component 

  constructor: (props) ->
    super props
    @state = {}
    return

  componentDidMount: ->
    @props.onPageEntered()
    return

  render: ->
    <Page name="udine" items={@props.items} history={@props.history}>
      <Header
        title="UDine"
        subtitle="– ux design/research"
      />
      <Paragraph
        title="challenge"
      >
        Although DePaul Dining Services offers two on-campus locations for students to dine, one in the Lincoln Park Student Center and one in the Loop DePaul Center, the inconvenience of food prep time and lines pressure students to grab the quickest thing they can and go. This problem usually results in eating something unhealthy or insufficient. My group members and I were motivated to create a mobile app that could help solve this challenge.
      </Paragraph>
      <Paragraph
        title="process"
      >
        <div className="ordered-list">
          <div>1. User Research</div>
          <div>2. Insights, Design Principles & Concepts</div>
          <div>3. User Scenarios</div>
          <div>4. Sitemap</div>
          <div>5. Prototype</div>
        </div>
      </Paragraph>
      <Paragraph
        title="research"
      >
        Before creating the UDine prototype, each group member conducted intensive user research including user interviews and observations. We completed six interviews with students across campus who utilized DePaul Dining Services, ranging from the undeclared freshman to the MBA graduate student. We also observed the DePaul Dining Services environment throughout the week and weekend during both busy and relaxed dining times.
        <br /><br />
        Target audience: Undergraduate and graduate students who use DePaul Dining Services 2-5 times per week.
      </Paragraph>
      <Paragraph
        title="insights"
      >
        We collaborated to frame insights based on our user research that would inform our design. From our insights, we created design principles that would guide the intention and design of UDine. Concepts for UDine’s features were then formulated as we had an idea of what UDine needed to offer in order to solve the problem at hand.
      </Paragraph>
      <TextBoxes>
        <TextBox title="example insight">
          Student’s schedules determine where they dine
        </TextBox>
        <TextBox title="example design principle">
          Allow users to quickly choose which campus dining location they will be ordering from
        </TextBox>
        <TextBox title="example concept">
          Food ordering through DePaul Dining Services
        </TextBox>
      </TextBoxes>
      <Paragraph
        title="scenarios"
      >
        My next role was to create user scenarios for a few of UDine’s features.
      </Paragraph>
      <TextBox title="example scenario">
        Stacy worked from nine to five today and now has night class at 5:45pm. She is very hungry for dinner but realizes that she forgot to pack a meal. It is 5:15pm, so she only has 30 minutes to get dinner and make it to her class on time. Thankfully, she is already on campus so she signs into UDine on her phone and checks to see if the cafeteria is busy. It is, so she uses UDine to order and pay for her favorite pasta dish while heading toward to Student Center. By the time she reaches the cafeteria, Stacy gets a push notification that her food is ready for pick up. She shows her digital receipt to the DDS staff who kindly hands Stacy her dinner. Stacy heads to class with her dinner, making it with five minutes to spare.
      </TextBox>
      <Paragraph
        title="site map"
      >
        My group members and I used all of our research, insights and user scenarios to create a sitemap for UDine.
      </Paragraph>
      <Images
        images={['/images/udine-sitemap-1.jpg']}
        background="#f2f2f2"
        noShadow
      />
      <Paragraph
        title="prototype"
      >
        Lastly, we designed an interactive prototype using Axure.
      </Paragraph>
      <Images
        images={['/images/udine-prototype-1.png', '/images/udine-prototype-2.png', '/images/udine-prototype-3.png', '/images/udine-prototype-4.png']}
        noShadow
      />
      <Images
        images={['/images/udine-prototype-5.png', '/images/udine-prototype-6.png', '/images/udine-prototype-7.png', '/images/udine-prototype-8.png']}
        noShadow
      />
      <Paragraph
        title="solution"
      >
        UDine is a mobile app, optimized for busy students who are on-the-go, which provides a food ordering system through DePaul Dining Services.
      </Paragraph>
    </Page>

export default PageUdine