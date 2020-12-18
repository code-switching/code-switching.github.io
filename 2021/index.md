---
layout: default
permalink: /2021
cover_image: https://www.theinclusionsolution.me/wp-content/uploads/2018/08/code-switching-twitter.jpg
cover_image_caption: Venue to be defined
cover_banner: Computational Approaches to Linguistic Code-Switching, CALCS 2021
navbar:
    - name: Shared Task
      link: /2021/#shared-task
    - name: Committee
      link: /2021/#program-committee-id
    - name: Organizers
      link: /2021/#organizers-id
program_committee:
    - name: Gustavo Aguilar
      affiliation: University of Houston
    - name: Elena Álvarez Mellado
      affiliation: University of Southern California
    - name: Segun Aroyehun
      affiliation: Insituto Politécnico Nacional
    - name: Kalika Bali
      affiliation: Microsoft Research India
    - name: Astik Biswas
      affiliation: Oracle
    - name: Monojit	Choudhury
      affiliation: Microsoft Research India
    - name: Amitava Das
      affiliation: Wipro AI Lab
    - name: Indranil Dutta
      affiliation: Jadavpur University
    - name: Alexander Gelbukh
      affiliation: Insituto Politécnico Nacional
    - name: Genta Indra Winata
      affiliation: Hong Kong University of Science and Technology
    - name: Sudipta Kar
      affiliation: Amazon
    - name: Grande Lee
      affiliation: National University of Singapore 
    - name: Els Lefever
      affiliation: Ghent University
    - name: Constantine Lignos
      affiliation: University of Pennsylvania
    - name: Yang Liu
      affiliation: Amazon
    - name: Manuel Mager
      affiliation: Universität Stuttgart
    - name: Parth Patwa
      affiliation: Indian Institute of Information Technology Sri City
    - name: Sai Krishna	Rallabandi
      affiliation: Carnegie Mellon University
    - name: Yihong Theis
      affiliation: Kansas State University
    - name: Van Tung Pham
      affiliation: Nanyang Technological University
      
    
    
organizers:
    - name: Thamar Solorio (contact person)
      email: solorio@cs.uh.edu
      fields:
        - Professor
        - Department of Computer Science
        - University of Houston
    - name: Alan W. Black
      email: awb@cmu.edu
      fields:
        - Professor
        - Department of Computer Science
        - Carnegie Mellon University
    - name: Mona Diab
      email: mtdiab@gwu.edu
      fields:
        - Research Scientist, Facebook AI
        - Professor, Department of Computer Science
        - George Washington University
    - name: Sunayana Sitaram
      email: sunayana.sitaram@microsoft.com
      fields:
        - Senior Researcher
        - MSR India
    - name: Victor Soto
      email: nvmartin@amazon.com
      fields:
        - Applied Scientist
        - Amazon Alexa AI
    - name: Emre Yilmaz
      email: emre.yilmaz@sri.com
      fields:
        - Advanced Computer Scientist
        - SRI International
---

<h2 class="subtitle" class="text-primary-red">CALCS Workshop 2021</h2>
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


<h2 class="subtitle" id="shared-task"><a href="#shared-task" class="text-primary-red">Shared Task</a></h2>
<hr class="custom-line">

<p>
For 2021 we plan to organize a shared task in CS data with the purpose of providing more resources to the community and new research challenges. 
The goal is to allow participants to explore the use of transfer learning approaches to address the need to process multiple language combinations. 
</p>

<p>
Our preliminary discussions lean toward hosting a shared task on Machine Translation Technology for Code-switching data. 
We will target at least four different language combinations, where the idea is to have at least one language pair that does not include English. 
At a minimum, language pairs to be included are: Spanish-English, Mandarin-English, as well as one combination that includes Modern Standard Arabic, and one combination with a language from India.
We are hoping to be able to include a combination with African languages as well. 
Participants for this shared task will be required to submit output of their systems within a pre-specified time window in order to qualify for evaluation in the shared task.
They will also be required to submit a paper describing their system. 
</p>

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
</div>

<div class="organizer-committee">
    <h2 class="subtitle text-primary-red" id="organizers-id"><a href="#organizers-id" class="text-primary-red">Organizers</a></h2>
    <hr class="custom-line">
    <div>
        {% for person in page.organizers %}
        <div class="person">
            <div class="text-primary-red name">{{ person.name }}</div>
            {% for field in person.fields %}
                <div>{{ field }}</div>
            {% endfor %}
            <div><a href="#">{{ person.email }}</a></div>
        </div>
        {% endfor %}
    </div>
</div>

