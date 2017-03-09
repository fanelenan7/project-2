<!-- AM: +1 for putting thought/effort into this readme. -->
<!-- AM: Look into using Markdown to make your readme look more official! -->
<!-- AM: More on Markdown here - https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet -->

Repo: https://github.com/fanelenan7/project-2/tree/albums-new
Screen Cast: https://youtu.be/RMYEr8lUXSY

Imaginarium is a Rails web application, built for creative people to showcase their work.

The user is able to post their submissions to the main gallery, assign them to albums or comment on them.

Only a user that submitted the work/album/comment is able to change, assign or delete it.

Timestamps for the time of the last change are provided for both submissions and comments.

Website is fully responsive to a multitude of screen widths.

Initially I focused on getting the MVP done, then styling it until I was satisfied with the result (as a designer I have very high standards for my own work). After that was done on the first project day, I focused on adding bells and whistles to the app, like animations, favicon, footer, responsiveness etc. After that I decided to add an Album model to make the sorting of the submissions easier, which did not go completely smoothly. I have spent an entire day working on integrating the model.
Submissions are not nested and can be viewed separately. Album is not required to submit one, nor is it required for submission at all. All the submission appear in the main gallery page regardless of whether or not they were assigned to the album, where they can be viewed.

Album was challenging to integrate into the app, but it was pretty doable.
I didn't have to nest Submissions inside the Albums, so that helped. I didn't have to revamp the entire thing.
Addition of an another foreign key gave me lots of trouble as I didn't know that I should have added optional: true to the Submission model.
Deleting Albums that have Submissions attached to them gave me another stumble as I found the error only after I already deployed it and was recording the screen cast. Resolved with addition of dependent: :nullify to Album model.

As for unsolved problems, I think I got everything to work. Could use a few improvements like a custom 404 page and dynamic copyright year, which I failed to attach.
