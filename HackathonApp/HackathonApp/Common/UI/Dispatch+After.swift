//
//  Dispatch+After.swift
//  HackathonApp
//
//  Created by Aleksey Sapitskiy on 21.11.2021.
//

import Foundation

public func after(
	_ delay: TimeInterval,
	execute block: @escaping () -> Void
) {
	let item = DispatchWorkItem(
		qos: .userInteractive,
		flags: [],
		block: block
	)
	DispatchQueue.main.asyncAfter(
		deadline: .now() + delay,
		execute: item
	)

}
