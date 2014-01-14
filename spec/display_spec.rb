
module Display
   
    describe "#confirmation" do
	it "validate by y or n the user input" do
	end
	
    end
    
    describe "#tama_stats" do
	it "prints actual tama stats about health, mental_state, mood"do
	end
    end
   
    describe "#banner_tama" do
	it "prints one line of 15 --- on terminal"do
	    15.times{expect(:print)=="+-"}
	    expect(:puts)=="\n"

	end

    end

    describe "#tama_actions" do 
	it "Ask user to makei a choice about our tama, so we can feed him, play with him,
	clean him etc. "do
	end


    end

end
