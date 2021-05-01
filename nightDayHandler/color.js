function LinksSetColor(color) {
  var alist = document.querySelectorAll('a');
  var i = 0 ;
  while (i < alist.length) {
    alist[i].style.color = color;
    i = i + 1 ;
  }
}

  var Body = {
    setColor : function(color) {
      document.querySelector('body').style.color = color;
  },
    setbackgroundColor : function(color){
      document.querySelector('body').style.backgroundColor = color;
    }
  }
  function nightDayHandler(self) {
//        var target = document.querySelector('body');
    if (self.value === 'night') {
      Body.setColor('white');
      Body.setbackgroundColor('black');
      self.value = "day";
      LinksSetColor('moccasin');
    }
    else {
      Body.setColor('black');
      Body.setbackgroundColor('white');
      self.value = "night";
      LinksSetColor('slategray');
    }
  }
