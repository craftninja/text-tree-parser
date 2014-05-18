# Text Tree Parser

You work at an HR consultancy.  Your clients send you text files with the management hierarchies of employees.

Your mission, should you choose to accept it, is to turn these trees of employees into a hash, where the keys are the
employee names, and that values are their managers.

Let's say you have the following text:

```
Izaiah Deckow
  Joel Corkery
    Della Schuppe
    Lurline Ankunding
  Aaliyah Wolff
    Elisa Adams
Eulalia Bode
  Claude McCullough
    Lowell Hettinger
```

The result would be:

```
{
  "Izaiah Deckow" => nil,
  "Joel Corkery" => "Izaiah Deckow",
  "Della Schuppe" => "Joel Corkery",
  "Lurline Ankunding" => "Joel Corkery",
  "Aaliyah Wolff" => "Izaiah Deckow",
  "Elisa Adams" => "Aaliyah Wolff",
  "Eulalia Bode" => nil,
  "Claude McCullough" => "Eulalia Bode",
  "Lowell Hettinger" => "Claude McCullough",
}
```

# Setup

* Fork
* Clone
* Turn on TravisCI for the fork by
  visiting https://travis-ci.org/profile/<github user name>, clicking the "Sync now" button
  and scrolling down to find the repository to build.
* Create a new branch for your work using `git checkout -b v1`
* Implement specs and code
* Push using `git push -u origin v1`

## Further Practice

This warmup can be completed multiple times to increase your comfort level with the material.
To work on this from scratch, you can:

1. Add an upstream remote that points to the original repo `git remote add upstream git@github.com:gSchool/text-tree-parser.git`
1. Fetch the latest from the upstream remote using `git fetch upstream`
1. Create a new branch from the master branch of the upstream remote `git checkout -b v2 upstream/master`
1. Implement specs and code
1. Push using `git push -u origin v2`

Each time you do the exercise, create a new branch. For example the 3rd time you do the exercise the branch
name will be v3 instead of v2.
