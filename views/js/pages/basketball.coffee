import React from 'react'
import ReactDOM from 'react-dom'

import $ from 'jquery'

import Page from '../components/page'
import { Header, Paragraph, Subsection, Image, Images } from '../components/content'

class PageBasketball extends React.Component 

  constructor: (props) ->
    super props
    @state = {}
    return

  render: ->
    <Page name="basketball" history={@props.history}>
      <Header
        title="Basketball Academy"
        subtitle="– information architecture"
      />
      <Paragraph
        title="challenge"
      >
        Basketball-focused websites do exist; however, there is no one place to seamlessly learn the sport from beginning to end or improve upon already existing skills. Problems with basketball learning platforms include a lack of categorization by ability level and information overload due to extraneous information such as news articles. My group members and I were inspired to create Online Basketball Academy, a user-friendly information portal for those looking to become better basketball players.
      </Paragraph>
      <Paragraph
        title="process"
      >
        <div className="ordered-list">
          <div>1. Ideation</div>
          <div>2. External Resource Research</div>
          <div>3. Content Inventory</div>
          <div>4. Card Sort</div>
          <div>5. Site Map</div>
          <div>6. Sketches</div>
          <div>7. Wireframe</div>
        </div>
      </Paragraph>
      <Image
        src="/images/tasks-one.svg"
      />
      <Paragraph
        title="ideation"
      >
        Each team member shared his or her individual topic proposal in order to indicate a starting point through similarities. Each proposal focused on health/wellness or sports/fitness. As a team, we brainstormed potential topics and concluded that a basketball informational website with a focus on fundamental skills, offensive skills, defensive skills, and training/conditioning would best suit our combined interests.
      </Paragraph>
      <Paragraph
        title="research"
      >
        Our team conducted an examination of other basketball-specific websites that provide basketball skill information and/or basketball training/conditioning information. This external study helped our team better understand the content provided on such websites as well as the IA standards in which users are familiar. Our team chose to explore Breakthrough Basketball, The Coach’s Clipboard, Online Basketball Drills, and Basketball Breakdown.
      </Paragraph>
      <Paragraph
        title="content inventory"
      >
        I took the role of completing a content inventory consisting of over 120 items. I included content for the following categories: fundamentals skills, offensive skills, defensive skills and training/conditioning. In each category, I focused mainly on individual skills rather than team-based skills, as our target audience is individuals searching for information on basketball skills and training. Each category includes skills or training ranging from basic to advanced in order to promote development.
      </Paragraph>
      <Paragraph
        title="card sort"
      >
        In understanding that our content inventory and site map may not perfectly reflect our potential users’ concepts of the basketball space, we conducted a card sort. The card sort helped us to gain more insight into how people categorize items within the basketball space. For the card sort we included the existing categories of Fundamentals, Offense, Defense and Strength & Conditioning as well a 52 items of content from the content inventory. I set up our card sort using ConceptCodify, an online card sorting tool. Each team member sent the card sort out to friends, family, peers, etc. in order to obtain a wide range of data.
      </Paragraph>
      <Paragraph
        title="site map"
      >
        I took the role of creating the site map. For the first iteration of the site map, I sketched out what the organization of the website might look like. After analyzing the card sort results, I had a better idea of the organization of the website and ensured that the final iteration of the site map reflected the results and recommendations pulled from our card sort analysis. I used draw.io, a Google Drive plugin to create the site map.
      </Paragraph>
      <Paragraph
        title="sketches"
      >
        Sketches were a group effort.
      </Paragraph>
      <Paragraph
        title="solution"
      >
        Online learning has become instinctive for tasks such as learning a language; however, imagine learning how to play a sport online. Sports are learned in a similar way to learning a language: there are vocabulary and rules to learn as well as training and drills that must be executed in order to improve. Take basketball as an example. Basketball begins with rules and the skills required to play. Once all of the rules and skills are learned, drills can be exercised in order to become a more educated player.
        <br /><br />
        Online Basketball Academy is a informational and educational website for people hoping to learn the game or improve their game. The website pulls together and organizes the rules of the game, the skills necessary to play as well as drills that improve on specific skills at different levels of expertise.
      </Paragraph>
    </Page>

export default PageBasketball