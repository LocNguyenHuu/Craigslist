Craigslist
=================
Summary
-------
This repo contains a re-designed, responsive craigslist clone that was created to practice my skills in CSS as well as implementing various APIs into Rails apps.

![homepage](https://cloud.githubusercontent.com/assets/22533214/25117294/75a93ec0-23df-11e7-8560-c2fe6c380322.png)

APIs/Gems:
-------
1. Image uploading using <a href="https://github.com/thoughtbot/paperclip">paperclip</a> gem
2. <a href="https://github.com/thoughtbot/paperclip#image-processor">ImageMagick</a>, which is required for Paperclip.
3. <a href="https://developers.google.com/maps/web/">Google Maps API</a> with the <a href="https://github.com/alexreisner/geocoder"> geocoder</a> gem
4. <a href="https://www.omdbapi.com/">OMDB API</a>, Rails, React, CSS and HTML. This was completed as an attempt to practice my skills in react, as well as my skills in media queries/responsive web design.
5. <a href= "https://www.ckeditor.com">CKEditor</a> text editor which allows users to style their post listings.
6. <a href="https://github.com/laserlemon/figaro">Figaro</a> for hiding API keys
7. Bootstrap grids for making the website responsive

User Stories
-------
1. Users can login, logout and create an account.
2. Users can view all posts and categories without logging in.
3. Users can post a listing if logged in.
4. Users can upload an image and address to their post if logged in.

![show](https://cloud.githubusercontent.com/assets/22533214/25117292/75a8724c-23df-11e7-9f4b-0ed4c9898a0a.png)
![profile](https://cloud.githubusercontent.com/assets/22533214/25117295/75a99adc-23df-11e7-8119-3030ea75dabf.png)
![post](https://cloud.githubusercontent.com/assets/22533214/25117291/759dc90a-23df-11e7-9d1e-0a696a62c700.png)
![allposts](https://cloud.githubusercontent.com/assets/22533214/25117293/75a8b9a0-23df-11e7-846e-84ab82b9e3cd.png)

Installation Instructions
-------
To view locally, clone the repo, install and create the database.
```
git clone https://github.com/jawt94/craigslist
cd craigslist
bundle install
```

If you don't have imagemagick on your computer, install it
```
mac - brew install imagemagick
```

Then,start the server
```
be rails s
```
