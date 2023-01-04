//
//  TodoList.swift
//  TodoList_CustomCell
//
//  Created by 윤병은 on 2023/01/04.
//

import Foundation

struct TodoList {
    var title: String?
    var content: String?
    var date: String?
    var isChk: Bool?
}

extension TodoList {
    static var list = [
        TodoList(title: "iOS 공부", content: "CustomCell로 토이 프로젝트를 제작한다.", date: "2023-01-04", isChk: true),
        TodoList(title: "하체 및 복근 운동",content: "핵 스쿼트, 컨벤셔널 데드리프트, 크런치", date: "2023-01-04",isChk: true),
        TodoList(title: "구인 공고 확인 및 이력서 작성",content: "XX업체 구인 공고를 확인하고 자기소개서 문항 작성하기",date: "2023-01-04",isChk: false)
    ]
}
