/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package projectpackage;

import java.util.Random;

/**
 *
 * @author lenovo
 */
public class CaptchaGenerator {
    
    public String getCode()
    {
        String capcode = "";
        capcode = capcode + (char)randInt(65,90);
        capcode = capcode + (char)randInt(65,90);
        capcode = capcode + (char)randInt(48,57);
        capcode = capcode + (char)randInt(48,57);
        capcode = capcode + (char)randInt(97,120);
        capcode = capcode + (char)randInt(97,120);
        return capcode;
    }
    
    public int randInt( int min , int max )                           // user defined method
    {
        int randNumber;
        Random r = new Random();                                      // random is the class present in java.util
        randNumber = r.nextInt((max-min)+1)+min;                      // nextInt is the method whiich takes only one parameter
        return randNumber;
    }
            
}
