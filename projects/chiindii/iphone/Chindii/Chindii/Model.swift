//
//  ConfigModel.swift
//  Chindii
//
//  Created by Warren Janssens on 2016-01-24.
//  Copyright © 2016 Warren Janssens. All rights reserved.
//

import Foundation
import CoreBluetooth

protocol ModelDelegate : NSObjectProtocol {
	func debugChanged()
	func batteryChanged()
	func configChanged()
	func peripheralsChanged()
}

struct PID {
	var p : Float = 0.0
	var i : Float = 0.0
	var d : Float = 0.0
}

struct RateConfig {
	var x = PID()
	var y = PID()
	var z = PID()
}

struct AngleConfig {
	var x = PID()
	var y = PID()
	var z = PID()
}
struct CompConfig {
	var x : Float = 0.0
	var y : Float = 0.0
}

struct Vector {
	var x : Float = 0.0
	var y : Float = 0.0
	var z : Float = 0.0
}

let sharedModel = Model();

class Model {
	var delegate : ModelDelegate?
	
	var peripherals = [CBPeripheral]() {
		didSet {
			delegate?.peripheralsChanged()
		}
	}

	// flight
	var armed : Bool = false
	var angleSp = Vector()
	var battery : UInt8 = 0 {
		didSet {
			delegate?.batteryChanged()
		}
	}
	var debug = "" {
		didSet {
			delegate?.debugChanged()
		}
	}

	// config
	var throttleSp : Float = 0.0
	var rateSp = Vector()
	var rateConfig = RateConfig() {
		didSet {
			delegate?.configChanged()
		}
	}
	var angleConfig = AngleConfig() {
		didSet {
			delegate?.configChanged()
		}
	}
	var compConfig = CompConfig() {
		didSet {
			delegate?.configChanged()
		}
	}

	init() {
		
	}
}
