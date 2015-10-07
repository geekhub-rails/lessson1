Readme
-
[Ruby install](https://gist.github.com/galulex/2304847)

1. [Monk](https://rubymonk.com/)
2. [screencasts](http://ruby.hasbrains.org/screencasts)
3. [Git and Github](https://www.youtube.com/watch?v=uUuTYDg9XoI)
4. [Git and Github](https://try.github.io)

IDE: (VIM/Atom/Sublime/RubyMine)

1. Fork the repo: ![fork](http://kodi.wiki/images/d/d8/Github_fork.jpg)
2. `git clone git@github.com:(username)/lesson1.git ~/lesson1`
3. `cd ~/lesson1`
4. `sudo apt-get install bundler` in case when bundler was not installed
5. `bundle`
6. Do the tasks according to ruby style guide and make the tests pass
7. `bundle exec rspec`
8. `bundle exec rubocop`
9. [Create the `Pull Request` to `geekhub-rails`](https://help.github.com/articles/using-pull-requests/)

Tasks
-

В класі ’Lesson1’

- Реалізувати метод `(sum)` для підрахування суми з всіх чисел вхідного параметру.
- В методі `age` розрахувати скільки вам років і повернути `String` у наступному формат:
`Я живу 23 года или 8721 дней или 209320 часов или 12559226 минут или 753553635 секунд`
- Реалізувати метод `(name)` який буде зчитувати ПІБ з клавіатури та повертити `String` у форматі:
`Hello Alex Super Man!`

В класі `MyArray` реалізувати наступне:

- ~~Конструктор який приймає масив і зберігає його в змінну `(initialize)`~~
- Метод який повертає розмір масива
- Метод який повертає перевернутий масив
- Метод який повертає найбільший елемент масива
- Метод який повертає найменший елемент масива
- Відсортований по зростанню `(asc)`
- Відсортований по спаданню `(desc)`
- Метод який повертає лише непарні числа
- Метод який повертає лише числа кратні трьом
- Метод який повертає лише унікальні числа
- Метод який повертає масив елементи якого розділені на 10 зі знаком після коми
- Метод який повертає масив з символами алфавіту відповідно до індексу елементів масиву `(chars)`
- Метод який повертає масив у якому максимальний та мінімальний елементи поміняні місцями `(switch)`

Команди `bundle exec rspec` та `bundle exec rubocop` мають бути зеленими
