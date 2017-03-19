# Administrate::Field::Paperclip

A plugin to integrate [Paperclip](https://github.com/thoughtbot/paperclip) fields in [Administrate](https://github.com/thoughtbot/administrate).

# Instructions

Add `administrate-field-paperclip` and `paperclip` to your Gemfile:

```
gem 'administrate-field-paperclip'
gem 'paperclip'
```

Install:

```
$ bundle install
```

## Usage

Follow the [instructions on Paperclip](https://github.com/thoughtbot/paperclip#quick-start) to get started with your models and migrations. Once you've added the Paperclip attribute to your models, edit your Administrate dashboards. If you added 'avatar' to 'User', then you should:

```ruby
class UserDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    avatar: Field::Paperclip,
  }
# ...
```

Then add `:avatar` to `FORM_ATTRIBUTES`, `SHOW_PAGE_ATTRIBUTES` and (optionally) `COLLECTION_ATTRIBUTES`.

You can provide the field with options using `Field::Paperclip.with_options(options)`:

* `thumbnail_style` (defaults to `'thumbnail'`) to control what image style is used to display the image in collection views
* `big_style` (defaults to `'original'`) to control what image style is used to display the image on the show page.
* `url_only` (defaults to `false`) to show only a URL (as a link) instead of trying to display an image.

## [Contributors](https://github.com/picandocodigo/administrate-field-paperclip/graphs/contributors)

* Klas Eskilson - https://github.com/klaseskilson
* Rich - https://github.com/pedantic-git

Based on the [Administrate::Field::Image](https://github.com/thoughtbot/administrate-field-image) template.
