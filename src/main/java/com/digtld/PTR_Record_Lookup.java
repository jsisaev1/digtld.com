package com.digtld;

/**
 * Created by j on 19.05.2016.
 */
import org.xbill.DNS.*;
import java.net.InetAddress;

public class PTR_Record_Lookup {
    private String _domain;

    public PTR_Record_Lookup(String ptrrec) {
        _domain = ptrrec;
    }

    public String lookup() throws TextParseException {
        try {
            Record[] records = new Lookup(_domain, Type.PTR).run();
            String output = "";
            for (int i = 0; i < records.length; i++) {
                PTRRecord ptrrecord = (PTRRecord) records[i];
                output +=  ptrrecord.toString();
            }
            return output;
        } catch (final Exception e) { return "Not found";}
    }
}
