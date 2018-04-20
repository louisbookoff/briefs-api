# Briefs API

This API allows our internal team members to document insights learned on the job or through personal explanations

## Getting Started

To get started with the API please for and clone this repo.

## Dependencies
[Client Dependency: Toasts-please follow installation instructions at provided link](https://www.npmjs.com/package/jquery-toast-plugin)

## API Link
[API Application](https://briefs-server.herokuapp.com/)
[API Repo](https://github.com/louisbookoff/briefs-api)

### Wireframes & User Stories

* [Wireframes and User Stories](https://imgur.com/a/vXPbK)
* Above contains early iteration of ERD

### Development Process
The development process for the API went smoothly and I was able to knock it out after spending Day 1 of the project sprint planning out the application. After planning I uploaded all of my user stories to Trello and leveraged that as my Roadmap for the dev process. The application differs from the initial design and goal of I what I plan for it to be due to project scope, I was still able to build the base of the internal tool to be leveraged within my company. I felt very comfortable with the API this time and got through the first resource relatively quickly so that I could start on the front-end. I ran into issues when I deployed, realizing I hadn't migrated the database so nothing on the deployed app was working.  Debugging was no problem and I was proud that I instantly knew steps I could take to figure out why it was not working.  This is something that I would've had to submit and issue for on project one, even project two.  I felt comfortable and was able to solve the issue in a few minutes and get back to making sure the application was as clean as could be.


## API End Points

| Verb   | URI Pattern                 | Controller#Action         |
|--------|-----------------------------|---------------------------|
| POST   | `/sign-up`                  | `users#signup`            |
| POST   | `/sign-in`                  | `users#signin`            |
| DELETE | `/sign-out`                 | `users#signout`           |
| PATCH  | `/change-password`          | `users#changepw`          |
| GET    | `/briefs`                   | `surveys#index`           |
| POST   | `/briefs`                   | `briefs#create`           |
| GET    | `/briefs/:id`               | `briefs#show`             |
| PATCH  | `/briefs/:id`               | `briefs#update`           |
| DELETE | `/briefs/:id`               | `briefs#destroy`          |




## Unsolved Issues/Future Iterations

* Create a tags resource and a categories resource
* Add categories through tags (join table with many to many relationship) and have list of categories to filter by
* Create a comments resource
* Change user view states to allow every to see all briefs and revise them, while additionally having revision history tracked and readily available.


## Client Link
[Client Repo](https://github.com/louisbookoff/briefs-client)
[Briefs Client](https://louisbookoff.github.io/briefs-client/)


## Built With

* Ruby
* Rails Framework
* PostgreSQL

## Contributing

Please message me directly through github if you want to submit pull a pull request.

## Authors

* **Louis Bookoff** - *Initial work* - [Personal Repo](https://github.com/louisbookoff)


## Acknowledgments

* The world around me, for continuously serving as an inspiration to create and pursue impactful projects.
