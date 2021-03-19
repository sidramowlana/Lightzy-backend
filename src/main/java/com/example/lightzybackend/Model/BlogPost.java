package com.example.lightzybackend.Model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class BlogPost {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer blogPostId;

    public String blogPostName;
    public String description;
    public Date datePosted;
    @ManyToOne(cascade = CascadeType.PERSIST, fetch = FetchType.EAGER)
    @JoinColumn(name = "catergory", referencedColumnName = "catergoryId")
    public Catergory catergory;
    public String postedUser;
    public String imageUrl;

    public BlogPost(String blogPostName, String description, Date datePosted, Catergory catergory, String postedUser, String imageUrl) {
        this.blogPostName = blogPostName;
        this.description = description;
        this.datePosted = datePosted;
        this.catergory = catergory;
        this.postedUser = postedUser;
        this.imageUrl = imageUrl;
    }
}