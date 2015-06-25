After a friend of mine posted a link to a Bloomberg article on ["The Old Coding
Languages That Refuse to
Die"](http://www.bloomberg.com/news/articles/2015-06-23/the-old-coding-languages-that-refuse-to-die),
I thought it would make a nice list of languages for a fun exercise -
or *kata*, as the kids say these days. So I set myself a challenge: pick a
programming task and implement it in all 9 of these "obsolete" languages - in
the order listed in the article - without Google. (Or Bing, or Stack Overflow,
or any other online references.) The task I picked is the poster child for
basic competency in programming:
[FizzBuzz](http://c2.com/cgi/wiki?FizzBuzzTest).

All told, it took me 3 hours wall-clock time, 2 hours and 15 minutes of actual
coding, to hack out all 9 programs. Which is a lot longer than I'd hoped. But
in my defense, I spent a full hour of that time just muddling my way through
the APL, which I barely knew at all. Fortunately, my implementation has some
built-in help menus, so I was able to get away without the Internet - still
admittedly kinda cheaty, but it's the one language on the list I never got much
past "Hello, world" in.

Another half hour was spent on the Lisp version, which would have gone a lot
faster if I'd just done a straightforward port of the procedural logic I used
in everything else. But no, I had to try and get all fancy. Without
recourse to [the CLHS](http://clhs.lisp.se), I spent some time perusing symbol
lists (yay, introspection!) trying to remind myself of the wonky Common Lisp
names for straightforward functions, like `remove-if-not` for
what every other language on the planet calls either `select` or `filter`. Not
that I'm bitter.

So after subtracting out the APL and Lisp, it only took me a combined total of
45 minutes of hacking to write FizzBuzz in the other 7 languages, for an
average of 6.5 minutes per language. At the risk of sounding immodest, I
feel that's not too shabby.  The breakdown looks like this:

1. Algol: 3 minutes.

2. COBOL: 15 minutes.  Probably 5 of those were just typing the prologue. ;-)

3. PL/I: 10 minutes.  This is the one I wasn't able to test - it's a proprietary IBM language that never got an open source implementation. If someone has a functional PL/I compiler lying around, I'd be curious to know if my program actually works.

4. Pascal: 1 minute flat

5. Lisp: 30 minutes.

6. APL: 60 minutes

7. Fortran: 6 minutes.

8. Logo: 4 minutes.

9. Ada: 5 minutes.

And there we go.  This repo contains the programs, all of which have been
tested except for the PL/I, and the script that I used to test all of them
except the PL/I and the APL (which I ran in a Windows VM) on my Mac.
