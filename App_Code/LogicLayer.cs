using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public class LogicLayer
{
    DataLayer dl = new DataLayer();
    public string username { get; set; }
    public string password { get; set; }
    public string pdefname { get; set; }
    public string pdefdesc { get; set; }
    public string sdefname { get; set; }
    public string sdefdesc { get; set; }
    public string saccss { get; set; }
    public string cardno { get; set; }
    public string satt { get; set; }
    public string sid { get; set; }
    public string unme { get; set; }
    public string subc { get; set; }
    public string attvalue { get; set; }
    public string cduname { get; set; }
    public string fullname { get; set; }
    public string attd { get; set; }
    public string userid { get; set; }
    public string email { get; set; }
    public string rollno { get; set; }
    public string upassword { get; set; }
    public string parentmail { get; set; }
    public string card_no { get; set; }
    public string sdefid { get; set; }
    public string roll_no { get; set; }
    public string roll_no1 { get; set; }
    public string unm { get; set; }
    public string get { get; set; }

	public LogicLayer()
	{
		
	}
    public DataTable plogin(LogicLayer li)
    {
        return dl.p_login(li);
    }
    public DataTable slogin(LogicLayer li)
    {
        return dl.s_login(li);
    }
    public DataTable view_s(LogicLayer li)
    {
        return dl.views(li);
    }
    public DataTable saccid(LogicLayer li)
    {
        return dl.getuser(li);
    }
    public void add_def(LogicLayer li)
    {
         dl.p_add_def(li);
    }
    public void sadd_def(LogicLayer li)
    {
        dl.s_add_def(li);
    }
    public void insatt(LogicLayer li)
    {
        dl.ins_att(li);
    }
    public DataTable attview(LogicLayer li)
    {
        return dl.dattview(li);
    }
    public DataTable attview1(LogicLayer li)
    {
        return dl.dattview1(li);
    }
    public DataTable attview2(LogicLayer li)
    {
        return dl.dattview2(li);
    }
    public DataTable attview3(LogicLayer li)
    {
        return dl.dattview3(li);
    }
    public DataTable attview4(LogicLayer li)
    {
        return dl.dattview4(li);
    }
    public DataTable defiview(LogicLayer li)
    {
       return dl.defi_view(li);
    }
    public void add(LogicLayer li)
    {
        dl.adds(li);
    }
    public DataTable getname(LogicLayer li)
    {
        return dl.gets(li);
    }
    public void Reg_User(LogicLayer li){
        dl.insert(li);
    }
    public void sdef(LogicLayer li)
    {
        dl.sdef_insert(li);
    }
    public DataTable view_group(LogicLayer li)
    {
        return dl.viewgroups(li);
    }
    public DataTable getuname(LogicLayer li)
    {
        return dl.gun(li);
    }
    //public DataTable check(LogicLayer li)
    //{
    //    return dl.check1(li);
    //}
    public void reset(LogicLayer li)
    {
        dl.res(li);
    }
    public DataTable checkamp(LogicLayer li)
    {
        return dl.checkamp(li);
    }
    public DataTable checkcjt(LogicLayer li)
    {
        return dl.checkcjt(li);
    }
    public DataTable checkdaa(LogicLayer li)
    {
        return dl.checkdaa(li);
    }
    public DataTable checktafl(LogicLayer li)
    {
        return dl.checktafl(li);
    }
    public DataTable checkdbms(LogicLayer li)
    {
        return dl.checkdbms(li);
    }
    public DataTable gettitle(LogicLayer li)
    {
       return dl.getname(li);
    }
    public DataTable team(LogicLayer li)
    {
        return dl.team(li);
    }
    public DataTable sroll(LogicLayer li)
    {
        return dl.sroll(li);
    }
}