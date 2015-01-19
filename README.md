# NmdTypofilter
Gem для Ruby on Rails, добавляющий в проект плагин с типографом.

> «Типограф» — средство подготовки текстов к web-изданию. Форматирует текст для приведения его к более правильному с точки зрения типографики виду.

Автор самого типографа - [rmcreative.ru](http://rmcreative.ru/blog/post/tipograf).

## Установка

Установите gem
```ruby
gem 'nmd_typofilter', github: 'Go-Promo/nmd-typofilter'
```

Подключите jQuery-плагин к Вашим js-ресурсам
```coffee
#= require jquery.nmdTypofilter
```

Примените jQuery-плагин ко всеми DOM-элементам, помеченным специальным классом
```coffee
$('.js-typofilter').nmdTypofilter()
```

## Использование

Типограф применяется ко всем `input[type="text"], textarea` внутри DOM-элемента с классом `js-typofilter`.
Запуск типографа происходит по клику на элемент с классом `js-typofilter-btn` внутри DOM-элемента `js-typofilter`.

Пример использования типографа для input-а с заголовком новости (кнопка стоит около label)
```haml
.control-group.js-typofilter
  .control-label
    = f.label :title
    %a.btn.js-typofilter-btn{href: "#", title: 'Применить типограф'}
      %i.icon-text-width
  .controls
    = f.text_area :title, class: :span12, rows: 4, maxlength: 255
```

Второй пример (кнопка стоит рядом с input)
```haml
.control-group
  .control-label
    = f.label :title
  .controls.js-symbol-counter.js-typofilter
    = f.text_field :title, class: 'span9', maxlength: 110
    %a.btn.js-typofilter-btn{href: "#", title: 'Применить типограф'}
      %i.icon-text-width
```