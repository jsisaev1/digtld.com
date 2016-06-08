package com.digtld;

/**
 * Created by j on 17.05.2016.
 */
import org.xbill.DNS.*;
public class AAAA_Lookup {
    private String _domain;

    public AAAA_Lookup(String domain) {
        _domain = domain;
    }

    public String lookup() throws TextParseException {
        try {
            Record[] records = new Lookup(_domain, Type.AAAA).run();
            String output = "";
            for (int i = 0; i < records.length; i++) {
                AAAARecord aaaarec = (AAAARecord) records[i];
                output += "Host " + aaaarec.toString();
            }
            return output;
        } catch (final Exception e) { return "Host unreachable";}
    }
}

