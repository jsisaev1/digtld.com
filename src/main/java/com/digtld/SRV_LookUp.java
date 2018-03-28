package com.digtld;

import org.xbill.DNS.*;

/**
 * Created by j on 31.05.2016.
 */
public class SRV_LookUp {
    private String _domain;

    public SRV_LookUp(String srvrec) {
        _domain = srvrec;
    }

    public String lookup() throws TextParseException {
        try {
            Record[] records = new Lookup(_domain, Type.SRV).run();
            String output = "";
            for (int i = 0; i < records.length; i++) {
                SOARecord soaRecord = (SOARecord) records[i];
                output += soaRecord.toString();
            }
            return output;
        } catch (final Exception e) { return "Not found";}
    }

}
