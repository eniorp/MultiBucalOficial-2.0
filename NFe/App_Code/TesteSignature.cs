using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Security.Cryptography.Xml;
using System.Web;
//using System.Security.Cryptography;


using System.Xml;


/// <summary>
/// Summary description for TesteSignature
/// </summary>
public class TesteSignature
{
	public TesteSignature()
	{
		//
		// TODO: Add constructor logic here
		//
	}

public void SignXML()
{
            // Create a new CspParameters object to specify
            // a key container.
            CspParameters cspParams = new CspParameters();
            cspParams.KeyContainerName = "XML_DSIG_RSA_KEY";

            // Create a new RSA signing key and save it in the container. 
            RSACryptoServiceProvider rsaKey = new RSACryptoServiceProvider(cspParams);

            // Create a new XML document.
            XmlDocument xmlDoc = new XmlDocument();

            // Load an XML file into the XmlDocument object.
            xmlDoc.PreserveWhitespace = false;
            xmlDoc.Load(@"c:\temp\RpsNFe.xml");

            // Sign the XML document. 
            SignXml(xmlDoc, rsaKey);

            Console.WriteLine("XML file signed.");

            // Save the document.
            xmlDoc.Save(@"c:\temp\RpsNFeSign.xml");

    }


    private void SignXml(XmlDocument Doc, RSA Key)
    {
        // Check arguments.
        if (Doc == null)
            throw new ArgumentException("Doc");
        if (Key == null)
            throw new ArgumentException("Key");

        // Create a SignedXml object.
        
        
        SignedXml signedXml = new SignedXml(Doc);

        // Add the key to the SignedXml document.
        signedXml.SigningKey = Key;

        // Create a reference to be signed.
        Reference reference = new Reference();
        reference.Uri = "";

        // Add an enveloped transformation to the reference.
        XmlDsigEnvelopedSignatureTransform env = new XmlDsigEnvelopedSignatureTransform();
        reference.AddTransform(env);

        // Add the reference to the SignedXml object.
        signedXml.AddReference(reference);

        // Compute the signature.
        signedXml.ComputeSignature();

        // Get the XML representation of the signature and save
        // it to an XmlElement object.
        XmlElement xmlDigitalSignature = signedXml.GetXml();

        // Append the element to the XML document.
        
        Doc.DocumentElement.AppendChild(Doc.ImportNode(xmlDigitalSignature, true));

    }
}
