//
//  ContentView.swift
//  instantemail
//
//  Created by Mriyam Tamuli on 22/06/24.
//
import SwiftUI

struct MainView: View {
    @State private var customDomains: [CustomDomain] = []

    var body: some View {
        NavigationView {
            List {
                ForEach(customDomains, id: \.name) { domain in
                    NavigationLink(destination: DomainDetailView(domain: domain, updateDomain: updateDomain)) {
                        Text(domain.name)
                    }
                }
                .onDelete(perform: deleteDomain)
            }
            .navigationBarTitle("Custom Domain Email Alias Manager")
            .navigationBarItems(trailing: NavigationLink(destination: AddEditDomainView(onSave: addDomain)) {
                Image(systemName: "plus")
            })
        }
    }

    private func deleteDomain(at offsets: IndexSet) {
        customDomains.remove(atOffsets: offsets)
    }

    private func addDomain(_ domain: CustomDomain) {
        customDomains.append(domain)
    }

    private func updateDomain(_ domain: CustomDomain) {
        if let index = customDomains.firstIndex(where: { $0.name == domain.name }) {
            customDomains[index] = domain
        }
    }
}

#Preview {
    MainView()
}
