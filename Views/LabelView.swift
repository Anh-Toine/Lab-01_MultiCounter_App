//
//  LabelView.swift
//  Lab-01_MultiCounter
//
//  Created by Lukas Nguyen on 2022-09-02.
//

import SwiftUI

struct LabelView: View {
	var labelText: String
    var body: some View {
		Text(labelText)
			.font(.caption)
			.fontWeight(.bold)
			.foregroundColor(Color(.systemGray))
			.kerning(2)
			.padding(.top, 13)
			.padding(.bottom, 13)
    }
}

struct LabelView_Previews: PreviewProvider {
    static var previews: some View {
        LabelView(labelText: "DEFAULT")
    }
}
