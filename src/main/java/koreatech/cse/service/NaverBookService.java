package koreatech.cse.service;

import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.*;
import java.util.ArrayList;
import java.util.List;

import koreatech.cse.domain.rest.Book;
import org.springframework.stereotype.Service;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;


@Service
public class NaverBookService {
    private static String clientID = "2OASrdYv0YqbY40qemzN";
    private static String clientSecret = "dgrbgpTNFw";

    //display ==> 몇개 출력
    //start==>몇번쨰부터 (item)
    public List<Book> searchBook(String keyword, int display, int start){
        List<Book> list = null;
        try {
            URL url;
            url = new URL("https://openapi.naver.com/v1/search/"
                    + "book.xml?query="
                    + URLEncoder.encode(keyword, "UTF-8")
                    + (display !=0 ? "&display=" +display :"")
                    + (start !=0 ? "&start=" +start :""));

            URLConnection urlConn = url.openConnection();
            urlConn.setRequestProperty("X-Naver-Client-Id", clientID);
            urlConn.setRequestProperty("X-Naver-Client-Secret", clientSecret);

            XmlPullParserFactory factory = XmlPullParserFactory.newInstance();
            XmlPullParser parser = factory.newPullParser();
            parser.setInput(new InputStreamReader(urlConn.getInputStream(),"UTF-8"));
            //Test에서 했던 방식은 DOM방식이기때문에?
            //그래서 이렇게 해도 된다?!??!??!? 

            int eventType = parser.getEventType();
            Book b = null;
            while (eventType != XmlPullParser.END_DOCUMENT) {
                switch (eventType) {
                    case XmlPullParser.END_DOCUMENT: // 문서의 끝
                        break;
                    case XmlPullParser.START_DOCUMENT:
                        list = new ArrayList<Book>();
                        break;
                    case XmlPullParser.END_TAG: {
                        String tag = parser.getName();
                        if(tag.equals("item"))
                        {
                            list.add(b);
                            b = null;
                        }
                    }
                    case XmlPullParser.START_TAG: {
                        String tag = parser.getName();
                        if (tag.equals("item")) {
                            b = new Book();
                        } else if (tag.equals("title")) {
                            if (b != null)
                                b.setTitle(parser.nextText());

                        } else if (tag.equals("link")) {
                            if (b != null)
                                b.setLink(parser.nextText());

                        } else if (tag.equals("image")) {
                            if (b != null)
                                b.setImage(parser.nextText());

                        } else if (tag.equals("author")) {
                            if (b != null)
                                b.setAuthor(parser.nextText());

                        } else if (tag.equals("price")) {
                            if (b != null)
                                b.setPrice(parser.nextText());

                        } else if (tag.equals("discount")) {
                            if (b != null)
                                b.setDiscount(parser.nextText());

                        } else if (tag.equals("publisher")) {
                            if (b != null)
                                b.setPublisher(parser.nextText());

                        } else if (tag.equals("pubdate")) {
                            if (b != null)
                                b.setPubdate(parser.nextText());

                        } else if (tag.equals("isbn")) {
                            if (b != null)
                                b.setIsbn(parser.nextText());

                        } else if (tag.equals("description")) {
                            if (b != null)
                                b.setDescription(parser.nextText());

                        }

                    }
                }
                eventType = parser.next();
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
}