//
//  RankingsView.swift
//  Triathlon
//
//  Created by Duff Neubauer on 6/29/23.
//

import SwiftUI
import TriathlonKit

struct RankingsView: View {
    
    @EnvironmentObject var store: Store
    
    var body: some View {
        if store.rankings == nil {
            ProgressView()
                .task {
                    try? await store.refreshAthleteRankings()
                }
        } else {
            VStack {
                Picker("Athlete Gender", selection: $store.selectedGender) {
                    Text("Women's").tag(Gender.female)
                    Text("Men's").tag(Gender.male)
                }
                .pickerStyle(.segmented)
                .frame(width: 250)
                
                List {
                    
                    ForEach(store.rankings!.sorted()) { rankingsCategory in
                        Section {
                            HStack {
                                Text("1st")
                                    .padding(.trailing)
                                
                                HStack {
                                    Circle()
                                    
                                    VStack(alignment: .leading) {
                                        Text("Jane Doe")
                                        HStack {
                                            Rectangle()
                                                .frame(width: 40)
                                            Text("·")
                                            Text("100,000 PTS")
                                        }
                                    }
                                }
                            }
                            .frame(height: 60)
                            
                            HStack {
                                Text("2nd")
                                    .padding(.trailing)
                                
                                HStack {
                                    Circle()
                                    
                                    VStack(alignment: .leading) {
                                        Text("Jane Doe")
                                        HStack {
                                            Rectangle()
                                                .frame(width: 40)
                                            Text("·")
                                            Text("100,000 PTS")
                                        }
                                    }
                                }
                            }
                            .frame(height: 60)
                            
                            HStack {
                                Text("3rd")
                                    .padding(.trailing)
                                
                                HStack {
                                    Circle()
                                    
                                    VStack(alignment: .leading) {
                                        Text("Jane Doe")
                                        HStack {
                                            Rectangle()
                                                .frame(width: 40)
                                            Text("·")
                                            Text("100,000 PTS")
                                        }
                                    }
                                }
                            }
                            .frame(height: 60)
                        } header: {
                            Text(rankingsCategory.name)
                        }

                    }
                }
                .listStyle(.plain)
                
                Spacer()
            }
        }
    }
}

struct RankingsView_Previews: PreviewProvider {
    static var previews: some View {
        RankingsView()
    }
}
