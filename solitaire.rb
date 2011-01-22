# The Solitaire Cipher
# RubyQuiz.com, Problem #1
# http://rubyquiz.com/quiz1.html

# Notes:
# Encrypting
# Discard all non-A to Z chars
# Convert to uppercase
# 1. Split into five character groups, padding last group with Xs
# 2. Solitaire keystream letter for each letter
# Each letter in (1) to numbers
# Each letter in (2) to numbers
# Add numbers from 1 and 2. Mod 26
# Convert back to letters

# Decrypting:
# same thing, take original (1), use solitaire (2) again
# subtract (1) - (2)
# mod 26 again (1-22 = 5)
# Convert numbers back to letters


# Solitaire keystream
# 52 cards, 2 jokers
# base is cards face value, Ace=1, etc, king=13
# value = base + (clubs=0, diamonds=13, hearts=26, spades=39)
# either joker values at 53

# Taking a break to understand solitaire keystream 
