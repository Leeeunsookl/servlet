package com.ohgiraffers.menu.mypage;

public class MenuPriceCalculator {
    public int calcOrderPrice(String menuName, int amount){
        int orderPrice=0;
        switch (menuName){
            case"kimbap": orderPrice = 5000 * amount; break;
            case"pasta" : orderPrice = 18000 * amount; break;
            case"soup" : orderPrice = 13000 * amount; break;
        }
        return orderPrice;
    }
}
