using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public class DataLayer
{

    SqlConnection cn;
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;
    DataTable dt;
    public DataLayer()
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
    }
    public DataTable p_login(LogicLayer li)
    {
        SqlCommand cmd = new SqlCommand("select * from faculty where  funame =@username and Password=@f_password", cn);
        cmd.Parameters.AddWithValue("@username", li.username);
        cmd.Parameters.AddWithValue("@f_password", li.password);
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public DataTable s_login(LogicLayer li)
    {
        cmd = new SqlCommand("select * from student where userid=@username and password=@password", cn);
        cmd.Parameters.AddWithValue("@username", li.username);
        cmd.Parameters.AddWithValue("@password", li.password);
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public void sdef_insert(LogicLayer li)
    {
        cn.Open();
        cmd = new SqlCommand("insert into selectdef(def_id,member_1,member_2) values(@def,@m1,@m2)", cn);
        cmd.Parameters.AddWithValue("@def", li.sdefid);
        cmd.Parameters.AddWithValue("@m1", li.roll_no);
        cmd.Parameters.AddWithValue("@m2", li.roll_no1);

        cmd.ExecuteNonQuery();
        cmd = new SqlCommand("update mdef set member_1=@m1,member_2=@m2 where def_id=@def", cn);
        cmd.Parameters.AddWithValue("@def", li.sdefid);
        cmd.Parameters.AddWithValue("@m1", li.roll_no);
        cmd.Parameters.AddWithValue("@m2", li.roll_no1);
        cmd.ExecuteNonQuery();
        cn.Close();
    }
    public DataTable views(LogicLayer li)
    {
        cmd = new SqlCommand("select * from student", cn);
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        return dt;

    }
    public DataTable team(LogicLayer li)
    {
        cmd = new SqlCommand("select * from mdef where @m IN(member_1,member_2)", cn);
        cmd.Parameters.AddWithValue("@m", li.get);
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public void res(LogicLayer li)
    {
        cn.Open();
        cmd = new SqlCommand("update  AMP set checks=0", cn);
        cmd.ExecuteNonQuery();
        cmd = new SqlCommand("update  DBMS set checks=0", cn);
        cmd.ExecuteNonQuery();
        cmd = new SqlCommand("update  DAA set checks=0", cn);
        cmd.ExecuteNonQuery();
        cmd = new SqlCommand("update  CJT set checks=0", cn);
        cmd.ExecuteNonQuery();
        cmd = new SqlCommand("update  TAFL set checks=0", cn);
        cmd.ExecuteNonQuery();
        cn.Close();

    }
    public DataTable gun(LogicLayer li)
    {
        cmd = new SqlCommand("select * from student where userid=@def", cn);
        cmd.Parameters.AddWithValue("@def", li.unm);
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    //public DataTable check1(LogicLayer li)
    //{
    //    cmd.Parameters.AddWithValue("@sub", li.attvalue);
    //    cmd = new SqlCommand("select * from @sub where userid=@un", cn);
    //    cmd.Parameters.AddWithValue("@sub", li.attvalue);
    //    cmd.Parameters.AddWithValue("@un", li.unme);
    //    da = new SqlDataAdapter(cmd);
    //    dt = new DataTable();
    //    da.Fill(dt);
    //    return dt;
    //}
    public DataTable checkamp(LogicLayer li)
    {
        cmd = new SqlCommand("select * from AMP where userid=@un", cn);
        cmd.Parameters.AddWithValue("@sub", li.attvalue);
        cmd.Parameters.AddWithValue("@un", li.unme);
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public DataTable checkdbms(LogicLayer li)
    {
        cmd = new SqlCommand("select * from DBMS where userid=@un", cn);
        cmd.Parameters.AddWithValue("@sub", li.attvalue);
        cmd.Parameters.AddWithValue("@un", li.unme);
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public DataTable checkdaa(LogicLayer li)
    {
        cmd = new SqlCommand("select * from DAA where userid=@un", cn);
        cmd.Parameters.AddWithValue("@sub", li.attvalue);
        cmd.Parameters.AddWithValue("@un", li.unme);
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public DataTable checktafl(LogicLayer li)
    {
        cmd = new SqlCommand("select * from TAFL where userid=@un", cn);
        cmd.Parameters.AddWithValue("@sub", li.attvalue);
        cmd.Parameters.AddWithValue("@un", li.unme);
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public DataTable checkcjt(LogicLayer li)
    {
        cmd = new SqlCommand("select * from CJT where userid=@un", cn);
        cmd.Parameters.AddWithValue("@sub", li.attvalue);
        cmd.Parameters.AddWithValue("@un", li.unme);
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public DataTable getname(LogicLayer li)
    {
        cmd = new SqlCommand("select * from p_defination", cn);
    //    cmd.Parameters.AddWithValue("@un", li.unme);
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        return dt;

    }
    public DataTable viewgroups(LogicLayer li)
    {
        cmd = new SqlCommand("select * from mdef", cn);
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public void ins_att(LogicLayer li)
    {
        if (li.attvalue == "amp")
        {
            cmd = new SqlCommand("update AMP set attend=(attend+1),checks=1 where userid=@crdno", cn);
            cmd.Parameters.AddWithValue("@crdno", li.unme);

            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
        }
        if (li.attvalue == "dbms")
        {
            cmd = new SqlCommand("update DBMS set attend=(attend+1),checks=1 where userid=@crdno", cn);
            cmd.Parameters.AddWithValue("@crdno", li.unme);

            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
        }
        if (li.attvalue == "daa")
        {
            cmd = new SqlCommand("update DAA set attend=(attend+1),checks=1 where userid=@crdno", cn);
            cmd.Parameters.AddWithValue("@crdno", li.unme);

            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
        }
        if (li.attvalue == "cjt")
        {
            cmd = new SqlCommand("update CJT set attend=(attend+1),checks=1 where userid=@crdno", cn);
            cmd.Parameters.AddWithValue("@crdno", li.unme);

            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
        }
        if (li.attvalue == "tafl")
        {
            cmd = new SqlCommand("update TAFL set attend=(attend+1),checks=1 where userid=@crdno", cn);
            cmd.Parameters.AddWithValue("@crdno", li.unme);

            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
        }
    }
    public DataTable getuser(LogicLayer li)
    {
        cmd = new SqlCommand("select * from student where cardno=@aid", cn);
        cmd.Parameters.AddWithValue("@aid", li.cardno);
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public void p_add_def(LogicLayer li)
    {
        cmd = new SqlCommand(@"INSERT INTO p_defination(def_name,def_description) VALUES (@dfn,@des)", cn);
        cmd.Parameters.AddWithValue("@dfn", li.pdefname);
        cmd.Parameters.AddWithValue("@des", li.pdefdesc);
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
    }
    public void s_add_def(LogicLayer li)
    {
        cmd = new SqlCommand(@"INSERT INTO p_defination(def_name,def_description) VALUES (@dfn,@des)", cn);
        cmd.Parameters.AddWithValue("@dfn", li.sdefname);
        cmd.Parameters.AddWithValue("@des", li.sdefdesc);

        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
    }
    public DataTable defi_view(LogicLayer li)
    {
        cmd = new SqlCommand(" select * from p_defination", cn);
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public DataTable dattview(LogicLayer li)
    {
        cmd = new SqlCommand("select * from DBMS where userid=@guname", cn);
        cmd.Parameters.AddWithValue("@guname", li.attd);

        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        return dt;
  
    }
    public DataTable dattview1(LogicLayer li)
    {
        cmd = new SqlCommand("select * from AMP where userid=@guname", cn);
        cmd.Parameters.AddWithValue("@guname", li.attd);

        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        return dt;

    }
    public DataTable dattview2(LogicLayer li)
    {
        cmd = new SqlCommand("select * from DAA where userid=@guname", cn);
        cmd.Parameters.AddWithValue("@guname", li.attd);

        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        return dt;

    }
    public DataTable dattview3(LogicLayer li)
    {
        cmd = new SqlCommand("select * from TAFL where userid=@guname", cn);
        cmd.Parameters.AddWithValue("@guname", li.attd);

        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        return dt;

    }
    public DataTable sroll(LogicLayer li)
    {
        cmd = new SqlCommand("select * from student where userid=@guname", cn);
        cmd.Parameters.AddWithValue("@guname", li.unm);

        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public void insert(LogicLayer li)
    {
        cmd = new SqlCommand(@"INSERT INTO A_system.dbo.student(sname,userid,roll_no,email,parent_email,password,cardno) VALUES(@sn,@uid,@rno,@mail,@pmail,@pass,@cn)", cn);

        cmd.Parameters.AddWithValue("@sn", li.fullname);
        cmd.Parameters.AddWithValue("@uid", li.userid);
        cmd.Parameters.AddWithValue("@rno", li.rollno);
        cmd.Parameters.AddWithValue("@mail", li.email);
        cmd.Parameters.AddWithValue("@pmail", li.parentmail);
        cmd.Parameters.AddWithValue("@pass", li.upassword);
        cmd.Parameters.AddWithValue("@cn", li.card_no);
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
    }
    public DataTable dattview4(LogicLayer li)
    {
        cmd = new SqlCommand("select * from CJT where userid=@guname", cn);
        cmd.Parameters.AddWithValue("@guname", li.attd);

        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        return dt;

    }
    public DataTable gets(LogicLayer li)
    {
        cmd = new SqlCommand("select * from student where userid=@guname", cn);
        cmd.Parameters.AddWithValue("@guname", li.attd);

        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public void adds(LogicLayer li)
    {
        if(li.subc=="dbms")
        {
          
            cmd = new SqlCommand("update DBMS set total=(total+1)", cn);

            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
        }
        else if (li.subc == "amp")
        {
            cmd = new SqlCommand("update AMP set total=(total+1)", cn);

            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
        }
        else if (li.subc == "daa")
        {
            cmd = new SqlCommand("update DAA set total=(total+1)", cn);

            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
        }
        else if (li.subc == "tafl")
        {
            cmd = new SqlCommand("update TAFL set total=(total+1)", cn);

            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
        }
        else if (li.subc == "cjt")
        {
            cmd = new SqlCommand("update CJT set total=(total+1)", cn);

            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
        }
    }
}
  