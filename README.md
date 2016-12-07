family_tree
===========

Start of building a family tree in Prolog.

## Usage

Using `swipl` from SWI-Prolog:

    ?- consult(family).
    true.

    ?- sister(cora, X).
    X = iris .

## Future

* Store metadata about each person, maybe in different files.
* Figure out how to get a list of results (all siblings, all children, etc.)
