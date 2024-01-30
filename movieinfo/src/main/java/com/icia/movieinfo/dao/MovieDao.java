package com.icia.movieinfo.dao;

import com.icia.movieinfo.dto.MovieDto;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;

public interface MovieDao {
    List<MovieDto> getMovieList(Map<String, Integer> map);

    void movieInsert(MovieDto movie);

    @Select("SELECT * FROM movietbl WHERE m_code=#{m_code}")
    MovieDto movieSelect(Integer m_code);

    void movieUpdate(MovieDto movie);

    void movieDelete(Integer m_code);
    
    @Select("SELECT count(*) FROM movietbl")
    int cntMovie();
}
