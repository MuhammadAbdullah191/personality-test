module HomeHelper
	def question_no(q)
		"question_#{q.id}"
	end
	def last_question(i, questions)
		i == questions.length - 1
	end
end
