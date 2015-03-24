//
//  ViewController.m
//  OOParaNoobs2
//
//  Created by Lohann Paterno Coutinho Ferreira on 23/03/15.
//  Copyright (c) 2015 Lohann Paterno Coutinho Ferreira. All rights reserved.
//

#import "ViewController.h"
#import "Conta.h"

@interface ViewController ()

@end

@implementation ViewController

NSString *jogador;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Conta *jamanta = [[Conta alloc] init];
    jamanta.saldo = 5000000;
    
    [jamanta exibirSaldo]; // imprime no console
    
    Conta *paulo = [[Conta alloc] init];
    paulo.saldo = 0.20;
    
    [paulo exibirSaldo];
    [jamanta transferirParaConta:paulo valor:100.99];
    [paulo exibirSaldo];
    [jamanta exibirSaldo];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
