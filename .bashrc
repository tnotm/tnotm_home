file_name() {
	post_type='-note-';
	curr_date=$(date +"%Y-%m-%d");
	curr_time=$(date +"%H-%M-%S");
	filename=$curr_date$post_type$curr_time;
	echo $filename;
	}

alias make_note="cd ~/Workspace/tnotm.github.io/_posts &&
		 cp ~/Workspace/templates/note_post.md $curr_date-note-$curr_time.md &&
		 vim $curr_date-note-$curr_time.md"