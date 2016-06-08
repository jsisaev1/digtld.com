package com.digtld;

/**
 * Created by j on 16.05.2016.
 */

import java.net.InetAddress;
import java.net.UnknownHostException;

public class A_LookUp {
    private String _domain;
    public A_LookUp(String domain) {
        _domain = domain;
    }
    public String lookup() {
        try {
            InetAddress address = InetAddress.getByName(_domain);
            return address.getHostAddress();
        } catch (UnknownHostException e) {
            return "Host unreachable";
        }
    }

}