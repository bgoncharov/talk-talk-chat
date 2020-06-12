# talk-talk

Talk-talk is a simple real-time chat with image/text messages. After autharization on the main screen you can find all people registered in the talk-talk chat. If you want to chat with someone just send a request and it will appear on the "waiting chats" area for that person. That person can whether accept or decline your request. If request accepted new chat will appear in "active chats" area for both of you. 

This project made with MVC design pattern. I use Firebase as a backend service. Design was the first thing I made working on this project. It was made in Sketch.

![Sketch](https://github.com/bgoncharov/Images/blob/master/talk-talk/talk-talks-sketch.jpg)

Then according my Sketch file I was implement four screens for Sign in, Registration and Setup profile options. All screens was made using NSLayoutConstraint and I didn't use Storyboard. 

Next step was implementation of "Chats" screen with a beutiful interface. I was using Collecition View Compositional Layout and Diffable Data Source here. It helped me to implement UICollectionView with two kinds of sections. The firs section responsible for Active chats and the second for Waiting chats.

Then I made "Nearby people" screen also using Collecition View Compositional Layout and Diffable Data Source. I was testing those screnns with fake data I created in json files.
