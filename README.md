# Project Conversation History Tech Test

### Task

Use Ruby on Rails to build a project conversation history. A user should be able to:

- leave a comment
- change the status of the project

The project conversation history should list comments and changes in status.

Please don’t spend any more than 3 hours on this task.

### Brief

Treat this as if this was the only information given to you by a team member, and take the approach you would normally take in order to build the right product for the company.

To this extent:

- Please write down the questions you would have asked your colleagues
- Include answers that you might expect from them
- Then build a project conversation based on the answers to the questions you raised.

### Questions

Q: Are there any wireframes or mockups for the app?\
A: No.

Q: Which page should the conversation history appear on?\
A: On the project show page.

Q: How will this be navigated to by the user, will we need a project index page?\
A: Yes. This can also be the app's root page.

Q: What information/attributes will a project consist of?\
A: Name, description and status.

Q: What information should be featured on the index and show pages?\
A: The index should simply have a list of project names as clickable links. The show page should display the name, description and time of creation as well as the comments and status.

Q: Do projects need to be created, edited and deleted by users?\
A: Not within the scope of this task. Sample projects can be set-up via seed.

Q: Do we need authentication?\
A: Yes, please use the devise gem with a basic user model.

Q: Can all users see all views and perform all actions?\
A: Only authenticated users can see and perform actions on projects.

Q: Are comments likely to be associated with other models aside from ‘project’ (i.e. should they be made polymorphic)?\
A: No, comments will only belong to projects.

Q: What should be displayed for each comment?\
A: Body text, the name of the user who created it and the time it was created.

Q: Do comments need to be edited and deleted by users?\
A: No.

Q: Which statuses will be available for the project?\
A: "Draft", "Active" and "Complete".

Q: Are there any restrictions on the transitions that can be made between statuses, for example, can a status be changed from "Complete" back to "Draft"? If there is likely to be any significant logic, perhaps it would make sense to use a state machine?\
A: A simple enum will be sufficient. All status transitions are allowed with no logic needed to limit them.

Q: When a comment or status is changed, does this need to be shown immediately for all users viewing the show page without a reload?\
A: Yes, the comments should display immediately, in a similar way to how a chat room works.

Q: How does the user add a comment? In a form on the project show page presumably?\
A: Yes, this can be located at the bottom of the page.

Q: How does the user change the status?\
A: Via a select input at the top of the page.

Q: Are there any overall guidelines on styling?\
A: The app should use tailwind css. The design should be clean and simple. It should display correctly on both desktop and mobile devices.

Q: I aim to use Rails 7 with Hotwire, Postgres and RSpec. Any objections to this?\
A: No.

### To-do list

#### Planning and setup

- ~~Story planning~~
- ~~New rails project~~
- ~~Install testing gems (RSpec, Factorybot)~~

#### Users & login

- ~~Install Devise gem~~
- Root pages for authenticated and unauthenticated users

#### Projects

- Project model with index page
- Basic project show page

#### Comments

- Comment model with new & create actions
- Display of comments within activity pane

#### Status changes

- Status attribute and project audit history
- Display of status changes within activity pane
