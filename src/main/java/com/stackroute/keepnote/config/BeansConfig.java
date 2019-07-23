package com.stackroute.keepnote.config;

import com.stackroute.keepnote.model.Note;
import com.stackroute.keepnote.repository.NoteRepository;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Scope;

@Configuration
@ComponentScan( basePackageClasses = {Note.class, NoteRepository.class})
public class BeansConfig {
    @Bean
    @Scope("prototype")
    public Note note(){
        return new Note();
    }

    @Bean
    public NoteRepository noteRepository()
    {
        return new NoteRepository();
    }
}

