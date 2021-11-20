//
//  HorizontalAlignment.swift
//  HackathonApp
//
//  Created by Aleksey Sapitskiy on 20.11.2021.
//

import Foundation

import SwiftUI

extension HorizontalAlignment {
	private enum CenterAlignmentID: AlignmentID {
		static func defaultValue(in dimension: ViewDimensions) -> CGFloat {
			return dimension[HorizontalAlignment.center]
		}
	}

	static var horizontalCenterAlignment: HorizontalAlignment {
		HorizontalAlignment(CenterAlignmentID.self)
	}
}
