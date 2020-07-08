# talk-talk

![Registration](https://github.com/bgoncharov/talk-talk-chat/blob/master/img/talk1.gif)

* [About](https://github.com/bgoncharov/talk-talk-chat#about) 
* [Installation](https://github.com/bgoncharov/talk-talk-chat#installation)
* [Development process](https://github.com/bgoncharov/talk-talk-chat#development-process)
* [Summary](https://github.com/bgoncharov/talk-talk-chat#summary)

## About

Talk-talk is a simple real-time chat with image/text messages. After autharization on the main screen you can find all people registered in the talk-talk chat. If you want to chat with someone just send a request and it will appear on the "waiting chats" area for that person. That person can whether accept or decline your request. If request accepted new chat will appear in "active chats" area for both of you.

## Installation

```bash
git clone https://github.com/bgoncharov/talk-talk-chat.git
cd ~/talk-talk-chat
open talktalk.xcworkspace
```

## Development process

![Sketch](https://github.com/bgoncharov/talk-talk-chat/blob/master/img/sketch.png)

This project made with MVC design pattern. I use Firebase as a backend service. Design was the first thing I made working on this project. It was made in Sketch.

Then according to my Sketch file I was implement four screens for Sign in, log in, registration and setup profile options. I didn't use Storyboard. All screens was made using NSLayoutConstraint.

Next step was implementation of "Chats" screen with a nice interface. I was using Collecition View Compositional Layout and Diffable Data Source here. It helped me to implement UICollectionView with two kinds of sections. The firs section responsible for Active chats and the second for Waiting chats.

![Chats](https://github.com/bgoncharov/talk-talk-chat/blob/master/img/progress2.jpg)

Then I made "Nearby people" screen also using Collecition View Compositional Layout and Diffable Data Source. I was testing those screnns with fake data that was  created in two json files. There is a search bar and if you start puting first latters of the name users list start updating in real time with animation.

Then I started implementation of User Profile screen. If you send someone a message using this screen and you don't have an active chat with that user, new "waiting chat" will appear. User received your request can whether accept or decline it.

Next was screen where user can accept or decline new chat request. This screen is almost the same as User Profile screen. There are couple differences - there is a text field with send button instead of accept and decline buttons. If user press "Accept" button both of you will find new chat in "Active chats" section, otherwise waiting chat will just dissapear for user.

![Chats](https://github.com/bgoncharov/talk-talk-chat/blob/master/img/progress.jpg)

I'm using Firebase(Cloud Firestoe, Authentification and Cloud Storage) as a backend service in this project. It was the next stage of developing talk-talk-chat. Firstly I impleented Authentification options such as registration and log in by email, authintification by Google. I created froms validation for email and password. I need to check if the email is filled and correct same as password. And finaly all users are storing at Firebase.

![Chating](https://github.com/bgoncharov/talk-talk-chat/blob/master/img/talk2.gif)

Then I started to work on chat system. I was using [Message Kit](https://github.com/MessageKit/MessageKit) framework because it's a good and well documented libriry to impelement chat that support messaging with text and images.

## Summary

I spent about 2 weeks working on this projectc. While working on it, I got acquainted with modeling Collecition View Compositional Layout, Diffable Data Source and Message Kit framework. I have ideas how to improve my application: notifications, dark mode, better chats sorting, voice/gif/vidoe messages, etc.
