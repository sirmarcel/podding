
(merged into Podding at github.com/Podding/Podding)

Hello there.

Nothing to see here, move along.

There is a small sinatra app for testing. So you're gonna need to run

	gem install sinatra slim less sinatra-contrib

to get everything working and
	
	ruby podding.rb

for testing (defaults to localhost:4567)


### Random Notes

They might come in handy.

- .page is a general class for anything that is a page. ;) Jk, just use it for anything with a title and then some content.
- I try to use this order for CSS:
	* Width
	* Height
	* margin
	* border
	* padding
	* anything else
- .episode-list is a class for everything that is, well, an episode list.
- #content is the wrapper everything that is not the sidebar


### Things I don't know how to solve nicely right now

- Have a fixed sidebar that doesn't suck
- Properly deal with automatic width (buttons, man)

