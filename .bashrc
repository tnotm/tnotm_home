personal_site_repo="tnotm.github.io"
post_ext=".md"

file_name() {
	post_type='-note-';
	curr_date=$(date +"%Y-%m-%d");
	curr_time=$(date +"%H-%M-%S");
	filename=$curr_date$post_type$curr_time$post_ext;
	
	cd ~/Workspace/$personal_site_repo/_posts;
	cp ~/Workspace/templates/note_post.md ~/Workspace/$personal_site_repo/_posts/;
	mv ~/Workspace/$personal_site_repo/_posts/note_post.md ~/Workspace/$personal_site_repo/_posts/$filename;
	
	echo 'opening file';
	vi $filename;
	echo 'file closed';
	
	git status;
	
	echo 'Adding to git';
	git add $filename;
	
	echo 'Commiting note'
	git commit -m 'adding note'
	
	echo 'Pushing commit'
	git push
	
	echo $filename;
	}