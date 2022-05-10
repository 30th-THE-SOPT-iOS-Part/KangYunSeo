//
//  LoginModel.swift
//  4th_seminar
//
//  Created by 강윤서 on 2022/05/08.
//

import Foundation

// 서버 통신 결과로 받는 응답 바디(response body)를 디코딩할 데이터 모델
struct LoginResponse: Codable {
    let status: Int
    let success: Bool?
    let message: String
    let data: LoginData?
}

struct LoginData: Codable {
    let name: String
    let email: String
}
