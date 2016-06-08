package com.digtld;

/**
 * Created by j on 16.05.2016.
 */

import org.xbill.DNS.*;

public class MXLookUp {
    private String _domain;
    public MXLookUp(String domain) {
        _domain = domain;
    }
    public String lookup() throws TextParseException {
        Record[] records = new Lookup(_domain, Type.MX).run();
        String output = "";
        for (int i = 0; i < records.length; i++)
        {
            MXRecord mx = (MXRecord) records[i];
            output += "Host " + mx.getTarget() + " has preference " + mx.getPriority() + "<br>";
        }
        return output;
    }
}
