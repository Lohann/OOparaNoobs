//
//  Conta.m
//  OOParaNoobs2
//
//  Created by Lohann Paterno Coutinho Ferreira on 23/03/15.
//  Copyright (c) 2015 Lohann Paterno Coutinho Ferreira. All rights reserved.
//

#import "Conta.h"

@implementation Conta

@synthesize saldo = _saldo;
@synthesize cliente = _cliente;

- (void)exibirSaldo
{
    NSLog(@"Saldo: R$%f", _saldo);
}

- (void)sacar:(double)valor
{
    _saldo -= valor;
    NSLog(@"Sacou: R$%f", valor);
}

- (void)depositar:(double)valor
{
    _saldo += valor;
    NSLog(@"Depositou: R$%f", valor);
}

- (void)transferirParaConta:(Conta *)destinatario
                      valor:(double)valor
{
    [self sacar:valor];
    [destinatario depositar:valor];
    NSLog(@"Transferiu: R$%f", valor);
}

@end
