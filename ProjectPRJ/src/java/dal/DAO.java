/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import model.Cart;
import model.Category;
import model.Item;
import model.Product;
import model.Users;

/**
 *
 * @author MSI
 */
public class DAO extends DBContext {
//      Connection cnn = null;
//    PreparedStatement pstm = null;
//    ResultSet rs = null;

// lay tat car product trong db roi day vao list
    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String sql = "select * from product";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product c = new Product();
                c.setProduct_id(rs.getInt("product_id"));
                c.setCategory_id(rs.getInt("category_id"));
                c.setName(rs.getString("name"));
                c.setImages(rs.getString("images"));
                c.setDescription(rs.getString("description"));
                c.setPrice(rs.getDouble("price"));
                c.setQuantity(rs.getInt("Quantity"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public List<Product> searchByName(String txtSearch) {
        List<Product> list = new ArrayList<>();
        String sql = "select * from Product\n"
                + "where [name] like ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, "%" + txtSearch + "%");
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product c = new Product();
                c.setProduct_id(rs.getInt("product_id"));
                c.setCategory_id(rs.getInt("category_id"));
                c.setName(rs.getString("name"));
                c.setImages(rs.getString("images"));
                c.setDescription(rs.getString("description"));
                c.setPrice(rs.getDouble("price"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    //lay du lieu cua gun trong sql
    public ArrayList<Product> getGunProduct() {
        ArrayList<Product> data = new ArrayList<>();
        String sql = "select * from Product\n"
                + "where category_id = 1";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                data.add(new Product(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getDouble(6),
                        rs.getInt(7)));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return data;
    }
// lay du lieu cua knife

    public ArrayList<Product> getKnifeProduct() {
        ArrayList<Product> knife = new ArrayList<>();
        String sql = "select * from Product\n"
                + "where category_id =2";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                knife.add(new Product(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getDouble(6),
                        rs.getInt(7)));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return knife;
    }

    public ArrayList<Product> getMostExpensiveProduct() {
        ArrayList<Product> knife = new ArrayList<>();
        String sql = "SELECT *\n"
                + " FROM Product\n"
                + "WHERE price = (SELECT MAX(price) FROM Product);";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                knife.add(new Product(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getDouble(6),
                        rs.getInt(7)));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return knife;
    }

    //lay du lieu cua pistols
    public ArrayList<Product> getPistolsProduct() {
        ArrayList<Product> pis = new ArrayList<>();
        String sql = "select * from Product\n"
                + "where category_id =3";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                pis.add(new Product(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getDouble(6),
                        rs.getInt(7)));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return pis;
    }

    //lay du lieu cau case
    public ArrayList<Product> getCaseProduct() {
        ArrayList<Product> cas = new ArrayList<>();
        String sql = "select * from Product\n"
                + "where category_id =4";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                cas.add(new Product(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getDouble(6),
                        rs.getInt(7)));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return cas;
    }

    public ArrayList<Product> getProductByCId(String cid) {
        ArrayList<Product> list = new ArrayList<>();
        String sql = "select * from Product\n"
                + "where category_id =?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, cid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getDouble(6),
                        rs.getInt(7)));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public Product getProductById(String id) {
        String sql = "select * from Product where product_id = '"+id+"'";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            //st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product product =new Product(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getDouble(6),
                        rs.getInt(7));
                return product;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public List<Product> getProductBySellId(int id) {
        List<Product> list = new ArrayList<>();
        String sql = "select * from Product\n"
                + "where sell_ID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getDouble(6),
                        rs.getInt(7)));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        String sql = "select * from Categories";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt(1),
                        rs.getString(2)));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public Product getNew() {
        String sql = "select * from Product\n"
                + "where product_id = 3";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getDouble(6),
                        rs.getInt(7));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Users login(String account, String password) {
        String sql = "select * from Users\n"
                + "where account =?\n"
                + "and password =?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, account);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new Users(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getBoolean(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getInt(10));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Users checkLogin(String account) {
        String sql = "select * from Users\n"
                + "where account =?\n";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, account);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new Users(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getBoolean(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getInt(10));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void signup(String account, String pass, String email) {
        try {
            String sql = "INSERT INTO [dbo].[Users]\n"
                    + "           ([account]\n"
                    + "           ,[password]\n"
                    + "           ,[email])\n"
                    + "     VALUES\n"
                    + "           (?,?,?)";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, account);
            st.setString(2, pass);
            st.setString(3, email);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void deleteProduct(int pid) {
        try {
            String sql = "delete from Product\n"
                    + "where product_id = ?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, pid);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void insert(String catagory_id, String name, String images, String description, String price, int id) {
        String sql = "INSERT INTO [dbo].[Product]([category_id],\n"
                + "[name],[images] ,[description],[price],[sell_ID]) \n"
                + "VALUES\n"
                + "(?,?,?,?,?,?)";
        //insert into categogies values(?,?,?)
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, catagory_id);
            st.setString(2, name);
            st.setString(3, images);
            st.setString(4, description);
            st.setString(5, price);
            st.setInt(6, id);
            st.executeUpdate();//0,1
        } catch (SQLException e) {
            System.out.println(e);
        }

    }

    public void update(int catagory_id, String name, String images, String description, double price, int id) {
        String sql = "UPDATE [dbo].[Product]\n"
                + "SET [category_id] = ?,\n"
                + "[name]=?,\n"
                + "[images] = ?,\n"
                + "[description] =?,\n"
                + "[price] =?\n"
                + "WHERE product_id= ?";
        //insert into categogies values(?,?,?)
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, catagory_id);
            st.setString(2, name);
            st.setString(3, images);
            st.setString(4, description);
            st.setDouble(5, price);
            st.setInt(6, id);
            st.executeUpdate();//0,1
        } catch (SQLException e) {
            System.out.println(e);
        }

    }

    public void addOrder(Users c, Cart cart) {
        LocalDate curDate = LocalDate.now();
        String date = curDate.toString();
        try {
            //add order
            String sql = "insert into [order] \n"
                    + "values(?,?,?)";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, date);
            st.setInt(2, c.getUser_id());
            st.setDouble(3, cart.getTotalMoney());
            st.executeUpdate();
            //lay id cua order vua add
            String sql1 = "select top 1 id from [order] order by id desc";
            PreparedStatement st1 = connection.prepareStatement(sql1);
            ResultSet rs = st1.executeQuery();
            //add bang OrderDetail
            if (rs.next()) {
                
                for (Item i : cart.getItems()) {
                    String sql2 = "insert into [order_line] values(?,?,?)";
                    PreparedStatement st2 = connection.prepareStatement(sql2);
                    
                    st2.setInt(1, i.getProduct().getProduct_id());
                    st2.setInt(2, i.getQuantity());
                    st2.setDouble(3, i.getPrice());
                    st2.executeUpdate();
                }
            }
            //cap nhat lai so luong san pham
            String sql3 = "update product set Quantity=Quantity-? where product_id=?";
            PreparedStatement st3 = connection.prepareStatement(sql3);
            for (Item i : cart.getItems()) {
                st3.setInt(1, i.getQuantity());
                st3.setInt(2, i.getProduct().getProduct_id());
                st3.executeUpdate();
            }
        } catch (SQLException e) {

        }
    }

}
