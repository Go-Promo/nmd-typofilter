#= require jquery
#= require TypographusLiteUTF8

$ ->
  PLUGIN_NAME = 'nmdTypofilter'

  methods =
    init: (options) ->
      settings = $.extend true,
        buttonSelector: '.js-typofilter-btn'
      , options

      @each ->
        $block = $ @
        $block.find(settings.buttonSelector).on 'click', (e) ->
          e.preventDefault()
          $block.find('input[type="text"], textarea').each ->
            $textBlocks = $ @
            $textBlocks.val Typographus_Lite_UTF8.typo_text($textBlocks.val())
            $textBlocks.trigger 'change'

  $.fn.nmdTypofilter = (method) ->
    if methods[method] then methods[method].apply @, Array::slice.call(arguments, 1)
    else if typeof method is "object" or not method then methods.init.apply @, arguments
    else $.error "Метод с именем #{method} не существует для jQuery.#{PLUGIN_NAME}"