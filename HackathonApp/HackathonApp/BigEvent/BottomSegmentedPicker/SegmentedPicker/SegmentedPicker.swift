//
//  SegmentedPick.swift
//  HackathonApp
//
//  Created by Aleksey Sapitskiy on 20.11.2021.
//

import SwiftUI

public struct SegmentedPicker<Element, Content, Selection>: View
	where
	Content: View,
	Selection: View {

	public typealias Data = [Element]

	@State private var frames: [CGRect]
	@State private var segmentSize: CGSize = .zero
	@Binding private var selectedIndex: Data.Index?

	private let data: Data
	private let selection: () -> Selection
	private let content: (Data.Element, Bool) -> Content

	public init(_ data: Data,
				selectedIndex: Binding<Data.Index?>,
				@ViewBuilder content: @escaping (Data.Element, Bool) -> Content,
				@ViewBuilder selection: @escaping () -> Selection) {

		self.data = data
		self.content = content
		self.selection = selection
		self._selectedIndex = selectedIndex
		self._frames = State(wrappedValue: Array(repeating: .zero,
												 count: data.count))
	}

	public var body: some View {
		ZStack(
			alignment: Alignment(
				horizontal: .horizontalCenterAlignment,
				vertical: .center
		)) {

			HStack(spacing: 0) {
				ForEach(data.indices, id: \.self) { index in
					Button(action: { selectedIndex = index },
						label: { content(data[index], selectedIndex == index) }
					)
					.buttonStyle(PlainButtonStyle())
					.modifier(SizeProvidingViewModifier(viewSize: self.$segmentSize))
					.background(GeometryReader { proxy in
						Color.clear.onAppear { frames[index] = proxy.frame(in: .global) }
					})
					.alignmentGuide(
						.horizontalCenterAlignment,
						isActive: selectedIndex == index
					) { dimensions in
						dimensions[HorizontalAlignment.center]
					}
				}
			}

			if let selectedIndex = selectedIndex {
				selection()
					.frame(width: frames[selectedIndex].width,
						   height: frames[selectedIndex].height)
					.alignmentGuide(.horizontalCenterAlignment) { dimensions in
						dimensions[HorizontalAlignment.center]
					}
			}

		}
	}
}
