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
	
    window.set_version = function(large) {
		if (large == true) {
			document.title = "MDR Item Tracker " + version + " (Large) - DesertEagleDerek";
		} else {
			document.title = "MDR Item Tracker " + version + " - DesertEagleDerek";
		}
    };

	window.addEventListener('contextmenu', function (e) {
		e.preventDefault();
	}, false);
	
}(window));
