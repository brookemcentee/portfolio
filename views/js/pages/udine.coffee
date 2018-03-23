import React from 'react'
import ReactDOM from 'react-dom'

import $ from 'jquery'

import Page from '../components/page'
import { Header, Paragraph, Subsection, Image, Images } from '../components/content'

class PageUdine extends React.Component 

  constructor: (props) ->
    super props
    @state = {}
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
        As a full-time student at DePaul with a part-time job in Chicago, I understand the stresses of finding the time to grab a bite to eat between daily responsibilities. Although DePaul Dining Services offers two on-campus locations for students to dine, one in the Lincoln Park Student Center and one in the Loop DePaul Center, the inconvenience of food prep time and lines pressure students to grab the quickest thing they can and go. This problem usually results in eating something unhealthy like french fries or insufficient like a granola bar. My group members and I were motivated to create a student-friendly mobile application that could help solve this challenge.
      </Paragraph>
      <Paragraph
        title="process"
      >
        <div className="ordered-list">
          <div>1. User Research</div>
          <div>2. Insights, Design Priciples & Concepts</div>
          <div>3. User Scenarios</div>
          <div>4. Site Map</div>
          <div>5. Prototype</div>
        </div>
      </Paragraph>
      <Paragraph
        title="research"
      >
        Before creating the UDine prototype, each group member conducted intensive user research including user interviews and observations. We completed six interviews with students across campus who utilized DePaul Dining Services, ranging from the undeclared freshman to the MBA graduate student. We also observed the DePaul Dining Services environment throughout the week and weekend during both busy and relaxed dining times.
        <br /><br />
        Target audience: Undergraduate and graduate students who either have a meal plan or who use DePaul Dining Services frequently.
      </Paragraph>
      <Paragraph
        title="insights"
      >
        We then collaborated to frame insights based on our user research that would inform our application’s design. From our insights, we worked together to create design principles that would guide the intention and design of UDine. Concepts for UDine’s features were then formulated as we had an idea of what UDine needed to offer in order to solve the problem at hand.
      </Paragraph>
      <Paragraph
        title="scenarios"
      >
        My next role was to create user scenarios for a few of UDine’s features. The scenarios inform UDine's convenient food-ordering ability and in-app payment as well as the line wait time feature.
      </Paragraph>
      <Paragraph
        title="site map"
      >
        My group members and I used all of our research, insights, user stories and more to create a site map for UDine.
      </Paragraph>
      <Images
        images={['/images/udine-sitemap-1.jpg']}
        background="#f2f2f2"
        noShadow
      />
      <Paragraph
        title="prototype"
      >
        Once recommendations were conceived after usability testing, I created a mid to high fidelity prototype using Axure, this time with some interactivity built into the application.
      </Paragraph>
      <Paragraph
        title="solution"
      >
        UDine is a mobile application, optimized for busy students who are on-the-go, which provides a food ordering system through DePaul Dining Services. All DePaul students can access UDine with their DePaul-provided Campus Connect login information. After logging in, students simply choose which campus location they wish to order and pick-up from, and place their order. UDine is connected to each student’s DePaul account, so their DePaul Meal Plan and Demon Express balance will automatically connect as payment method options, with the choice to add external payment methods. Once an order is paid for and processed, users receive a digital receipt to show at pick-up. Users simply shows their digital receipt at pick-up, avoiding food prep time, lines and other inconveniences.
      </Paragraph>
    </Page>

export default PageUdine