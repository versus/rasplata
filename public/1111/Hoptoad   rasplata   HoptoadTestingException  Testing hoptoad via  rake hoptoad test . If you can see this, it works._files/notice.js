function determinePaddingWidth(element) {
  return parseInt(element.getStyle('padding-left')) +
         parseInt(element.getStyle('padding-right'));
}

function determineCorrectWidth(containerSelector, elementSelector) {
  var container  = $(containerSelector);
  var firstChild = container.down('tr ' + elementSelector + ':first');
  var lastChild  = container.down('tr td:last');

  var
  width  = container.getWidth();
  width -= firstChild.getWidth();
  width -= determinePaddingWidth(firstChild);
  width -= determinePaddingWidth(lastChild);

  return width;
}

function resizeSummaryValueElements() {
  $$('.summary_secundus td pre').each(function(element) {
    element.setStyle({
      'width' : determineCorrectWidth('summary', 'th') -
                64 + // Arbitrary number to improve alignment with other cells.
                'px'
    });
  });
}

function resizeEnvironmentValueElements() {
  $$('#environment .object').each(function(element) {
    element.setStyle({
      'width' : determineCorrectWidth('environment', 'td') + 'px'
    });
  });
}

function resizeBacktraceElements() {
  var backtrace = $('backtrace');
  var width     = backtrace.getWidth() -
                  determinePaddingWidth(backtrace);

  $$('#backtrace p').each(function(element, index) {
    if (0 == index) {
      width -= determinePaddingWidth(element);
    }

    element.setStyle({ 'width' : width });
  });
}

function resizeElements() {
  resizeBacktraceElements();
  resizeSummaryValueElements();
  resizeEnvironmentValueElements();
}

Event.observe(document, 'dom:loaded', resizeElements);
Event.observe(window,   'resize',     resizeElements);

if (tabs) {
  tabs.observe('afterChange', function(element) {
    switch (element.id) {
      case 'backtrace':
        resizeBacktraceElements();
      break;

      case 'environment':
        resizeEnvironmentValueElements();
      break;

      case 'summary':
        resizeSummaryValueElements();
      break;
    }
  });
}
