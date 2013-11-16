function prompt_pwd
	echo $PWD | sed -e "s|^$HOME|~|"
end
