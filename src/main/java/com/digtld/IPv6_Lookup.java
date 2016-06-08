package com.digtld;

import org.xbill.DNS.*;

/**
 * Created by j on 01.06.2016.
 */
public class IPv6_Lookup {
    private String _domain;

    public IPv6_Lookup(String domain) {
        _domain = domain;
    }

    public String lookup() throws TextParseException {
        try {
            Record[] records = new Lookup(_domain, Type.A6).run();
            String output = "";
            for (int i = 0; i < records.length; i++) {
                A6Record a6Record = (A6Record) records[i];
                output += "Host " + a6Record.toString();
            }
            return output;
        } catch (final Exception e) { return "Host unreachable";}
    }
}
