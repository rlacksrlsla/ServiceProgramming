package koreatech.cse.service;

import koreatech.cse.domain.rest.Library;
import org.springframework.stereotype.Service;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;


@Service
public class LibraryService {

    public ArrayList<Library> serachLibrary(String district) {
        ArrayList<Library> list = null;
        try {
            URL url = new URL(getURLParam(district));

            XmlPullParserFactory factory = XmlPullParserFactory.newInstance();
            factory.setNamespaceAware(true);
            XmlPullParser xpp = factory.newPullParser();
            BufferedInputStream bis = new BufferedInputStream(url.openStream());
            xpp.setInput(bis, "utf-8");

            int event_type = xpp.getEventType();

            String addr = null;
            Library library = null;

            while (event_type != XmlPullParser.END_DOCUMENT) {
                switch (event_type) {
                    case XmlPullParser.END_DOCUMENT:
                        break;
                    case XmlPullParser.START_DOCUMENT:
                        list = new ArrayList<Library>();
                        break;
                    case XmlPullParser.END_TAG: {
                        String tag = xpp.getName();
                        if (tag.equals("row")) {
                            list.add(library);
                            library = null;
                        }
                    }

                    case XmlPullParser.START_TAG: {
                        String tag = xpp.getName();
                        if (tag.equals("row")) {
                            library = new Library();

                        } else if (tag.equals("LBRRY_NAME")) {
                            if (library != null)
                                library.setName(xpp.nextText());
                        } else if (tag.equals("ADRES")) {
                            if (library != null)
                                library.setAddress(xpp.nextText());
                        } else if (tag.equals("TEL_NO")) {
                            if (library != null)
                                library.setPhone(xpp.nextText());
                        } else if (tag.equals("HMPG_URL")) {
                            if (library != null)
                                library.setHomepage(xpp.nextText());
                        } else if (tag.equals("FDRM_CLOSE_DATE")) {
                            if (library != null)
                                library.setHoliday(xpp.nextText());
                        }
                        break;
                    }
                }
                event_type = xpp.next();
                //printList(list);
            }

        } catch (MalformedURLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (UnsupportedEncodingException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (XmlPullParserException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return list;
    }

    private String getURLParam(String search){
        String url = "";
        System.out.println(search);

        try{
            String district = URLEncoder.encode(search, "UTF-8");
            System.out.println(district);
            url = "http://openapi.seoul.go.kr:8088/7367785455676f6c3535724f7a5a4c/xml/SeoulPublicLibrary/1/50/" + district;
        } catch(Exception e) {
            e.printStackTrace();
        }

        return url;
    }

}