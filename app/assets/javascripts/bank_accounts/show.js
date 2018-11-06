var Show = (function() {
  var $btnNewTransaction;

  var fetchElements = function() {
    $btnNewTransaction = $("#btn-new-transaction");
  };

  var initializeEvents = function() {
    $btnNewTransaction.on("click", function() {
      alert("Hello World");
    });
  };

  var init = function() {
    fetchElements();
    initializeEvents();
  };
  return {
    init: init
  };
})();
