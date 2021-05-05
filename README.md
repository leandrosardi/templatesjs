# Templates.Js
The **Templates.Js** is a little HTML widget to show text templates with blank spaces, that works such as a prefilled form.

You can find a [live example](https://connectionsphere.com/developers/templatesjs) of **Templates.Js** here: [https://connectionsphere.com/developers/templatesjs](https://connectionsphere.com/developers/templatesjs)


# Getting Started
Get started in 3 simple steps.

1. Download the required libraries and stylesheets.
All these files are included in this project. You can download them from this page.

2. Include them in the <header> section of your HTML page.

```html
<script src="jquery-3.5.1.min.js" type="text/javascript"></script>
<script src="commons.js" type="text/javascript"></script>
<link rel="stylesheet" href="./templates.css">
<script src="./templates.min.js" type="text/javascript"></script>
```

3. Create a nice prefilled form.

```html
<div id='myTemplate' style='width:750px;'> </div>
<script>
	var ctx = document.getElementById('myTemplate');
	$(document).ready(function() {
		templatesJs.draw(ctx, {
			versions: [{
				code: 'Hello <!firstname!Write the first name of your friend here!> and I would like to invite you to my graduation, next <!graduation_date!Write the date of your graduation here!>. See you there!',
			}],
		});
	});
</script>
```

## Some comments

Special tags like `<!firstname!Write the first name of your friend here!>` will be replaced by an content-editable span in the widget.

The special tag has two components:
1. the identifier of the tag (*firstnae*); and
2. a brief description for the user about what should he/she write in such blank space, that will be shown as a placeholder text.

# Features
Here are listed each one of the features provided by **Templates.Js**.


## Working with Spintax 
You can provide spintax templates. The widget will show one rotation randomly chosen.

Example:

```javascript
var ctx = document.getElementById('myTemplate');
			
$(document).ready(function() {
	templatesJs.draw(ctx, {
		versions: [{
			code: "{Hello|Hi|Hi there} <!firstname!Write the first name of your friend here!> and {I would|I'd} like to invite you to my graduation, next <!graduation_date!Write the date of your graduation here!>. See you there!",
		}],
	});
});
```

## Offering Multiple Template Versions
The widget can includes many versions, and show a drop-down menu to choose between them.

Example:

```javascript
var ctx = document.getElementById('myTemplate');
			
$(document).ready(function() {
	templatesJs.draw(ctx, {
		index: 0,
		versions: [{
			code: "{Hello|Hi|Hi there} <!firstname!Write the first name of your friend here!> and {I would|I'd} like to invite you to my graduation, next <!graduation_date!Write the date of your graduation here!>. See you there!",
		}, {
			code: "{Hello|Hi|Hi there}! {I would|I'd} like to invite you to my graduation <!firstname!Write the first name of your friend here!>. It will be next <!graduation_date!Write the date of your graduation here!>. See you there!",
		}],
	});
});
```

The `index` parameter is the version that will be shown by default.

## Persisting Written Values
Store the values written by the user into a database, and show them later in the blank spaces is a very common practice.
The user can start completing part of a lerge form now, and get back to complete it days later.

You can setup the values to show in the blank spaces, as is shown in the code below:

```javascript
var ctx = document.getElementById('myTemplate');
			
$(document).ready(function() {
	templatesJs.draw(ctx, {
		versions: [{
			code: "{Hello|Hi|Hi there} <!firstname!Write the first name of your friend here!> and {I would|I'd} like to invite you to my graduation, next <!graduation_date!Write the date of your graduation here!>. See you there!",
			values: {
				'firstname': 'Juan',
				'graduation_date': 'Monday',
			},
		}],
	});
});
```

## Allowing Custom Scripts
You can witch the widget between 2 modes:

1. **blank-fields mode**, where the user just have to fill the blank spaces of a tempalte; and

2. **row code mode**, where the user can write freely in a text area.

You have to use the `allow_code_edition` parameter to enable/disable such a custom scripts feature.

*(example is pending)*

# Functions in Version 1.0.1
Here are listed each one of the features provided by **Templates.Js**.

## templatesJs.version()
Returns the version of this **Templates.Js** library.

## templatesJs.isReady(ctx)
Returns true if a template has been complated by filling up all its blank spaces.

## templatesJs.isCodeOn(ctx)
Returns true if the widget is enabled to edit code.

## templatesJs.toggleCode(ctx)
Set on/off the code raw-code edition feature.
Enable/disable the select list of templates.

## templatesJs.getVersionId(ctx)
Returns ID of the chosen version to work with.
If code button is ON (the users is working with the raw code), returns null.

## templatesJs.setVersionId(ctx)
Change the chosen version.
The event on_version_change will be raised.
If the users is working with the raw code, it toggles to the template mode.

## templatesJs.getChosenVersionSpintax(ctx)
If code button is OFF, returns the code of the chosen version with the values written by the user in the blank-spaces.
If code button is ON, this function throws an exception.

## templatesJs.getSpintax(ctx)
Returns the code of the template with the values written by the user in the blank-spaces.
If code button is ON, this functions returns the text inside the textarea.
If code button is OFF, this functions calls getChosenVersionSpintax and returns its value.

## templatesJs.setSpintax(ctx, value)
If code button is ON, this functions set the text inside the textarea.
If code button is OFF, this functions throws an exception.
The event on_raw_code_edition will be raised.

## templatesJs.getFieldNames
Returns an array with the names of the fields in the template.

## templatesJs.getFieldValue(ctx, field_name)
Returns the value written into a field.

## templatesJs.setFocus(ctx)
Set cursor focus in the first blank-space of the template.

# Events in Version 1.0.1
Here are listed events that you can catch in **Templates.Js**.

## on_field_edition

*(example is pending)*

## on_version_change

*(example is pending)*

## on_code_button_toggle

*(example is pending)*

## on_raw_code_edition

*(example is pending)*

# Deployment 
The **Templates.Js** requires the [**Commons.JS 1.0.2**](https://github.com/leandrosardi/commonsjs/) and [**JQuery 3.5.1**](https://jquery.com/download/).

All the libraries are already included in this repository.

# Additional Notes
The **Templates.Js** is used at [**ExpandedVenture**](https://expandedventure.com/expandedventure) to develop different UI/UX features.

The **Templates.Js** library is just starting on Nov-2020, and more functions will be added as needed.

The **Templates.Js** library has been written following the [**W3C JavaScript Best Practices**](https://www.w3.org/community/webed/wiki/JavaScript_best_practices).

# Disclaimer
Use at your own risk. The use of the software and scripts downloaded on this site is done at your own discretion and risk and with agreement that you will be solely responsible for any damage to any computer system or loss of data that results from such activities.

# Maintainer
Leandro Daniel Sardi <leandro((dot))sardi((@))expandedventure.com>