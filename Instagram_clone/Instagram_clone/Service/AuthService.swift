//
//  AuthService.swift
//  Instagram_clone
//
//  Created by 강윤서 on 2022/06/01.
//

import Foundation
import Alamofire

class AuthService {
    static let shared = AuthService()
    private init() {}
    
    func login(email: String,
               password: String,
               completion: @escaping (NetworkResult<Any>) -> Void)
    {
        let url = APIConstants.loginURL
        let header: HTTPHeaders = ["Content-Type" : "application/json"]
        let body: Parameters = [
            "email": email,
            "password": password
        ]
        
        let dataRequest = AF.request(url,
                                     method: .post,
                                     parameters: body,
                                     encoding: JSONEncoding.default,
                                     headers: header)
        
        dataRequest.responseData { response in
            switch response.result {
            case .success:
                guard let statusCode = response.response?.statusCode else { return }
                guard let value = response.value else { return }
                let networkResult = self.judgeLoginStatus(by: statusCode, value)
                completion(networkResult)
                
            case .failure:
                completion(.networkFail)
            }
        }
    }
    
    func signup(name: String,
                email: String,
                password: String,
                completion: @escaping (NetworkResult<Any>) -> Void)
    {
        let url = APIConstants.signupURL
        let header: HTTPHeaders = ["Content-Type" : "application/json"]
        let body: Parameters = [
            "name": name,
            "email": email,
            "password": password
        ]
        
        let dataRequest = AF.request(url,
                                     method: .post,
                                     parameters: body,
                                     encoding: JSONEncoding.default,
                                     headers: header)
        
        dataRequest.responseData { response in
            switch response.result {
            case .success:
                guard let statusCode = response.response?.statusCode else { return }
                guard let value = response.value else { return }
                
                let networkResult = self.judgeSignupStatus(by: statusCode, value)
                completion(networkResult)
                
            case .failure:
                completion(.networkFail)
            }
        }
    }
    
    private func judgeLoginStatus(by statusCode: Int, _ data: Data) -> NetworkResult<Any> {
        switch statusCode {
        // 성공 시에는 넘겨받은 데이터를 decode(해독)하는 함수를 호출합니다.
        case 200..<300: return isVaildLoginData(data: data)
        case 400..<500: return .pathErr
        case 500: return .serverErr
        default: return .networkFail
        }
    }
    
    private func judgeSignupStatus(by statusCode: Int, _ data: Data) -> NetworkResult<Any> {
        switch statusCode {
        // 성공 시에는 넘겨받은 데이터를 decode(해독)하는 함수를 호출합니다.
        case 200..<300: return isVaildSignupData(data: data)
        case 400..<500: return .pathErr
        case 500: return .serverErr
        default: return .networkFail
        }
    }
    
    // 성공 시 넘겨받은 데이터를 decode하는 함수
    // 이 때 우리가 codable을 채택해서 만들어 놓은 구조체 형식의 데이터 모델을 사용
    private func isVaildLoginData(data: Data) -> NetworkResult<Any> {
        let decoder = JSONDecoder()
        guard let decodedData = try? decoder.decode(LoginResponse.self, from: data)
        else { return .pathErr }
        
        return .success(decodedData as Any)
    }
    
    private func isVaildSignupData(data: Data) -> NetworkResult<Any> {
        let decoder = JSONDecoder()
        guard let decodedData = try? decoder.decode(SignupResponse.self, from: data)
        else { return .pathErr }
        
        return .success(decodedData as Any)
    }
}
