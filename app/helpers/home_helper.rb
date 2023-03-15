module HomeHelper
	def questionNo(q)
		"question_#{q.id}"
	end
	def lastQuestion(i, questions)
		i == questions.length - 1
	end
end
