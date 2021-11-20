//
//  ClampingWrapper.swift
//  HackathonApp
//
//  Created by Aleksey Sapitskiy on 20.11.2021.
//

@propertyWrapper
struct Clamping<Value: Comparable> {
	var value: Value
	let range: ClosedRange<Value>

	init(initialValue value: Value, _ range: ClosedRange<Value>) {
		precondition(range.contains(value))
		self.value = value
		self.range = range
	}

	var wrappedValue: Value {
		get { value }
		set { value = min(max(range.lowerBound, newValue), range.upperBound) }
	}
}
