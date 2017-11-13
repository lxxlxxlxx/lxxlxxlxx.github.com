package com.credit.util;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 时间相关工具类
 * */
public class DateUtil {

    // 获取格式化后的当前日期
    public static String formatNowDate(String sdfDate) {

        String dateStr = "";

        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat(sdfDate);
        dateStr = sdf.format(date);
        return dateStr;
    }

    // 获取格式化后的日期
    public static String formatDate(Date date, String sdfDate) {

        String dateStr = "";

        SimpleDateFormat sdf = new SimpleDateFormat(sdfDate);
        dateStr = sdf.format(date);
        return dateStr;
    }

    // 获取格式化后的日期
    public static String formatDateStr(String date, String sdfDate) {

        String dateStr = "";
        SimpleDateFormat sdf = new SimpleDateFormat(sdfDate);
        dateStr = sdf.format(date);
        return dateStr;
    }

}
