# RubyChallenge

The code solves the proposed challenge described below.

## Usage

`
ruby main.rb input1 input2 input3 .... inputN
`


example:

`
ruby main.rb input/f1.txt input/f2.txt input/f3.txt
`

## How it works

Given 3 files like these

`file1.txt`: 

```
## Timesheet

morning: 09:13
brb lunch: 12:03
back: 13:56
leaving: 20:53

## What Happened?
```

`file2.txt`: 
```
## Timesheet

morning: 09:59
brb lunch: 12:07
back: 13:40
brb: 18:41
back: 20:53
leaving: 22:53

## Daily report

Leaving:
```


`file3.txt`:
```
## Timesheet

morning: 09:45
brb lunch: 12:28
back: 13:31
brb: 18:07
back: 23:11
leaving: 23:11

## Daily report

Leaving:
- syncs with Flávia, and with Iago and Arthur
- started working on CRM side to create user with password in authenticator

```

Create a command line solution to parse these files and calculate the total hours

For the input
`$ ./EXECYTABLE file_1.txt file_2.txt file_3.txt`

The output on _stdout_ should be
```
REPORT:
file_1.txt: xx:yy hours
file_2.txt: zz:ww hours
file_3.txt: aa:bb hours
total hours: hh:mm hours
```

Assume that:
1. the hours are always in posix format `HH:MM` and come after exactly 1 space.
1. the punchs begin after exactly 1 empty line after `## Timesheet` line and end after exactly 1 empty line
2. you don't have to parse the rest of the file
3. the number of files accepted as parameters of the command line interface is unlimited. 


