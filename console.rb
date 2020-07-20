require 'pry'
require_relative './book'
require_relative './author'

jk = Author.new("J.K. Rowling")
tolkien = Author.new("J.R.R. Tolkien")
hemingway = Author.new("Ernest Hemingway")
stein = Author.new("R.L. Stein")


hp1 = Book.new("Sorcerer's Stone", jk, 76944)
hp2 = Book.new("Chamber of Secrets", jk, 85141)
hp3 = Book.new("Prisoner of Azkaban", jk, 107253)
lotr1 = Book.new("Fellowship of the Ring", tolkien, 187790)
lotr2 = Book.new("Two Towers", tolkien, 156198)
lotr3 = Book.new("Return of the King", tolkien, 137115)
old_man = Book.new("Old Man and the Sea", hemingway, 27000)
goosebumps1 = Book.new("Monster Blood", stein, 23043)
goosebumps2 = Book.new("Say Cheese and Die!", stein, 22109)


binding.pry

"something"

