---
layout: default
permalink: /2023
cover_image: https://cdn.britannica.com/55/190455-050-E617F64E/Night-view-Singapore.jpg
cover_image_caption: Singapore
cover_banner: Computational Approaches to Linguistic Code-Switching, CALCS 2023
navbar:
    - name: Calls
      link: /2023#call-for-papers
    - name: Organizers
      link: /2023#organizers-id
organizers:
    - name: Genta Indra Winata (contact person)
      link: https://gentawinata.com
      email: gentaindrawinata@gmail.com
      fields:
        - Senior Research Scientist
        - Bloomberg LP
    - name: Sudipta Kar (contact person)
      link: https://sudiptakar.info/
      email: sudipta.kar.8080@gmail.com
      fields:
        - Applied Scientist
        - Amazon Alexa AI
    - name: Marina Zhukova
      link: https://sites.google.com/view/marinazhukova/
      email: mzhukova@ucsb.edu
      fields:
        - Ph.D. Student 
        - Department of Linguistics
        - University of California, Santa Barbara
    - name: Thamar Solorio
      link: http://solorio.uh.edu/
      email: solorio@uh.edu
      fields:
        - Professor
        - Department of Computer Science
        - University of Houston
    - name: Mona Diab
      link: https://web.seas.gwu.edu/mtdiab/
      email: mtdiab@gwu.edu
      fields:
        - Research Scientist, Facebook AI
        - Professor, Department of Computer Science
        - George Washington University
    - name: Sunayana Sitaram
      link: https://www.cs.cmu.edu/~ssitaram/
      email: sunayana.sitaram@microsoft.com
      fields:
        - Senior Researcher
        - MSR India
    - name: Sunayana Sitaram
      link: https://www.cs.cmu.edu/~ssitaram/
      email: sunayana.sitaram@microsoft.com
      fields:
        - Senior Researcher
        - MSR India
    - name: Monojit Choudhury
      link: https://www.microsoft.com/en-us/research/people/monojitc/
      email: monojitc@microsoft.com
      fields:
        - Principal Data and Applied Scientist
        - Microsoft Turing India
    - name: Kalika Bali
      link: https://www.microsoft.com/en-us/research/people/kalikab/
      email: kalikab@microsoft.com
      fields:
        - Principal Researcher
        - Microsoft Research India
---

<h2 class="subtitle" id="call-for-papers"><a href="#call-for-papers" class="text-primary-red">First Call for Papers</a></h2>
<hr class="custom-line">

<p>
Multilingual speakers will often mix languages when they communicate with other multilingual speakers in what is usually known as code-switching (CSW). 
CSW is typically present on the intersentential, intrasentential and even morphological levels. 
CSW presents serious challenges for language technologies such as Machine Translation (MT), Automatic Speech Recognition (ASR), language generation (LG), information retrieval (IR) and extraction (IE), and semantic processing. Traditional techniques trained for one language quickly break down when there is input mixed in from another. 
Recent work has shown that even powerful multilingual models, such as multilingual BERT, yield subpar performance on CSW data (cf. Aguilar and Solorio, 2020).
</p>

<p>
Considering the ubiquitous nature of CSW in informal text communication such as newsgroups, tweets, blogs, and other social media, and the number of multilingual speakers worldwide that use these platforms, addressing the challenge of processing CSW data continues to be of great practical value. 
This workshop aims to bring together researchers interested in technology for mixed language data, in either spoken or written form, and increase community awareness of the different efforts developed to date in this space.
</p>

<h2 class="subtitle" class="text-primary-red">Topics of Interest</h2>
<hr class="custom-line">

The workshop will invite contributions from researchers working in NLP and speech approaches for the analysis and processing of mixed-language data. Topics of relevance to the workshop will include the following: 
1. Development of linguistic resources to support research on code-switched data; 
2. NLP approaches for any of language identification/named entity recognition/sentiment analysis/machine translation/language generation in code-switched data; 
3. NLP techniques for the syntactic analysis of code-switched data; 
4. Domain/dialect/genre adaptation techniques applied to code-switched data processing; 
5. Language modeling approaches to code-switched data processing; 
6. Crowdsourcing approaches for the annotation of code-switched data; 
7. Position papers discussing the challenges of code-switched data to NLP techniques; 
8. Methods for improving ASR in code switched data; 
9. Survey papers of NLP research for code-switched data; 
10. Sociolinguistic and/or sociopragmatic aspects of code-switching.

<h2 class="subtitle" id="important-dates"><a href="#important-dates" class="text-primary-red">Important Dates</a></h2>
<hr class="custom-line">

- Workshop submission deadline (long, short and special track): TBD
- Notification of acceptance: TBD
- Camera ready papers due: TBD
- Workshop date: TBD

**All deadlines are 11.59 pm UTC -12h ("anywhere on Earth").**

<!-- <div class="invited-speakers">
    <h2 class="subtitle" id="invited-speakers-id"><a href="#invited-speakers-id" class="text-primary-red">Invited Speakers</a></h2>
    <hr class="custom-line">
    <div>
        {% for person in page.invited_speakers %}
        <div class="person-pc">
            <span><a href="{{person.link}}" class="text-primary-red name">{{person.name}}</a></span>
            <span>&nbsp;&nbsp;</span>
            <span>{{person.affiliation}}</span>
        </div>
        {% endfor %}
    </div>
</div>

<div class="program-committee">
    <h2 class="subtitle" id="program-committee-id"><a href="#program-committee-id" class="text-primary-red">Program Committee</a></h2>
    <hr class="custom-line">
    <div>
        {% for person in page.program_committee %}
        <div class="person-pc">
            <span class="text-primary-red name">{{person.name}}</span>
            <span>&nbsp;&nbsp;</span>
            <span>{{person.affiliation}}</span>
        </div>
        {% endfor %}
    </div>
</div> -->

<div class="organizer-committee">
    <h2 class="subtitle text-primary-red" id="organizers-id"><a href="#organizers-id" class="text-primary-red">Organizers</a></h2>
    <hr class="custom-line">
    <div>
        {% for person in page.organizers %}
        <div class="person">
            <div><a href="{{person.link}}" class="text-primary-red name">{{person.name}}</a></div>
            {% for field in person.fields %}
                <div>{{ field }}</div>
            {% endfor %}
            <div><a href="#">{{ person.email }}</a></div>
        </div>
        {% endfor %}
    </div>
</div>

