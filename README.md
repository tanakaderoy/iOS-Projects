# Assignment 4

Assigned: 2/14/2019 
Due: 2/28/2019 
Points: 200 

## Purpose
Create a UIView based iOS app for data entry and display using standard iOS controls and navigation elements.

## Problems
The app's purpose is to create, display, and track tasks.  Some of the requirements are spelled out, but there is purposfully a lot of room for interpertation.  Make the app yours.

### Task
A task is something you want to track. It consists of:
* a description
* an emoji
* a priority (high, medium, low)
* a due date (optional)
* a state (open or closed)

### UI
Your application should consist of two screen: a list of all the tasks and a screen to create and edit tasks.

Display the list screen at application launch in an UINavigationController.  There should be a UIBarButton Add button at the top right that opens the create item screen.

Tapping a task in the list should navigate to the create item screen with the tapped task ready for editing.

Swiping a task in the list should delete the item.

The list should use a custom cell view.  All of the information about the task must be displayed in the cell in some manner.  Be creative in your design.

## Grading Rubric
25 points each:
* Task Model Class
* Task Manager Class
* UI + Navigation
* Custom Cell for Task
* Creating a new Task
* Editing an existing Task
* Deleting a Task
* Overall app and code quality
