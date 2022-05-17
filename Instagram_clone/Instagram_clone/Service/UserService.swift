//
//  UserService.swift
//  Instagram_clone
//
//  Created by 강윤서 on 2022/05/11.
//

import Foundation
import Alamofire

class UserService {
    static let shared = UserService()
    private init() {}
    
    func login(name: String,
               email: String,
               password: String,
               completion: @escaping (NetworkResult<Any>) -> Void)
    {
        let url = APIConstants.loginURL
        let header: HTTPHeaders = ["Content-Type" : "application/json"]
        let body: Parameters = [
            "name": name,
            "email": email,
            "password": password
        ]
        
        let dataReqeust = AF.request(url,
                                     method: .post,
                                     parameters: body,
                                     encoding: JSONEncoding.default,
                                     headers: header)
        
        dataReqeust.responseData { response in
            switch response.result {
            case .success:
                guard let statusCode = response.response?.statusCode else { return }
                guard let value = response.value else { return }
                let networkResult = self.judgeStatus(by: statusCode, value)
                completion(networkResult)
                
            case .failure:
                completion(.networkFail)
            }
         }
    }
    
    // 상태 코드와 값(value, data)를 가지고 통신의 결과를 핸들링하는 함수
    private func judgeStatus(by statusCode: Int, _ data: Data) -> NetworkResult<Any> {
        switch statusCode {
            // 성공 시에는 넘겨받은 데이터를 decode하는 함수 호출
        case 200: return isValidData(data: data)
        case 400: return .pathErr
        case 500: return .serverErr
        default: return .networkFail
        }
    }
    
    // 성공 시 넘겨받을 데이터를 decode하는 함수
    // codable을 채택해 만들어 놓은 구조체 형식의 데이터 모델 사용
    private func isValidData(data: Data) -> NetworkResult<Any> {
        let decoder = JSONDecoder()
        guard let decodedData = try? decoder.decode(LoginResponse.self, from: data)
        else {return .pathErr}
        
        return .success(decodedData as Any)
    }
}
