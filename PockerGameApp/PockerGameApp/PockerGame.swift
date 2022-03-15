//
//  PockerGame.swift
//  PockerGameApp
//
//  Created by Jason on 2022/03/11.
//

import Foundation

//포커게임의 역할 -> 카드와 카드덱의 속성 모두를 포함해야한다.
//-> 7카드-스터드 방식과 5카드-스터드 방식 모두를 지원하게끔 선택지를 준다.
//-> 카드 게임 종류와 참가자 수에 따라 적절하게 동작해야한다.
//-> XCTest를 위한 테스트 타깃을 추가한다.
//-> 테스트 코드에서 PockerGame 메소드를 호출해서 동작을 확인.

class PockerGame {
    private var player:Player = Player()
    private var dealer:Dealer = Dealer()
    private var playerCount:Int
    private var makeRandomParticipant = Int.random(in: 1...4) //플레이어 1~4명 랜덤생성
    
    private let stud: Stud
    
    //MARK: dealer에게 어떤 스터드를 선택할 것인지 선택지를 제공해준다.
    enum Stud: Int {
        case seven = 7
        case five = 5
    }
    
    //MARK: 초기화
    init(stud: Stud, playerCount: Int ) {
        self.stud = stud
        self.playerCount = Int.random(in: 1...4)
    }
    
    //MARK: 카드게임 종류와 참가자수에 따라 적절하게 동작
    func playNow() {
        
    }
    
    
}
