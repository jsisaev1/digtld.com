package com.digtld;

/**
 * Created by Evgeny on 18.05.2016.
 */

import de.malkusch.whoisApi.RecoverableWhoisApiException;
import de.malkusch.whoisApi.WhoisApi;

public class WHOIS_LookUP {

    WhoisApi whoisApi = new WhoisApi("dwOnWx2jGDmshzYu5lqpyxiBCi6Op1M7eHxjsnD9YceiZRiyuJ");
    private String _domain;
    public WHOIS_LookUP(String whois) {
        _domain = whois;
    }
    public String lookup() throws RecoverableWhoisApiException {
       try {
           return whoisApi.whois(_domain);

       } catch   (final Exception e) { return "Not found";}
    }
}

