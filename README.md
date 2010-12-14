## Salesforce | Heroku example app

This is a proof-of-concept application that demonstrates how to access Database.com and Salesforce.com data from a Ruby on Rails app running on Heroku. The application allows your to perform CRUD (create-read-update-delete) operations on your Salesforce.com leads and contacts. Please use this code as an example of how to access other objects.

## Installation

Make sure that you already have a Heroku account, and have the gem and credentials setup on your computer. See [the Heroku Quickstart Guide](http://docs.heroku.com/quickstart)

Clone this app to your computer:
   
  $ git clone git://github.com/mattsoldo/Heroku-Salesforce-Ruby-On-Rails-Demo.git
  $ cd Heroku-Salesforce-Ruby-On-Rails-Demo

Install the necessary gems on your computer:

  $ bundle install

Create a new Heroku app:

  $ heroku create

Add your force.com credentials as a [Heroku config var](http://docs.heroku.com/config-vars). NOTE, you must URL escape your username, which means substituting the '@' symbol in your email with '%40'. Also note that you need to setup an security token in your salesforce.com account. See [the salesforce documentation](https://na8.salesforce.com/help/doc/user_ed.jsp?section=help&target=user_security_token.htm&loc=help&hash=topic-title) for details.

  $ heroku config:add DATABASE_COM_URL=http://<username>:<password><security_token>@https://www.salesforce.com

Now push your code to heroku and you are done:
  
  $ git push heroku master
 
