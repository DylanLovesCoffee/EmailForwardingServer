# Ruby on Rails Email Forwarding

This is an email forwarding server built with Ruby on Rails. Its primary function is to receive POST requests from the DylanLovesCoffee.github.io contact page, and forward them directly to my email inbox.

I've chosen to use Heroku to host the app due to my familiarity with it.

## Getting Started
```
$ git clone https://github.com/DylanLovesCoffee/EmailForwardingServer.git
```

```
$ cd EmailForwardingServer
```

```
$ rails db:create
```

```
$ bundle
```

## Usage
1. You will need to create a ```.env``` file in the root folder, where you'll then add your email and its respective password, as follows:
```
EMAIL=dylan@gmail.com
PASSWORD=fakepassword
```

2. If your email domain is not google.mail.com or gmail.com, go into ```app/controllers/emails_controller.rb``` and change the ```:domain``` to whatever your correct domain is.
