/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Admin
 */
public class Salary {
    private int mainsalary;
    private int jobsalary;
    private int responsalary;

    public Salary(int mainsalary, int jobsalary, int responsalary) {
        this.mainsalary = mainsalary;
        this.jobsalary = jobsalary;
        this.responsalary = responsalary;
    }

    public Salary() {
    }

    public int getMainsalary() {
        return mainsalary;
    }

    @Override
    public String toString() {
        return "Salary{" + "mainsalary=" + mainsalary + ", jobsalary=" + jobsalary + ", responsalary=" + responsalary + '}';
    }

    public void setMainsalary(int mainsalary) {
        this.mainsalary = mainsalary;
    }

    public int getJobsalary() {
        return jobsalary;
    }

    public void setJobsalary(int jobsalary) {
        this.jobsalary = jobsalary;
    }

    public int getResponsalary() {
        return responsalary;
    }

    public void setResponsalary(int responsalary) {
        this.responsalary = responsalary;
    }
    
}
