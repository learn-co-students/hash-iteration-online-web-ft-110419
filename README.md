

If you run your tests now, the first test should now be passing.

```text
#select_winner
  returns the name of the passenger who stays in suite a and whose name begins with the letter 'A'
```

### A Closer Look

Let's break this down:

- We iterate through the hash using `#each`. We chose `#each` instead of collect
  because we don't want to collect the key/value pair that contains the winner,
  just the _name_ of the winner. With `#each`, we have the control we need to
  simply grab the winner's name and set it equal to a variable that we can return
  later on.

- Inside our iteration, we use an `if` statement combined with the `&&` ("and")
  boolean operator to check if we have the right suite and if the person in that
  suite has a name that begins with the letter "A".

- If that condition returns true, we've found our winner! We set their name equal
  to the `winner` variable and end our iteration.

- Then, we call on our `winner` variable to return the name of the lucky winner.

## Code Along II: Happy Birthday

In this example, we are the managers at Chuck E. Cheese's. Chuck E. Cheese's is
a great place to have a birthday party, and there are several birthdays going on
here today. Our job is to write a method that operates on a hash of birthday
kids and wishes them a happy birthday.

### Our Hash

We will be operating on the following hash that tracks birthday kids and their
associated ages:

```ruby
birthday_kids = {
  "Timmy" => 9,
  "Sarah" => 6,
  "Amanda" => 27
}
```

### Our Method

The `#happy_birthday` method is set up to take in the `birthday_kids` hash as an
argument. We need to code the method such that it `puts` out to the terminal the
following message for each kid:

```ruby
"Happy Birthday #{kids_name}! You are now #{age} years old!"
```

Let's give it a shot:

```ruby
def happy_birthday(birthday_kids)
  birthday_kids.each do |kids_name, age|
    puts "Happy Birthday #{kids_name}! You are now #{age} years old!"
  end
end
```

Here we are using `#each` to iterate over each pair of kids name/age. We are
yielding the key/value pair to the block of code between the `do`/`end` keywords
by assigning the variables `kids_name` and `age` in between the pipes, `| |`, to
be the placeholders for each key/value pair.

Then, we can use those variable names in our string interpolation to `puts` out
the actual values they point to at each step of the iteration.

Running the test suite with the above code should show all tests passing. You're
ready to move on!

**BONUS:** In `spec/birthday_spec.rb`, one test is _pending_, meaning it is not
currently counting towards lab completion. After passing all the other tests, if
you would like to challenge yourself a bit more, go into `spec/birthday_spec.rb`
and change _xit_ to _it_ in the beginning of the second test. Run `learn` to see
that the test is now failing rather than listed as pending, and use the test
message to create a new method, `age_appropriate_birthday`.

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/hash-iteration' title='Iterating Over Hashes With #each'>Iterating Over Hashes With #each</a> on Learn.co and start learning to code for free.</p>
