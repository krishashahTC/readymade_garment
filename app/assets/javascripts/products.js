jQuery(function() {
  var sub_category;
  sub_category = $('#product_sub_category_id').html();
  return $('#product_category_id').change(function() {
    var category, options;
    category = $('#product_category_id :selected').text();
    escaped_category = category.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
    options = $(sub_category).filter("optgroup[label=" + escaped_category + "]").html();
    if (options) {
      $('#product_sub_category_id').html(options);
      return $('#product_sub_category_id').parent().show();
    } else {
      $('#product_sub_category_id').empty();
      return $('#product_sub_category_id').parent().hide();
    }
  });
});