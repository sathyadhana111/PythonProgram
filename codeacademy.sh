lloyd = {

    "name": "Lloyd",

    "homework": [90.0, 97.0, 75.0, 92.0],

    "quizzes": [88.0, 40.0, 94.0],

    "tests": [75.0, 90.0]

}

alice = {

    "name": "Alice",

    "homework": [100.0, 92.0, 98.0, 100.0],

    "quizzes": [82.0, 83.0, 91.0],

    "tests": [89.0, 97.0]

}

tyler = {

    "name": "Tyler",

    "homework": [0.0, 87.0, 75.0, 22.0],

    "quizzes": [0.0, 75.0, 78.0],

    "tests": [100.0, 100.0]

}

numbers = [1,2,3,4,5]

# Add your function below!

def average(numbers):

    total = 0

    for num in numbers:

        total = total + num

        result = float(total)/len(numbers)

    return result

    

def get_average(student):

    homework = average(student["homework"])

    quizzes = average(student["quizzes"])

    tests = average(student["tests"])

    return (homework*0.1)+(quizzes*0.3)+(tests*0.6)

     

‘’’

Define a new function calledget_letter_grade that has one argument called score. Expect scoreto be a number.

Inside your function, test score using a chain of if: / elif: / else:statements, like so

If score is 90 or above: return “A”

Else if score is 80 or above: return”B"

Else if score is 70 or above: return”C"

Else if score is 60 or above: return”D"

Otherwise: return “F"

Finally, test your function! Call yourget_letter_grade function with the result of get_average(lloyd). Print the resulting letter grade.

 ‘''

def get_letter_grade(score):

    if score >= 90:

        return "A"

    elif score >= 80:

        return "B"

    elif score >= 70:

        return "C"

    elif score >= 60:

        return "D"

    else:

        return "F"

        

‘’'

Define a function calledget_class_average that has one argument students. You can expectstudents to be a list containing your three students.
First, make an empty list calledresults.
For each student item in theclass list, calculateget_average(student) and then callresults.append() with that result.
Finally, return the result of callingaverage() with results.
‘''
        

def get_class_average(students):

    results =[]

    for student in students:

        results.append(get_average(student))

    return average(results)

 ‘’'

Finally, print out the result of calling get_class_average with yourstudents list. Your students should be [lloyd, alice, tyler].Then, print the result ofget_letter_grade for the class's average.’’'



print get_class_average(students)

print get_letter_grade(get_class_average(students))
