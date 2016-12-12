String.prototype.toUnderscore = function(){
	return this.replace(/([A-Z])/g, function($1){return "_"+$1.toLowerCase();});
};

var names = [
  "fieldName01",
  "fieldName02",
];

names.forEach(function(element) {
  console.log(element.toUnderscore());
});