//
//  MainListView.swift
//  SwiftUIMemo
//
//  Created by KIMMIMI on 2022/10/31.
//

import SwiftUI

struct MainListView: View {
    @EnvironmentObject var store: MemoStore
    
    @State private var showComposer:Bool = false
    
    var body: some View {
        NavigationView {
            List(store.list){ memo in
                NavigationLink {
                    DetailView(memo: memo)
                } label: {
                    MemoCell(memo: memo)
                }
            }
            .listStyle(.plain)
            .navigationTitle("내 메모")
            .toolbar(content: {
                Button {
                    showComposer = true
                } label: {
                    Image(systemName: "plus")
                }
            })
            
            .sheet(isPresented: $showComposer) {
                ComposeView()
            }
        }
    }
}

struct MainListView_Previews: PreviewProvider {
    static var previews: some View {
        MainListView()
            .environmentObject(MemoStore())
    }
}
