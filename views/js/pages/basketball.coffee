import React from 'react'
import ReactDOM from 'react-dom'

import $ from 'jquery'

import Page from '../components/page'
import { Header, Paragraph, Subsection, Image, Images, TextBoxes, TextBox } from '../components/content'

class PageBasketball extends React.Component 

  constructor: (props) ->
    super props
    @state = {}
    return

  componentDidMount: ->
    @props.onPageEntered()
    return

  render: ->
    <Page name="basketball" items={@props.items} history={@props.history}>
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
          <div>1. Research</div>
          <div>2. Content Inventory</div>
          <div>3. Card Sort</div>
          <div>4. Sitemap</div>
          <div>5. Sketches</div>
          <div>6. Wireframe</div>
        </div>
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
        To help us gain more insight into how people categorize items within the basketball space, we conducted an online card sort. We included the existing categories of Fundamentals, Offense, Defense and Strength & Conditioning and 52 items from the content inventory. Each team member sent the card sort out to friends, family, and peers in order to obtain a wide range of data.
      </Paragraph>
      <Paragraph
        title="sitemap"
      >
        After analyzing the card sort results, we had a better idea of the organization of the website and ensured that the final iteration of the site map reflected the results and recommendations pulled from our card sort analysis. We used draw.io, a Google Drive plugin to create the site map.
      </Paragraph>
      <Images
        images={['/images/basketball-sitemap-1.jpg']}
        background="#f2f2f2"
        noShadow
      />
      <Paragraph
        title="sketches"
      >
        Sketches were a group effort.
      </Paragraph>
      <Images
        images={['/images/basketball-sketches-1.jpg', '/images/basketball-sketches-2.jpg', '/images/basketball-sketches-3.jpg']}
      />
      <Images
        images={['/images/basketball-sketches-4.jpg', '/images/basketball-sketches-5.jpg']}
        background="#f2f2f2"
      />
      <Paragraph
        title="wireframe"
      >
        Lastly, we created a <a href="#">wireframe</a> of Basketball Academy using HTML and CSS.
      </Paragraph>
      <Paragraph
        title="solution"
      >
        Online Basketball Academy is a informational and educational website for people hoping to learn the game or improve their game. The website pulls together and organizes the rules of the game, the skills necessary to play as well as drills that improve on specific skills at different levels of expertise.
      </Paragraph>
    </Page>

export default PageBasketball