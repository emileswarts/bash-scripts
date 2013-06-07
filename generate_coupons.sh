#!/bin/bash

main(){
	echo `words`
	count
	python -c "print 1.0 / `count` ** 3"

	three_random_words
}

three_random_words()
{
	for i in {1..3}; do
		random_word
	done
}

random_word()
{
	words |head -1

}

count() {
	words |wc -l
}

words(){
	paths |extract_words_from_paths |remove_non_alpha_characters |downcase |remove_long_words |unique |remove_confusing_characters
}

paths(){
	find /usr/share/man -type f
}

extract_words_from_paths(){
	sed 's/^.*\///' |sed 's/\..*$//'
}

remove_non_alpha_characters() {
	grep -v '[^[:alpha:]]'

}

downcase(){
	tr 'A-Z' 'a-z'

}

remove_long_words() {
	egrep '^.{1,4}$'
}

unique() {
	sort -u
}

remove_confusing_characters() {
	grep -v I | grep -v l |grep -v O |grep -v 0

}
main
