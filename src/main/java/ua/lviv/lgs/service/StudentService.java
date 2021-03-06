package ua.lviv.lgs.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;
import ua.lviv.lgs.domain.Student;
import ua.lviv.lgs.repository.StudentRepo;

import java.io.IOException;

@Service
public class StudentService {

    @Autowired
    private StudentRepo studentRepository;

    public Student create(Student student, MultipartFile file) throws IOException {
        student.setFileName(StringUtils.cleanPath(file.getOriginalFilename()));
        student.setFileType(file.getContentType());
        student.setData(file.getBytes());

        return studentRepository.save(student);
    }

    public Student findById(int id) {
        return studentRepository.getOne(id);
    }
}
