(function(window) {
    'use strict';

    window.counters = {
		metroid_dna: 0,
		
        inc: limit(1, {
            metroid_dna: { min: 0, max: 12 },
        }, true),
        dec: limit(-1, {
            metroid_dna: { min: 0, max: 12 },
        }, true)
    };
	
    function limit(delta, limits, freeze) {
        return function(current) {
            var value = counters[current],
                max = limits[current].max,
                min = limits[current].min || 0;
            value += delta;
			if (freeze === true) {
				if (value > max) value = max;
				if (value < min) value = min;
			} else {
				if (value > max) value = min;
				if (value < min) value = max;
			}
            return counters[current] = value;
        };
    }
}(window));
