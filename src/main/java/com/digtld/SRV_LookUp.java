package com.digtld;

import org.xbill.DNS.*;

/**
 * Created by j on 31.05.2016.
 */
public class SRV_LookUp {
    private String _domain;

    public SRV_LookUp(String domain) {
        _domain = domain;
    }

    public String lookup() throws TextParseException {
        try {
            Record[] records = new Lookup(_domain, Type.SRV).run();
            String output = "";
            for (int i = 0; i < records.length; i++) {
                SOARecord soaRecord = (SOARecord) records[i];
                output += "Host " + soaRecord.toString();
            }
            return output;
        } catch (final Exception e) { return "Host unreachable";}
    }

}
