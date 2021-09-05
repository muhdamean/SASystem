using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security;
using System.Security.Cryptography;
using System.Text;

/// <summary>
/// Summary description for PasswordHash
/// </summary>
public class PasswordHash
{
    public PasswordHash()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    /// <summary>
    /// SHA256 hash function
    /// </summary>
    /// <param name="hashAlgorithm"></param>
    /// <param name="input"></param>
    /// <returns></returns>
    public static string GetMyHashedPasswordHash(HashAlgorithm hashAlgorithm, string input)
    {

        // Convert the input string to a byte array and compute the hash.
        byte[] data = hashAlgorithm.ComputeHash(Encoding.UTF8.GetBytes(input));

        // Create a new Stringbuilder to collect the bytes
        // and create a string.
        var sBuilder = new StringBuilder();

        // Loop through each byte of the hashed data
        // and format each one as a hexadecimal string.
        for (int i = 0; i < data.Length; i++)
        {
            sBuilder.Append(data[i].ToString("x2"));
        }

        // Return the hexadecimal string.
        return sBuilder.ToString();
    }
}