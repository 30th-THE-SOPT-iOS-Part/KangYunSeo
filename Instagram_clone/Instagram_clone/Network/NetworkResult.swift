//
//  NetworkResult.swift
//  Instagram_clone
//
//  Created by 강윤서 on 2022/05/11.
//

// 서버 통신의 결과를 핸들링하기 위한 열거형

enum NetworkResult<T> {
    case success(T)         // 서버 통신 성공
    case requestErr(T)      // 요청 에러가 발생
    case pathErr            // 경로 에러
    case serverErr          // 서버의 내부 에러
    case networkFail        // 네트워크 연결 실패
}
