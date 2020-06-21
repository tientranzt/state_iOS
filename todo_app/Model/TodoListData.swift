//
//  TodoListData.swift
//  todo_app
//
//  Created by tientran on 6/21/20.
//  Copyright © 2020 tientran. All rights reserved.
//

import Foundation


class TodoListData: ObservableObject {
    @Published var list : [Todo] = []
}
