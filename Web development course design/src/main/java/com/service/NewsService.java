package com.service;

import java.util.List;

import com.entity.News;

public interface NewsService {
    /**
     * 查询全部新闻
     * @return
     */
    public List<News> listNewss();
    /**
     * 添加新闻
     * @param news
     */
    public void addNews(News news);
    /**
     * 更新新闻
     * @param News
     * @return
     */
    public void updateNews(News News);

    /**
     * 基于ID获取指定新闻
     * @param id
     * @return
     */
    public News getNews(int id);
    /**
     * 基于ID删除指定新闻
     * @param id
     * @return
     */
    public void delNews(int id);
    /**
     * 基于name查找新闻
     * @param name
     * @return
     */
    public List<News> findNews(String name);
}
