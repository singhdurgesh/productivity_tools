git branch --merged | grep -v "master\|development\|staging" | xargs git branch -D