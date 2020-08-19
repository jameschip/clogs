# clog
A blog that is read with curl (curl + blog = clog)!

# The format of a clog (a rough draft).

A clog is the smallest possible instance of a blog I could imagine and has a simple structure. All you need is a folder called ```clog``` in the root of your website that contains a file called ```index```. The only other file I have included in the spec at this point is ```links``` and is optional. Posts in your clog are just numbered files that contain the text for the post. None of these files have an file extension.  
  
Thats all there is to it.  
  
If you want to get started with your own blog you can lone the ```clog``` directory in this repo to the root of your website and look in the post for further  instruction on what to do.
  
```
    clog/
     |__ index <- This i the home page of your clog
     |__ links <- for linking to other clogs and such
     |__ 1 <- a post
     |__ 2 <- another post
```

## The index file.

This is my current suggested syntax for the index page.  
  
  
* it should have one line that reads ```Posts:\n```, every line after that is a 'link' to a post.
* A link to a post has the format ```<POST_ID> : Post title```
  
Everything before the Posts: tag is just header text to introduce your clog.
  
As you add more clog posts add them to the bottom of your index file, this way when a reader gets your index the most recent posts will be the ones they see first.

## The new.sh

While not sessisary the new.sh can be run to easily create the template forr a new post for you! It counts how many files there are in the directory and then creates a new post with that number as an ID and adds the appropriate line to the end of the index file for you!

## Why?

The web is getting a bit fat and bandwidth is getting used up at an alarming rate. Blog posts about bloat problems on the web are themselves running into multiple megabytes in size just to present you with 500 or so words of content. This is obscene! A blog, in its modt distilled form is a text document. The clog was a simple experiment in stripping the blog back to its smallest possible size. Due to the nature of the clog it is also naturally accessible to any maching that can run curl (most machines) including very old machines that would struggle now just displaying an average post from medium. You can read your clog from a computer that doesnt even have a GUI!  
  
