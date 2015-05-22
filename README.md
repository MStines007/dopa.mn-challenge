# dopa-applicant

Dopamine Applicant App. An _App-pplication_, if you will!

# Welcome!

Thanks for your interest in working with us!
If you've been invited to submit something here, then we're interested in working with you also!
How reciprocal and lovely.  

We're going to use this super-simple Rails app as a general assessment of how you approach certain tasks.  

The goal of this test is to see your thought process and problem solving ability.
Solving these problems here will be reflective of some of the work you'd be doing here at Dopamine.  

A good candidate will be able to complete this task in 30 - 60 minutes.
Submission of this task will be due on Friday, May 29th at 10:00 PM ET. Earlier submissions are encouraged and welcome.

## First off...

To get started, please `clone` this app and share the GitHub link of your version of it with us. Please do not `fork` it.

# Instructions

For the test, you will be assigned to a specific slack channel with two of our developers.
You should use this to your advantage as a way to differentiate yourself from the other candidates.
Ask questions, tell us what you're thinking, and show us why you would be someone good to work with.
However, do not expect us to walk you through the the entire assignment.  

One caveat of this channel is that we will be working during the times in which you may have a question. We may or may not be able to answer at any given moment so please be patient.  

You will receive an email invitation that will link you to your specific slack channel

### Starting product

Various parts of this application are broken and we need you to get it working. Use your debugging skills to get the finished product below and then complete the tasks listed.

### Finished Product

![alt text](https://raw.githubusercontent.com/dopa/dopamine-applicant/master/app/assets/images/working-product.jpg "Working Product")

## Additional features

Once the application is working again, you should get a list of 8 places being returned. After this has been accomplished, please do the following:

### Front-End tasks

- Increase the listing to 25
- Randomize the 25 listings and return one of them
- If a random listing has been returned make the search button a little more friendly like "Roll Again!" or something like that

### Back-End tasks

- Add a handful of tests that you think this app is egregiously missing, at your discretion.
We understand that the normal Rails testing procedures don't necessarily apply to this simplified, non-traditional setup.
- After some client feedback (play along), we've found out that the stakeholder doesn't like the idea of 
routes with query string parameters and whatnot. they'd like for the AJAX request to hit `places` [slash] `zipcode` [slash] `result-limit-number` instead. 
Please add an appropriate route to accomplish that.

## Finally

The client is so pleased and impressed with the URL change you made recently that they're salivating for more end-to-end features.  

- Add another data point from the API to the results on the front end. Pick any piece of data for the listings that is interesting to you 
and get it from the API, displaying it in the table on the front end.
- Lastly, support is now needed for a basic mobile and tablet view. add breakpoints at minimum widths of 320, 425, 768, 1024.

## Submitting

Once you're done briefly list out the steps you took to complete this task in your slack channel.
Keep this part as short as possible. Then, state "Porkchop Sandwiches!" to call time and complete your assignment.
