//
//  MainListView.swift
//  SwiftUIMemo
//
//  Created by KIMMIMI on 2022/10/31.
//

import SwiftUI

struct MainListView: View {
    @EnvironmentObject var store: MemoStore
    
    var body: some View {
        NavigationView {
            List(store.list){ memo in
                VStack(alignment: .leading) {
                    Text(memo.content)
                        .font(.body)
                        .lineLimit(1)
                    
                    Text(memo.createdAt, style: .date)
                        .font(.callout)
                        .foregroundColor(.secondary)
                }
            }
            .listStyle(.plain)
            .navigationTitle("내 메모")
        }
    }
}

struct MainListView_Previews: PreviewProvider {
    static var previews: some View {
        MainListView()
            .environmentObject(MemoStore())
    }
}
