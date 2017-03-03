package com.eliindia.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="templates")
public class Template implements Serializable{
  private static final long serialVersionUID = 1L;
  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  @Column(name = "id")
  private long id;
  
  @Column
  private String templateName;
  
  @Column
  private String tempalteContent;

  public long getId() {
    return id;
  }

  public void setId(long id) {
    this.id = id;
  }

  public String getTemplateName() {
    return templateName;
  }

  public void setTemplateName(String templateName) {
    this.templateName = templateName;
  }

  public String getTempalteContent() {
    return tempalteContent;
  }

  public void setTempalteContent(String tempalteContent) {
    this.tempalteContent = tempalteContent;
  }

  
  
}
