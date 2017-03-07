# Instructions

Add `administrate-field-paperclip` to your Gemfile:

```
gem 'administrate-field-paperclip'
```

Install:

```
$ bundle install
```

Follow the [instructions on Paperclip](https://github.com/thoughtbot/paperclip#quick-start) to get started with your models and migrations. Once you've added the Paperclip attribute to your models, edit your Administrate dashboards. If you added 'avatar' to 'User', then you should:

* Add `avatar: Field::PaperclipField` to `ATTRIBUTE_TYPES`.
* Add `:avatar` to `FORM_ATTRIBUTES`, `SHOW_PAGE_ATTRIBUTES` and (optionally) `COLLECTION_ATTRIBUTES`.
