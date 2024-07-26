//
//  Journey4ViewModel.swift
//  Journey4
//
//  Created by Gustavo Araujo Santos on 26/07/24.
//

import Foundation

protocol Journey4ViewModelDelegate: AnyObject {
    func finishJourney()
}

class Journey4ViewModel {
    
    weak var delegate: Journey4ViewModelDelegate?
    
    func finishJourney() {
        delegate?.finishJourney()
    }
}
