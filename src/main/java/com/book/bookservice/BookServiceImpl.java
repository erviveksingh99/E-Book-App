package com.book.bookservice;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.book.entity.Book;
import com.book.repository.BookRepo;

@Service
public class BookServiceImpl implements BookService {

    @Autowired
    private BookRepo bookRepo;

    @Override
    public String getBookData(Model model) {

        String Spring = "https://cdn.azilen.com/wp-content/uploads/2023/07/spring.jpg";
        String springUrl = "https://spring.io/projects/spring-framework";

        String ReactJs = "https://k2bindia.com/wp-content/uploads/2015/08/React.png";
        String reactJsUrl = "https://react.dev/";

        String Oracle = "https://www.webopedia.com/wp-content/uploads/1997/02/Webo.OracleProfile-300x300.png";
        String oracleUrl = "https://www.oracle.com/in/";

        String Python = "https://loudbench.com/wp-content/uploads/2023/02/Python-logo-768x432.png";
        String pythonUrl = "https://www.python.org/";
        
        String JavaScript="https://www.squash.io/wp-content/uploads/2023/11/javascript-series.jpg";
        String JavaScriptUrl="https://www.w3schools.com/js/";
        
        String HTML="https://www.computerhope.com/jargon/h/html-head.jpg";
        String htmlUrl="https://www.w3schools.com/html/";
        
        String NodeJs="https://upload.wikimedia.org/wikipedia/commons/d/d9/Node.js_logo.svg";
        String NodeJsUrl="https://www.w3schools.com/nodejs/";
        
        String MySql="https://www.zend.com/sites/default/files/image/2020-04/image-blog-mysql-php.jpg";
        String MySqlUrl="https://www.w3schools.com/MySQL/default.asp";
        
        String PostgreSQL="https://img.helpnetsecurity.com/wp-content/uploads/2023/09/17135143/postgresql.jpg";
        String PostgreUrl="https://www.w3schools.com/postgresql/";
        
        String Ruby="https://sumatosoft.com/wp-content/uploads/2023/03/ruby-lang-ar21.png";
        String RubyUrl="https://www.geeksforgeeks.org/ruby-programming-language/";
        
        String Go="https://media.licdn.com/dms/image/D4D12AQELLtCSauTZlg/article-cover_image-shrink_720_1280/0/1702986946105?e=2147483647&v=beta&t=oNxUqjZCo3L_Aum4SPZptbVSdmcbzcXWOIEXzpzvePQ";
        String GoUrl="https://www.geeksforgeeks.org/ruby-programming-language/";
        
        String C="https://cka.collectiva.in/Content/images/CourseImages/9.png";
        String cUrl="https://www.w3schools.com/c/c_intro.php";
        
        String CPP="https://cdn3d.iconscout.com/3d/free/preview/free-c-language-3d-icon-download-in-png-blend-fbx-gltf-file-formats--logo-mobile-developer-programming-pack-logos-icons-5453029.png?f=webp&h=700";
        String cppUrl="https://www.w3schools.com/cpp/cpp_intro.asp";
        
        String cSharp="https://blogs.brainsmiths.com/image.axd?picture=/blog%20pics/c_logo_black.png";
        String cSharpUrl="https://www.w3schools.com/cs/index.php";
        
        String Php="https://cms-assets.tutsplus.com/cdn-cgi/image/width=400/uploads/users/413/posts/34736/preview_image/php-wide-retina-preview.png";
        String phpUrl="https://www.w3schools.com/php/php_intro.asp";
        
        String Matalab="https://miro.medium.com/v2/resize:fit:1400/0*OyW4BqYugJRxii1w";
        String MatalabUrl="https://www.tutorialspoint.com/matlab/index.htm";
        
        String plSql="https://datascientest.com/en/files/2024/07/PL_SQL_datascientest-1024x512.png";
        String plSqlUrl="https://datascientest.com/en/files/2024/07/PL_SQL_datascientest-1024x512.png";
        
        String kotlin="https://media.licdn.com/dms/image/D4D12AQGRQ1BBEKdHEg/article-cover_image-shrink_720_1280/0/1702452656552?e=2147483647&v=beta&t=AG_dHioDuELsbuN00lkjoiXm_UkBIr5e7BDGhWr7ExM";
        String kotlinUrl="https://www.w3schools.com/KOTLIN/index.php";
        
        String typeScript="https://assets-eu-01.kc-usercontent.com/64ba5402-320b-01f3-758a-878c16f16a91/36961122-2fd0-4bd1-8aad-40c4c5dfa139/benefits_of_typescript_without_typescript_blog_index.webp";
        String typeScriptUrl="https://www.w3schools.com/typescript/typescript_intro.php";
        
        String AI="https://www.bocasay.com/wp-content/uploads/2023/07/What-are-the-languages-of-choice-when-combined-with-AI-@CherryBerry.jpg";
        String AIurl="https://www.javatpoint.com/languages-used-in-artificial-intelligence";
        
        String ML="https://d3an9kf42ylj3p.cloudfront.net/uploads/2023/05/pg_machinelearning101_may23.jpg";
        String MLurl="https://www.geeksforgeeks.org/machine-learning/";
        

        Book b1 = new Book(101, "Spring", 449, Spring, springUrl);
        Book b2 = new Book(102, "ReactJs", 499, ReactJs, reactJsUrl);
        Book b3 = new Book(103, "Oracle", 549, Oracle, oracleUrl);
        Book b4 = new Book(104, "Python", 649, Python, pythonUrl);
        Book b5 = new Book(105, "JavaScript", 449, JavaScript, JavaScriptUrl);
        Book b6 = new Book(106, "HTML", 249, HTML, htmlUrl);
        Book b7 = new Book(107, "NodeJs", 649, NodeJs, NodeJsUrl);
        Book b8 = new Book(108, "MySql", 249, MySql, MySqlUrl);
        Book b9 = new Book(109, "Postgre SQL", 449, PostgreSQL, PostgreUrl);
        Book b10 = new Book(110, "Ruby", 549, Ruby, RubyUrl);
        Book b11 = new Book(111, "Go", 749, Go, GoUrl);
        Book b12 = new Book(112, "C", 849, C, cUrl);
        Book b13 = new Book(113, "C++", 549, CPP, cppUrl);
        Book b14 = new Book(114, "C#", 449, cSharp, cSharpUrl);
        Book b15 = new Book(115, "Php", 749, Php, phpUrl);
        Book b16 = new Book(116, "Matalab", 649, Matalab, MatalabUrl);
        Book b17 = new Book(117, "PL-SQL", 649, plSql, plSqlUrl);
        Book b18 = new Book(118, "kotlin", 849, kotlin, kotlinUrl);
        Book b19 = new Book(119, "TypeScript", 749, typeScript, typeScriptUrl);
        Book b20 = new Book(120, "AI", 949, AI, AIurl);
        Book b21 = new Book(121, "ML", 999, ML, MLurl);
        

//        ArrayList<Book> list = new ArrayList<>();
//        list.add(b1);
//        list.add(b2);
//        list.add(b3);
//        list.add(b4);
//        list.add(b5);
        
        List<Book> list=Arrays.asList(b1,b2,b3,b4,b5,b6,
        		b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18,b19,b20,b21);
//        list=new ArrayList<Book>();

        // Save all books to the database
        bookRepo.saveAll(list);

        // Retrieve all books from the database to display
        model.addAttribute("books", bookRepo.findAll());

        return "book"; // Return the view name where the books will be displayed
    }
}

