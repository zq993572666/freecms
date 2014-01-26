package cn.freeteam.cms.dao;

import cn.freeteam.cms.model.Htmlquartz;
import cn.freeteam.cms.model.HtmlquartzExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface HtmlquartzMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table freecms_htmlQuartz
     *
     * @mbggenerated Wed Jan 23 21:55:47 CST 2013
     */
    int countByExample(HtmlquartzExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table freecms_htmlQuartz
     *
     * @mbggenerated Wed Jan 23 21:55:47 CST 2013
     */
    int deleteByExample(HtmlquartzExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table freecms_htmlQuartz
     *
     * @mbggenerated Wed Jan 23 21:55:47 CST 2013
     */
    int deleteByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table freecms_htmlQuartz
     *
     * @mbggenerated Wed Jan 23 21:55:47 CST 2013
     */
    int insert(Htmlquartz record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table freecms_htmlQuartz
     *
     * @mbggenerated Wed Jan 23 21:55:47 CST 2013
     */
    int insertSelective(Htmlquartz record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table freecms_htmlQuartz
     *
     * @mbggenerated Wed Jan 23 21:55:47 CST 2013
     */
    List<Htmlquartz> selectByExample(HtmlquartzExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table freecms_htmlQuartz
     *
     * @mbggenerated Wed Jan 23 21:55:47 CST 2013
     */
    Htmlquartz selectByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table freecms_htmlQuartz
     *
     * @mbggenerated Wed Jan 23 21:55:47 CST 2013
     */
    int updateByExampleSelective(@Param("record") Htmlquartz record, @Param("example") HtmlquartzExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table freecms_htmlQuartz
     *
     * @mbggenerated Wed Jan 23 21:55:47 CST 2013
     */
    int updateByExample(@Param("record") Htmlquartz record, @Param("example") HtmlquartzExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table freecms_htmlQuartz
     *
     * @mbggenerated Wed Jan 23 21:55:47 CST 2013
     */
    int updateByPrimaryKeySelective(Htmlquartz record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table freecms_htmlQuartz
     *
     * @mbggenerated Wed Jan 23 21:55:47 CST 2013
     */
    int updateByPrimaryKey(Htmlquartz record);
}