---
layout: page
title: ENG-SPA Guidelines
permalink: /2018/files/spa-eng/README.html
---

---
# ENG-SPA Guideline - NER Shared Task
---

Our Named Entities have been annotated using the IOB scheme. The data files contain one token
per line, and multiple lines that belong to the same sequence of tokens are identified by the 
same tweet id. There are no empty lines to separate sentences.


We have defined the following 9 entity types:

1. **PERSON:**  proper names or even nicknames that can identify a person uniquely.
    * Ignore cases where a person is referred by adjectives (not necessarily a nickname)  
    * Single artists or famous people are treated as PERSON
    * Note that **Ima** is not a person, it's an SM abbreviation for **I'm going to**  
    * E.g., John Mayer, Shakira, Ibrahimovic, etc

2. **LOCATION:** cities, countries, addresses, facilities, etc. 
    * Everything that you understand people are referring to a physical location
    * Note that if a restaurant name is used as a place to go, that's a location, not an organization
    * E.g., Houston, Mexico, Puerto Vallarta, Chipotle, etc.

3. **ORGANIZATION:** companies, institutions, etc.
    * Every entity that has employees
    * If the entity name can be any other category, you have to rely on the context to support 
    that the NE is an organization (e.g., Facebook as organization vs Facebook as the website product) 
    * Do not confuse with **LOCATION** when it's about going to a restaurant, for example
    * E.g., Apple, Nissan, Facebook, etc.

4. **PRODUCT:** devices, video games, medicines, food produced by a company, any well-defined service, website accounts, etc.
    * E.g., your Facebook, your Twitter, iPhone, etc.
    
5. **GROUP:** sports teams, music bands, duets, etc.
    * Do not confuse sports teams with the team institution because context implies different behaviors (e.g., 
    _"ManU invested on Old Trafford,"_ here ManU is not the team, but the organization)
    * E.g., Real Madrid, PSG, Iron Maiden, etc.
    
6. **EVENT:** concerts, award events, competitions, etc.
    * E.g., The Oscars, Super Bowl, World cup, Premier League, etc.

7. **TIME:** months, days of the week, seasons, etc. 
    * Exclude hours, minutes, etc.
    * Include holidays and things that happen periodically which are not events (e.g., Christmas)
    * _Yesterday_ and _tomorrow_ are not TIME, neither _week_ or _years_
    * E.g., Summer, verano, July, Saturday, Enero, Christmas, Saint Valentine, Father's day, etc.

8. **TITLE:** movies, books, TV shows, songs, etc.
    * E.g., Frozen, Friends, The Walking Dead, etc. 

9. **Other:** any other NE that does not fit in the previous categories.
    * Use this only if you really need it
    * This class is important because context can imply an NE, and even if it is not in the previous
    classes, a general approach should be able to capture those NEs with this class.


---
## Rules & Tips
---

Keep in mind the following aspects:

1. Named entities can contain one or many words.

2. This is English-Spanish text. Thus, NEs may appear in either English or Spanish words. **DO NOT** discard words just because they are in one or the other language.

3. Technically, Named entities can be almost anything, but this data will most likely show NEs related to sports (players, leagues, teams, etc.), proper names, countries/states/cities (sometimes they will appear abbreviated, e.g. "Nuevo Leon" may be written as "nl"), etc. 

4. This is Twitter data, and consequently, some NEs may be misspelled, or not written in a proper manner (not capital letters, missing hyphens, contractions, etc.). **DO NOT** discard possible NEs for those reasons.

5. **DO NOT tag hashtags (tokens beginning with #) or tags (tokens beginning with @) as NEs**, they are intentionally ignored in this task. We will address this on future jobs. For instance, #ChicagoDP could have been selected, but it starts with a #, so we MUST skip it. 

6. **DO NOT choose a category for a word just because the word itself describes such a category**. Instead, read the sentence carefully and think of what is the role of the word(s) in the sentence. For instance, people may say "I like my Samsung," for which the word Samsung is representing a PRODUCT instead of an ORGANIZATION.

7. **DO NOT assume capital letters are always NE or part of an NE**. 

8. **DO NOT break a single NE into many parts**. Make sure whether the words before and after are part of the same NE.
