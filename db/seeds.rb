Admin.destroy_all
Question.destroy_all
<<<<<<< Updated upstream
Admin.create(email: "test@gmail.com", password: "123456")
question1 = Question.create(title: "You’re really busy at work and a colleague is telling you their life story and personal woes.\r\nYou:" )
question1.options.create(title: "Don’t dare to interrupt them", option_type: 0)
question1.options.create(title: "Think it’s more important to give them some of your time", option_type: 1)
question1.options.create(title: "Listen, but with only with half an ear", option_type: 0)
question1.options.create(title: "Interrupt and explain that you are really busy at something", option_type: 1)
question2 = Question.create(title: "You’ve been sitting in the doctor’s waiting room for more than 25 minutes.\r\nYou:")
question2.options.create(title: "Look at your watch every two minutes", option_type: 0)
question2.options.create(title: "Bubble with inner anger, but keep quiet", option_type: 0)
question2.options.create(title: "Explain to other equally impatient people in the room how this doctor is always late", option_type: 1)
question2.options.create(title: "Complain in a loud voice, while tapping your foot on the floor", option_type: 1)
question3 = Question.create(title: "You’re having an animated discussion with a colleague regarding a project that you’re in charge of.\r\nYou:")
question3.options.create(title: "Don’t dare contradict them", option_type: 0)
question3.options.create(title: "Think that they are obviously right", option_type: 0)
question3.options.create(title: "Defend your own point of view, tooth and nail", option_type: 1)
question3.options.create(title: "Continuously interrupt your colleague", option_type: 1)
question4 = Question.create(title: "You are taking part in a guided tour of a museum.\r\nYou:" )
question4.options.create(title: "Are a bit too far towards the back so don’t really participate", option_type: 0)
question4.options.create(title: "Follow the group without question", option_type: 0)
question4.options.create(title: "Make sure that everyone is able to hear properly", option_type: 1)
question4.options.create(title: "Are right up the front, adding your own comments ", option_type: 1)
=======

Admin.create(email: 'test@gmail.com', password: '123456')

question1 = Question.create(title: "You’re really busy at work and a colleague is telling you their life story and personal woes.\r\nYou:")
question1.options.create(title: 'Don’t dare to interrupt them', option_type: 0)
question1.options.create(title: 'Think it’s more important to give them some of your time', option_type: 1)
question1.options.create(title: 'Listen, but with only with half an ear', option_type: 0)
question1.options.create(title: 'Interrupt and explain that you are really busy at something', option_type: 1)

question2 = Question.create(title: "You’ve been sitting in the doctor’s waiting room for more than 25 minutes.\r\nYou:")
question2.options.create(title: 'Look at your watch every two minutes', option_type: 0)
question2.options.create(title: 'Bubble with inner anger, but keep quiet', option_type: 0)
question2.options.create(title: 'Explain to other equally impatient people in the room how this doctor is always late', option_type: 1)
question2.options.create(title: 'Complain in a loud voice, while tapping your foot on the floor', option_type: 1)

question3 = Question.create(title: "You’re having an animated discussion with a colleague regarding a project that you’re in charge of.\r\nYou:")
question3.options.create(title: 'Don’t dare contradict them', option_type: 0)
question3.options.create(title: 'Think that they are obviously right', option_type: 0)
question3.options.create(title: 'Defend your own point of view, tooth and nail', option_type: 1)
question3.options.create(title: 'Continuously interrupt your colleague', option_type: 1)

question4 = Question.create(title: "You are taking part in a guided tour of a museum.\r\nYou:")
question4.options.create(title: 'Are a bit too far towards the back so don’t really participate', option_type: 0)
question4.options.create(title: 'Follow the group without question', option_type: 0)
question4.options.create(title: 'Make sure that everyone is able to hear properly', option_type: 1)
question4.options.create(title: 'Are right up the front, adding your own comments ', option_type: 1)
>>>>>>> Stashed changes
