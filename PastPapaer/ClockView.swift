//
//  ClockView.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/14.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct ClockView: View {

    let viewModel = ClockViewModel()

    var body: some View {
        VStack {
            HStack(spacing: 15) {
                HStack(spacing: 5) {
                    FlipView(viewModel: viewModel.flipViewModels[0])
                    FlipView(viewModel: viewModel.flipViewModels[1])
                }
                Text(":")
                    .fontWeight(.semibold)
                .font(.system(size: 30))
                HStack(spacing: 5) {
                    FlipView(viewModel: viewModel.flipViewModels[2])
                    FlipView(viewModel: viewModel.flipViewModels[3])
                }
                Text(":")
                    .fontWeight(.semibold)
                    .font(.system(size: 30))
                HStack(spacing: 5) {
                    FlipView(viewModel: viewModel.flipViewModels[4])
                    FlipView(viewModel: viewModel.flipViewModels[5])
                }
            }
            Text("Stay hungry Stay foolish")
                .padding(.top)
        }
    }

}

struct FlipView: View {

    init(viewModel: FlipViewModel) {
        self.viewModel = viewModel
    }

    @ObservedObject var viewModel: FlipViewModel

    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                SingleFlipView(text: viewModel.newValue ?? "", type: .top)
                SingleFlipView(text: viewModel.oldValue ?? "", type: .top)
                    .rotation3DEffect(.init(degrees: self.viewModel.animateTop ? -90 : .zero),
                                      axis: (1, 0, 0),
                                      anchor: .bottom,
                                      perspective: 0.5)
            }
            Color.separator
                .frame(height: 1)
            ZStack {
                SingleFlipView(text: viewModel.oldValue ?? "", type: .bottom)
                SingleFlipView(text: viewModel.newValue ?? "", type: .bottom)
                    .rotation3DEffect(.init(degrees: self.viewModel.animateBottom ? .zero : 90),
                                      axis: (1, 0, 0),
                                      anchor: .top,
                                      perspective: 0.5)
            }
        }
            .fixedSize()
    }

}

struct SingleFlipView: View {

    init(text: String, type: FlipType) {
        self.text = text
        self.type = type
    }

    var body: some View {
        Text(text)
            .font(.system(size: 40))
            .fontWeight(.heavy)
            .foregroundColor(.textColor)
            .fixedSize()
            .padding(type.padding, -20)
            .frame(width: 15, height: 20, alignment: type.alignment)
            .padding(type.paddingEdges, 10)
            .clipped()
            .background(Color.flipBackground)
            .cornerRadius(4)
            .padding(type.padding, -4.5)
            .clipped()
    }

    enum FlipType {
        case top
        case bottom

        var padding: Edge.Set {
            switch self {
            case .top:
                return .bottom
            case .bottom:
                return .top
            }
        }

        var paddingEdges: Edge.Set {
            switch self {
            case .top:
                return [.top, .leading, .trailing]
            case .bottom:
                return [.bottom, .leading, .trailing]
            }
        }

        var alignment: Alignment {
            switch self {
            case .top:
                return .bottom
            case .bottom:
                return .top
            }
        }

    }

    // MARK: - Private

    private let text: String
    private let type: FlipType

}

