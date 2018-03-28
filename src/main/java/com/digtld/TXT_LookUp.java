package com.digtld;

/**
 * Created by j on 17.05.2016.
 */
import org.xbill.DNS.*;
public class TXT_LookUp {
    private String _domain;

    public TXT_LookUp(String TXTrec) {
        _domain = TXTrec;
    }

    public String lookup() throws TextParseException {
        try {
            Record[] records = new Lookup(_domain, Type.TXT).run();
            String output = "";
            for (int i = 0; i < records.length; i++) {
                TXTRecord TXTrec = (TXTRecord) records[i];
                output += TXTrec.toString();
            }
            return output;
        } catch (final Exception e) { return "Not found";}
    }
}
