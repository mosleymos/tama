module PlayerActions

    describe "#playerChoice_act_tama"do
	it"depends on user choice made with tama_actions and act effectively on the tama, so
	feed_tama, teach_tama ..." do
	end
    end
    
end   

module EventTama

    describe "#NatureRandom" do 
	it "Create a random variable in order to use for a specific event." 
	it " Variable is between 1...10" do
	    should_have eventRandom eq(rand(1..10).to_i)
	    and_return(eventRandom)
	end
    end

    describe "#NatureEventSpecific" do 
	it "with the eventRandom variable choose a event in an existent array that equals the
	variable" do
	    should_receive eventRandom

	end 

    end

end
