/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

/**
 *
 * @author marce
 */
import java.util.ArrayList;

public class Users {
    
    private String nombre;
    private String id_usuario;
    private String contraseña;

    public Users() {
    }

    public Users(String nombre, String id_usuario, String contraseña) {
        this.nombre = nombre;
        this.id_usuario = id_usuario;
        this.contraseña = contraseña;
    }

    public String getNombre() {
        return nombre;
    }

    public String getId_usuario() {
        return id_usuario;
    }

    public String getContraseña() {
        return contraseña;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setId_usuario(String id_usuario) {
        this.id_usuario = id_usuario;
    }

    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }
    
    public static ArrayList<Users> inicializaUsuarios() {
        ArrayList<Users> usersArray = new ArrayList<>();
        Users user = new Users();
        user.setNombre("Marcelo Marquez");
        user.setId_usuario("368911");
        user.setContraseña("abc123");
        
        usersArray.add(user);
        usersArray.add(new Users("Josue Francisco", "367014", "abc123"));
        usersArray.add(new Users("Christian Cardenas", "369013", "abc123"));
        return usersArray;
    }
    
    public static Users validaPorUsuario(ArrayList<Users> usuarios, String usuario, String pass) {
        for (Users u : usuarios) {
            if (u.getNombre().equals(usuario) && u.getContraseña().equals(pass)) {
                System.out.println("Usuario encontrado");
                return u;
            }
        }
        return null;
    }
    
    public static ArrayList<Users> agregaUsuario(ArrayList<Users> usersArray, String nombre, String id, String pwd) {
        if (usersArray == null) {
            usersArray = new ArrayList<>();
        }

        Users user = new Users();
        user.setNombre(nombre);
        user.setId_usuario(id);
        user.setContraseña(pwd);
        usersArray.add(user);
        System.out.println("Imprimiendo datos del usuario...");
        for (Users u : usersArray) {
            System.out.println("user = " + u.getNombre());
        }
        return usersArray;
    }
    
    public static Users buscarPorNombreYId(ArrayList<Users> usuarios, String nombre, String id) {
    for (Users u : usuarios) {
        if (u.getNombre().equals(nombre) && u.getId_usuario().equals(id)) {
            return u;
        }
    }
    return null; // Si no se encuentra el usuario
}
    
    // Otros métodos de la clase


}
