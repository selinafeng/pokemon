# Q0: Why is this error being thrown?
There is no Pokemon model yet. 

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
The Pokemon are appearing because the instance variable @pokemon is assigned to a random pokemon whose trainer is nil. All of the possible Pokemon that appear have no trainer.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It creates a button that has the text "Throw a Pokeball" and creates a path for the pokemon when it is captured, then calls the patch method.

# Question 3: What would you name your own Pokemon?
I would name my pokemon Chillmadillo!


# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here? 
I passed a path with a prefix (trainer_path) into the redirect_to with the parameter current_trainer.


# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
This line takes the error message from the validation using data from the form and renders it in the view. 

# Give us feedback on the project and decal below!
I really liked this project and I feel like I learned a lot from it. I found the decal as a whole very engaging and fun. The instructors and TAs are all very helpful, both in lecture/lab and at office hours. Thanks for all the hours you put into this decal! :)

# Extra credit: Link your Heroku deployed app
https://obscure-atoll-94700.herokuapp.com/