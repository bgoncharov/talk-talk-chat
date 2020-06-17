# talk-talk

Talk-talk is a simple real-time chat with image/text messages. After autharization on the main screen you can find all people registered in the talk-talk chat. If you want to chat with someone just send a request and it will appear on the "waiting chats" area for that person. That person can whether accept or decline your request. If request accepted new chat will appear in "active chats" area for both of you. 

This project made with MVC design pattern. I use Firebase as a backend service. Design was the first thing I made working on this project. It was made in Sketch.

![Sketch](https://github.com/bgoncharov/Images/blob/master/talk-talk/talk-talks-sketch.jpg)

Then according to my Sketch file I was implement four screens for Sign in, Registration and Setup profile options. All screens was made using NSLayoutConstraint and I didn't use Storyboard. 

Next step was implementation of "Chats" screen with a beutiful interface. I was using Collecition View Compositional Layout and Diffable Data Source here. It helped me to implement UICollectionView with two kinds of sections. The firs section responsible for Active chats and the second for Waiting chats. 

Then I made "Nearby people" screen also using Collecition View Compositional Layout and Diffable Data Source. I was testing those screnns with fake data I created in json files. There is a search bar and if you start puting first latters of the name users list start updating with animation.

Then I started implementation of User Profile screen. If you send someone a message using this screen and you don't have an active chat with that user, new "waiting chat" will appear. User received your request can whether accept or decline it.

Next was screen where user can accept or decline new chat request. This screen is almost the same as User Profile screen. There are couple differences - there is a text field with send button instead of accept and decline buttons. If user press "Accept" button both of you will find new chat in "Active chats" section, otherwise waiting chat will just dissapear for user.

I'm using Firebase(Cloud Firestoe, Authentification and Cloud Storage) as a backend service in this project. It was the next stage of developing talk-talk-chat. Firstly I impleented Authentification options such as registration and log in by email, authintification by google. I created froms validation for email and password. I need to check if the email is filled and correct same as password. And finaly all users are storing at Firebase.

// TODO: - Notifications, dark mode
