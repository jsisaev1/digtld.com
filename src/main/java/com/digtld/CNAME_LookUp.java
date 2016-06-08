package com.digtld;

import org.xbill.DNS.*;

/**
 * Created by j on 17.05.2016.
 */
public class CNAME_LookUp {
    private String _domain;

    public CNAME_LookUp(String domain) {
        _domain = domain;
    }

    public String lookup() throws TextParseException {
        try {
            Record[] records = new Lookup(_domain, Type.CNAME).run();
            String output = "";
            for (int i = 0; i < records.length; i++) {
                CNAMERecord cnameRecord = (CNAMERecord) records[i];
                output += "Host " + cnameRecord.toString();
            }
            return output;
        } catch (final Exception e) { return "Host unreachable";}
    }
}
