module PlayerActions

    describe "#playerChoice_act_tama"do
	it"depends on user choice made with tama_actions and act effectively on the tama, so
	feed_tama, teach_tama ..." do
	end
    end
    
end   

module EventTama

    describe "#natureRandom" do 
	it "Create a random variable in order to use for a specific event." do
	expect(:eventRandom) == (rand(1..10).to_i)
	end
    end

    describe "#natureEventSpecific" do 
	it "with the eventRandom variable choose a event in an existent array that equals the
	variable" do
	 expect(:puts)=="Votre tama est:"   
	end 

    end

end
