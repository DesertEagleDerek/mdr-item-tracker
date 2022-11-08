(function(window) {
    'use strict';

    window.start = function() {
		toggle('pulse_radar');
    };

    window.toggle = function(label) {
        var node = document.getElementsByClassName(label)[0];
        if ((typeof items[label]) === 'boolean') {
            items[label] = !items[label];
			node.classList[items[label] ? 'add' : 'remove']('active');
        } else {
            var value = items.inc(label);
            node.className = node.className.replace(/ ?active-\w+/, '');
			node.classList.add('active-' + value);
        }
    };
	
    window.countUp = function(label) {		
        var node = document.getElementById(label);
        var value = counters.inc(label);
		node.textContent = value;
    };
	
    window.countDown = function(label) {
        var node = document.getElementById(label);
        var value = counters.dec(label);
		node.textContent = value;
    };
	
    window.set_version = function(size) {
		var name = "MDR Item Tracker";
		var author = "DesertEagleDerek";
		if (size == 1) {
			document.title = name + " " + version + " (Large) - " + author;
		} else if (size == 2) {
			document.title = name + " " + version + " (Quad) - " + author;
		} else if (size == 3) {
			document.title = name + " " + version + " (Vertical) - " + author;
		} else {
			document.title = name + " " + version + " - " + author;
		}
    };

	window.addEventListener('contextmenu', function (e) {
		e.preventDefault();
	}, false);
	
}(window));
