//
//  Conta.h
//  OOParaNoobs2
//
//  Created by Lohann Paterno Coutinho Ferreira on 23/03/15.
//  Copyright (c) 2015 Lohann Paterno Coutinho Ferreira. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Conta : NSObject

@property (weak, nonatomic) NSString* cliente;
@property double saldo;

- (void)exibirSaldo;

- (void)sacar:(double)valor;

- (void)depositar:(double)valor;

- (void)transferirParaConta:(Conta*)conta
                      valor:(double)valor;

@end
