//
//  LocalNetworkStub.swift
//  FindCVSAppTests
//
//  Created by 최지연/클라이언트 on 2023/06/02.
//

import Foundation
import RxSwift
import Stubber

@testable import FindCVS

class LocalNetworkStub: LocalNetwork {
    override func getLocation(by mapPoint: MTMapPoint) -> Single<Result<LocationData, URLError>> {
        return Stubber.invoke(getLocation, args: mapPoint)
    }
}
