package com.credit.util;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.HashMap;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import freemarker.template.Configuration;
import freemarker.template.DefaultObjectWrapper;
import freemarker.template.Template;
import freemarker.template.TemplateExceptionHandler;

public class DocUtil {
    private Configuration configure = null;

    public DocUtil() {
        configure = new Configuration();
        configure.setDefaultEncoding("utf-8");
    }

    /**
     * 根据Doc模板生成word文件
     * 
     * @param dataMap Map 需要填入模板的数据
     * @param fileName 文件名称
     * @param savePath 保存路径
     */
    public void createDoc(Map<String, Object> dataMap, String downloadType, String savePath) {
        try {
            // 加载需要装填的模板
            Template template = null;
            // 加载模板文件
            configure.setClassForTemplateLoading(this.getClass(), "/com/favccxx/secret/templates");
            // 设置对象包装器
            configure.setObjectWrapper(new DefaultObjectWrapper());
            // 设置异常处理器
            configure.setTemplateExceptionHandler(TemplateExceptionHandler.IGNORE_HANDLER);
            // 定义Template对象,注意模板类型名字与downloadType要一致
            template = configure.getTemplate("tzs.xml");
            // 输出文档
            File outFile = new File(savePath);
            Writer out = null;
            out = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(outFile), "utf-8"));
            template.process(dataMap, out);
            outFile.delete();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public static void main(String[] args) {
        Map<String, Object> dataMap = new HashMap<String, Object>();
        dataMap.put("id", "逾期单编号");
        dataMap.put("uname", "客户名字");
        dataMap.put("rq", "日期");
        dataMap.put("bj", "本金");
        dataMap.put("lx", "利息");
        dataMap.put("fx", "罚息");
        dataMap.put("sdate", "通知日期");
        DocUtil doc = new DocUtil();
        doc.createDoc(dataMap, "c:/tzs.xml", "c:/");
    }
}
