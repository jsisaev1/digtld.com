package com.digtld;

/**
 * Created by j on 31.05.2016.
 */
import org.xbill.DNS.*;
public class SOA_LookUp {
    private String _domain;

    public SOA_LookUp(String soarec) {
        _domain = soarec;
    }

    public String lookup() throws TextParseException {
        try {
            Record[] records = new Lookup(_domain, Type.SOA).run();
            String output = "";
            for (int i = 0; i < records.length; i++) {
                SOARecord soaRecord = (SOARecord) records[i];
                output += soaRecord.toString();
            }
            return output;
        } catch (final Exception e) { return "Not found";}
    }
}
