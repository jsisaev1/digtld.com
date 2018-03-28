package com.digtld;

/**
 * Created by j on 16.05.2016.
 */

import org.xbill.DNS.*;

public class MXLookUp {
    private String _domain;
    public MXLookUp(String mxrec) {
        _domain = mxrec;
    }
    public String lookup() throws TextParseException {
        try {
        Record[] records = new Lookup(_domain, Type.MX).run();
        String output = "";
        for (int i = 0; i < records.length; i++)
        {
            MXRecord mx = (MXRecord) records[i];
            output +=  mx.getTarget() + " has preference " + mx.getPriority() + "<br>";
        }
        return output;
    } catch   (final Exception e) { return "Not found";}
}}
