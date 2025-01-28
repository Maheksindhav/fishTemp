/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author mahek
 */
public class mvcfile {

    public int insertdata(int refid, String fnm, String unm, String city, String mobileno, String email, String pw) {
        try {
            registration obj = new registration();
            obj.setRefid(refid);
            obj.setFullnm(fnm);
            obj.setUsername(unm);
            obj.setCity(city);
            obj.setMobileno(mobileno);
            obj.setEmail(email);
            obj.setPassword(pw);

            Configuration con = new Configuration().configure().addAnnotatedClass(registration.class);
            SessionFactory sf = con.buildSessionFactory();
            Session s = sf.openSession();
            Transaction tx = s.beginTransaction();
            s.save(obj);
            tx.commit();
            System.out.println("successfully");
            System.out.println(refid+fnm+unm+city+mobileno+email+pw);
        } catch (Exception e) {
            System.out.println("not registration");
               System.out.println(refid+fnm+unm+city+mobileno+email+pw);
               System.out.println(e);
        }
        return 0;

    }
    

}
