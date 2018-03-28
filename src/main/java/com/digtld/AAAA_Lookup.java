package com.digtld;

/**
 * Created by j on 17.05.2016.
 */
import org.xbill.DNS.*;
public class AAAA_Lookup {
    private String _domain;

    public AAAA_Lookup(String ipv66) {
        _domain = ipv66;
    }

    public String lookup() throws TextParseException {
        try {
            Record[] records = new Lookup(_domain, Type.AAAA).run();
            String output = "";
            for (int i = 0; i < records.length; i++) {
                AAAARecord aaaarec = (AAAARecord) records[i];
                output +=  aaaarec.toString();
            }
            return output;
        } catch (final Exception e) { return "Not found";}
    }
}

