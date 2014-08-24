# tk14 - Taivalkoski valjakourheilu, maaliskuussa 2014

This will be a site that will run the program for the race. Next steps:

- Include markdown based content pages
- Include devise for editing data on competitors

# Design

## Use cases overview

**(always)**

  - Main page, status
  - News and blog
  - Pages
  - Image uploads and serving

**(before)**

  - View competitions schedule
  - 
  - Apply (admin)
  - View own profile, edit
  - View competitor lists and starting times

**(during)**

  - View current race
  - Change starting race
  - Start, intermediate time, finish marking (API)
  - View completed races
  - Enter final results, make official and close

**(after)**

  - View competition results

## Schema

Overview:
- User (admin and or competitor)
- Dog
  - Zero to many to user (owner, not competitor)
  - If owner is nil, then text field with owner name

- Run
  - Many to one to user
  - Many to many to dog
  - Many to one to race
  - One to many (to each, with possible exceptions) time 
    - Table: pass, field: timestamp, official?, span, span edited
    - (timestamp is the actual timestamp sent to system,  
      span is the difference to the starting. Only span is  
      ever shown and need to be edited.

- Category
- Race (one or more per category)
  - TimeSpot, intermediate timers, two or more (start, finish and intermediate)

**Order of creation:**

1. User
1. Category
1. Race
1. Run
1. Dog

**Fields**

1. User
  - Devise: email, password
  - Display name
  - First name(s)
  - Last name(s)
  - Profile description (markdown)
  - Picture list (as string)
  - Admin?
  - Competitor?
1. Category
  - Code
  - Description
  - Length
1. Race
  - Foreign key: Category
  - Name (optional, use category description if empty)
  - Date/time
  - Description (additional data)
  - Pass positions (json of named positions. start and finish are added implicitely)
  - Race secret (random string allows marking times)
  - Status: scheduled, running, completed (waiting official times), closed, current
1. Run
  - Foreign key: Race
  - Foreign key: User
  - Number
  - Times (json array of objects, one for each start, pass positions and finish.
    Each object has timestamp and time - time can be edited).  
1. Dog
  - Optional foreign key: User (owner)
  - Owner name as string (if user is nil)
  - Name
  - Race code
  - Description
  - Picture list (as string)
1. Team
  - foreign key: dog
  - foreign key: run
  - lead?
  - position


