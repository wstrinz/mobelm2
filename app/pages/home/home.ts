import {Component, AfterViewInit} from '@angular/core';
import {NavController} from 'ionic-angular';

@Component({
  templateUrl: 'build/pages/home/home.html'
})
export class HomePage implements AfterViewInit {
  constructor(private navCtrl: NavController) {

  }

  ngAfterViewInit() {
    window['loadElm'].call();
  }
}
