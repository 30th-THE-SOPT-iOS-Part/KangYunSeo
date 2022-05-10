//
//  APIConstants.swift
//  4th_seminar
//
//  Created by 강윤서 on 2022/05/08.
//

import Foundation

struct APIConstants {
    // MARK: - Base URL(공통적인 경로)
    static let baseURL = "http://13.124.62.236"
    
    // MARK: - Feature URL
    // loginURL = "http://13.124.62.236/auth/signin"
    // loginURL 얻고 싶을 때 : APIConstants.loginURL로 접근
    static let loginURL = baseURL + "/auth/signin"
}
