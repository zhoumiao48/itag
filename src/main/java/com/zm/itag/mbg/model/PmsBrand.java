package com.zm.itag.mbg.model;

import java.io.Serializable;

public class PmsBrand implements Serializable {
    private Long id;

    private String name;

    /**
     * 品牌首字母
     *
     * @mbg.generated
     */
    private String firstLetter;

    /**
     * 排序（数值越大越靠前）
     *
     * @mbg.generated
     */
    private Integer sort;

    /**
     * 是否显示：0不显示；1显示
     *
     * @mbg.generated
     */
    private Integer showStatus;

    /**
     * 产品数量
     *
     * @mbg.generated
     */
    private Integer productCount;

    /**
     * 产品评论数量
     *
     * @mbg.generated
     */
    private Integer productCommentCount;

    /**
     * 品牌logo
     *
     * @mbg.generated
     */
    private String logo;

    /**
     * 品牌大图
     *
     * @mbg.generated
     */
    private String bigPic;

    /**
     * 品牌备注
     *
     * @mbg.generated
     */
    private String brandRemarks;

    private static final long serialVersionUID = 1L;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getFirstLetter() {
        return firstLetter;
    }

    public void setFirstLetter(String firstLetter) {
        this.firstLetter = firstLetter;
    }

    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
    }

    public Integer getShowStatus() {
        return showStatus;
    }

    public void setShowStatus(Integer showStatus) {
        this.showStatus = showStatus;
    }

    public Integer getProductCount() {
        return productCount;
    }

    public void setProductCount(Integer productCount) {
        this.productCount = productCount;
    }

    public Integer getProductCommentCount() {
        return productCommentCount;
    }

    public void setProductCommentCount(Integer productCommentCount) {
        this.productCommentCount = productCommentCount;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    public String getBigPic() {
        return bigPic;
    }

    public void setBigPic(String bigPic) {
        this.bigPic = bigPic;
    }

    public String getBrandRemarks() {
        return brandRemarks;
    }

    public void setBrandRemarks(String brandRemarks) {
        this.brandRemarks = brandRemarks;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", name=").append(name);
        sb.append(", firstLetter=").append(firstLetter);
        sb.append(", sort=").append(sort);
        sb.append(", showStatus=").append(showStatus);
        sb.append(", productCount=").append(productCount);
        sb.append(", productCommentCount=").append(productCommentCount);
        sb.append(", logo=").append(logo);
        sb.append(", bigPic=").append(bigPic);
        sb.append(", brandRemarks=").append(brandRemarks);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}