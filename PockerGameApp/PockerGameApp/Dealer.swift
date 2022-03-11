//
//  Dealer.swift
//  PockerGameApp
//
//  Created by Jason on 2022/03/09.
//

import Foundation

//딜러의 역할 -> 카드 나눠주기 -> 카드(class)를 나눠주려면? -> 카드덱(struct)을 갖고있어야함
//-> 딜러 또한 struct을 사용 -> 이유는 카드덱의 rawValue를 그대로 사용하는게 관리측면에서 편리하다고 생각
//포커 딜러가 나눠줄 수 있는 게임 방식을 선택 -> 7카드-스터드 or 5카드-스터드 Ok
//-> 딜러의 이름은 없다. -> 카드를 한 번 나눠준 카드는 다시 덱에 넣지않도록 한다.
//-> 카드 개수나 참가자 인원에 대한 입력을 구현할 필요없다.
struct Dealer {
    private var cardDeck = Deck()
    
    //MARK: 딜러가 나눠줄 수 있는 게임 방식 선택
    func chooseAGame() -> Int {
        //print("> 플레이하실 포커게임을 선택하세요.(7스터드 = 7, 5스터드 = 5를 입력)
        let chooseGameNumber = Int(readLine()!)!
        
        // 현재는 이렇게 진행하고 return으로 함수를 호출하는 식으로 진행할 예정
        if chooseGameNumber == 7 {
            return 7
        } else {
            return 5
        }
    }
    
}