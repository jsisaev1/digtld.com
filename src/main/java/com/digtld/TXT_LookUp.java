package com.digtld;

/**
 * Created by j on 17.05.2016.
 */
import org.xbill.DNS.*;
public class TXT_LookUp {
    private String _domain;

    public TXT_LookUp(String domain) {
        _domain = domain;
    }

    public String lookup() throws TextParseException {
        try {
            Record[] records = new Lookup(_domain, Type.TXT).run();
            String output = "";
            for (int i = 0; i < records.length; i++) {
                TXTRecord txtrec = (TXTRecord) records[i];
                output += "Host " + txtrec.toString();
            }
            return output;
        } catch (final Exception e) { return "Host unreachable";}
    }
}
