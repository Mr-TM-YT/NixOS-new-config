{ pkgs, config, input, programs, ... }: {
	programs.git = {
		enable = true;
		userName = "Mr-TM-YT";
		userEmail = "www.mohamedsalwa13@gmail.com";
		aliases = {
			pu = "push";
			cm = "commit";
			co = "checkout";
		};
	};
}
