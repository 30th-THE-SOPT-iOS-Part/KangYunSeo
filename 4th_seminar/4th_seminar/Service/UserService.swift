//
//  UserService.swift
//  4th_seminar
//
//  Created by 강윤서 on 2022/05/08.
//

import Foundation
import Alamofire

class UserService {
    static let shared = UserService()       // 싱글톤 객체
    private init() {}
    
    // 로그인 통신 시 사용할 함수
    func login(name: String,
               email: String,
               password: String,
               completion: @escaping (NetworkResult<Any>) -> Void)
    
    {
        // completion 클로저를 @escaping closure로 정의
        
        let url = APIConstants.loginURL     // 통신할 API 주소
        let header: HTTPHeaders = ["Content=Type" : "application/json"]     // 요청 헤더
        let body: Parameters = [            // 요청 바디
            "name": name,
            "email": email,
            "password": password
        ]
        
        // 요청서 - 통신할 API 주소, HTTP method, 요청 방식, 인코딩 방식, 요청 헤더 순
        // Request 생성
        let dataRequest = AF.request(url,
                                     method: .post,
                                     parameters: body,
                                     encoding: JSONEncoding.default,
                                     headers: header)
        
        // 서버 통신 시작 - Request 시작
        dataRequest.responseData { response in
            // 요청(Request)를 하고 넘겨받은 응답의 결과를 가지고 성공 또는 실패 분기 처리를 한다.
            switch response.result {
            case .success:
                // 성공시, 상태코드(Status Code)와 값(Value)가 넘어옴
                guard let statusCode = response.response?.statusCode else {return}
                guard let value = response.value else {return}
                let networkResult = self.judgeStatus(by: statusCode, value)
                completion(networkResult)
            
            // 실패 시에는 바로 networkFail(통신 실패)라는 신호를 알립니다.
            case .failure:
                completion(.networkFail)
            }
        }
    }
    
    // 상태 코드와 값(value, data)를 가지고 통신의 결과를 핸들링하는 함수입니다.
    private func judgeStatus(by statusCode: Int, _ data: Data) -> NetworkResult<Any> {
        switch statusCode {
        // 성공 시에는 넘겨받은 데이터를 decode(해독)하는 함수를 호출합니다.
        case 200: return isValidData(data: data)
        case 400: return .pathErr
        case 500: return .serverErr
        default: return .networkFail
        }
    }
    
    // 넘겨받은 데이터를 decode하는 함수
    // 이 때 우리가 codable을 채택해서 만들어 놓은 구조체 형식의 데이터 모델을 사용합니다.
    private func isValidData(data: Data) -> NetworkResult<Any> {
        let decoder = JSONDecoder()
        guard let decodedData = try? decoder.decode(LoginResponse.self, from: data)
        else { return .pathErr}
        
        return .success(decodedData.data as Any)
    }
}
