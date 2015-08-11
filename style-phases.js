var erlnmyr = require('erlenmeyer');
var types = erlnmyr.types;
var phase = erlnmyr.phase;

module.exports.amalgamate = phase({input: types.number, output: types.string, arity: 'N:1'},
  {
    onStart: function() {
      if (this.order == undefined) {
        this.order = {};
        this.names = [];
        this.max = 0;
        this.emittedOrder = false;
      }
      this.data = [];
    },
    impl: function(data, tags) {
      var name = tags.read('eventName');
      if (this.order[name] == undefined) {
        this.order[name] = this.max++;
        this.names.push(name);
      }
      this.data[this.order[name]] = data;
      this.id = tags.read('ejsFabricator');
    },
    onCompletion: function() {
      var r = '';
      if (!this.emittedOrder) {
        r = 'id, ' + this.names.reduce(function(a, b) { return a + ', ' + b}) + '\n';
        this.emittedOrder = true;
      }
      r += this.id + ', ' + this.data.reduce(function(a, b) { return a + ', ' + b});
      return r;
    }
  });


