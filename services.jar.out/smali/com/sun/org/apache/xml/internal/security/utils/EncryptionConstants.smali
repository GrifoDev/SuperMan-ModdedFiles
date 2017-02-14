.class public Lcom/sun/org/apache/xml/internal/security/utils/EncryptionConstants;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field public static final ALGO_ID_AUTHENTICATION_XMLSIGNATURE:Ljava/lang/String; = "http://www.w3.org/TR/2001/CR-xmldsig-core-20010419/"

.field public static final ALGO_ID_BLOCKCIPHER_AES128:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#aes128-cbc"

.field public static final ALGO_ID_BLOCKCIPHER_AES192:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#aes192-cbc"

.field public static final ALGO_ID_BLOCKCIPHER_AES256:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#aes256-cbc"

.field public static final ALGO_ID_BLOCKCIPHER_TRIPLEDES:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#tripledes-cbc"

.field public static final ALGO_ID_C14N_OMITCOMMENTS:Ljava/lang/String; = "http://www.w3.org/TR/2001/REC-xml-c14n-20010315"

.field public static final ALGO_ID_C14N_WITHCOMMENTS:Ljava/lang/String; = "http://www.w3.org/TR/2001/REC-xml-c14n-20010315#WithComments"

.field public static final ALGO_ID_ENCODING_BASE64:Ljava/lang/String; = "http://www.w3.org/2000/09/xmldsig#base64"

.field public static final ALGO_ID_KEYAGREEMENT_DH:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#dh"

.field public static final ALGO_ID_KEYTRANSPORT_RSA15:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#rsa-1_5"

.field public static final ALGO_ID_KEYTRANSPORT_RSAOAEP:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#rsa-oaep-mgf1p"

.field public static final ALGO_ID_KEYWRAP_AES128:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#kw-aes128"

.field public static final ALGO_ID_KEYWRAP_AES192:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#kw-aes192"

.field public static final ALGO_ID_KEYWRAP_AES256:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#kw-aes256"

.field public static final ALGO_ID_KEYWRAP_TRIPLEDES:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#kw-tripledes"

.field public static final ENCRYPTIONSPECIFICATION_URL:Ljava/lang/String; = "http://www.w3.org/TR/2001/WD-xmlenc-core-20010626/"

.field public static final EncryptionSpecNS:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#"

.field public static final TYPE_CONTENT:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#Content"

.field public static final TYPE_ELEMENT:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#Element"

.field public static final TYPE_MEDIATYPE:Ljava/lang/String; = "http://www.isi.edu/in-notes/iana/assignments/media-types/"

.field public static final _ATT_ALGORITHM:Ljava/lang/String; = "Algorithm"

.field public static final _ATT_ENCODING:Ljava/lang/String; = "Encoding"

.field public static final _ATT_ID:Ljava/lang/String; = "Id"

.field public static final _ATT_MIMETYPE:Ljava/lang/String; = "MimeType"

.field public static final _ATT_RECIPIENT:Ljava/lang/String; = "Recipient"

.field public static final _ATT_TARGET:Ljava/lang/String; = "Target"

.field public static final _ATT_TYPE:Ljava/lang/String; = "Type"

.field public static final _ATT_URI:Ljava/lang/String; = "URI"

.field public static final _TAG_AGREEMENTMETHOD:Ljava/lang/String; = "AgreementMethod"

.field public static final _TAG_CARRIEDKEYNAME:Ljava/lang/String; = "CarriedKeyName"

.field public static final _TAG_CIPHERDATA:Ljava/lang/String; = "CipherData"

.field public static final _TAG_CIPHERREFERENCE:Ljava/lang/String; = "CipherReference"

.field public static final _TAG_CIPHERVALUE:Ljava/lang/String; = "CipherValue"

.field public static final _TAG_DATAREFERENCE:Ljava/lang/String; = "DataReference"

.field public static final _TAG_ENCRYPTEDDATA:Ljava/lang/String; = "EncryptedData"

.field public static final _TAG_ENCRYPTEDKEY:Ljava/lang/String; = "EncryptedKey"

.field public static final _TAG_ENCRYPTIONMETHOD:Ljava/lang/String; = "EncryptionMethod"

.field public static final _TAG_ENCRYPTIONPROPERTIES:Ljava/lang/String; = "EncryptionProperties"

.field public static final _TAG_ENCRYPTIONPROPERTY:Ljava/lang/String; = "EncryptionProperty"

.field public static final _TAG_KA_NONCE:Ljava/lang/String; = "KA-Nonce"

.field public static final _TAG_KEYREFERENCE:Ljava/lang/String; = "KeyReference"

.field public static final _TAG_KEYSIZE:Ljava/lang/String; = "KeySize"

.field public static final _TAG_OAEPPARAMS:Ljava/lang/String; = "OAEPparams"

.field public static final _TAG_ORIGINATORKEYINFO:Ljava/lang/String; = "OriginatorKeyInfo"

.field public static final _TAG_RECIPIENTKEYINFO:Ljava/lang/String; = "RecipientKeyInfo"

.field public static final _TAG_REFERENCELIST:Ljava/lang/String; = "ReferenceList"

.field public static final _TAG_TRANSFORMS:Ljava/lang/String; = "Transforms"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEncryptionSpecNSprefix()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "http://www.w3.org/2001/04/xmlenc#"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getDefaultPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setEncryptionSpecNSprefix(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const-string/jumbo v0, "http://www.w3.org/2001/04/xmlenc#"

    invoke-static {v0, p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->setDefaultPrefix(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
