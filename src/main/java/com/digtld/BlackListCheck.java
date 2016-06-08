package com.digtld;

/**
 * Created by j on 31.05.2016.
 */
import org.xbill.DNS.*;

import java.net.InetAddress;
import java.net.UnknownHostException;

public class BlackListCheck {
    String _ipAddress = "";
    public BlackListCheck(String ipAddress) {
        String[] a = ipAddress.split("\\.",-1);

        for (int i=a.length-1; i>=0; i--) {
            _ipAddress += "."+a[i];
        }
        _ipAddress = _ipAddress.substring(1);
    }
    public String lookup () {
        try {
            InetAddress address = InetAddress.getByName(_ipAddress);
            _ipAddress = address.getHostAddress();
        } catch (UnknownHostException e) {
            //return "Host unreachable";
        }
        String out = "";
        String[] dnsblDomain = new String[]{ "b.barracudacentral.org", "bl.blocklist.de", "bl.mailspike.org", "bl.score.senderscore.com", "bl.spamcannibal.org", "bl.spamcop.net", "bl.spameatingmonkey.net", "bogons.cymru.com", "cblplus.anti-spam.org.cn", "cidr.bl.mcafee.com", "combined.njabl.org", "db.wpbl.info", "dnsbl-1.uceprotect.net", "dnsbl-2.uceprotect.net", "dnsbl-3.uceprotect.net", "dnsbl.burnt-tech.com", "dnsbl.dronebl.org", "dnsbl.inps.de", "dnsbl.justspam.org", "dnsbl.kempt.net", "dnsbl.rv-soft.info", "dnsbl.solid.net", "dnsbl.sorbs.net", "dnsbl.tornevall.org", "dnsbl.webequipped.com", "dnsrbl.swinog.ch", "fnrbl.fast.net", "ip.v4bl.org", "ips.backscatterer.org", "ix.dnsbl.manitu.net", "korea.services.net", "l2.apews.org", "l2.bbfh.ext.sorbs.net", "list.blogspambl.com", "lookup.dnsbl.iip.lu", "mail-abuse.blacklist.jippg.org", "psbl.surriel.com", "rbl2.triumf.ca", "rbl.choon.net", "rbl.dns-servicios.com", "rbl.efnetrbl.org", "rbl.orbitrbl.com", "rbl.polarcomm.net", "singlebl.spamgrouper.com", "spam.abuse.ch", "spam.dnsbl.sorbs.net", "spam.pedantic.org", "spamguard.leadmon.net", "spamrbl.imp.ch", "spamsources.fabel.dk", "spamtrap.trblspam.com", "st.technovision.dk", "tor.dan.me.uk", "tor.dnsbl.sectoor.de", "truncate.gbudb.net", "ubl.unsubscore.com", "virbl.dnsbl.bit.nl", "work.drbl.gremlin.ru", "zen.spamhaus.org"};
        for (int a = 0; a < dnsblDomain.length; a++) {
            try {
                Record[] records = new Lookup(_ipAddress+"."+dnsblDomain[a], Type.TXT).run();
                for (int i = 0; i < records.length; i++) {
                    TXTRecord txtrec = (TXTRecord) records[i];
                    out += "DNSBL List: " + dnsblDomain[a] + " " + "Listed<br>";//txtrec.toString().replaceAll("^([^\"]*)","")+"<br>";
                }
            } catch (Exception e) {
                //out+= "Host "+_ipAddress+"."+dnsblDomain[a]+" unreachable<br>";
            }
        }
        return (out.equals("") ? "IP not in blacklist" : out);
    }
}


