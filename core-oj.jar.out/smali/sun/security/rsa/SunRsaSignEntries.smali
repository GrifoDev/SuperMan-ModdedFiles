.class public final Lsun/security/rsa/SunRsaSignEntries;
.super Ljava/lang/Object;
.source "SunRsaSignEntries.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static putEntries(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v1, "KeyFactory.RSA"

    const-string/jumbo v2, "sun.security.rsa.RSAKeyFactory"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "KeyPairGenerator.RSA"

    const-string/jumbo v2, "sun.security.rsa.RSAKeyPairGenerator"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "Signature.MD2withRSA"

    const-string/jumbo v2, "sun.security.rsa.RSASignature$MD2withRSA"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "Signature.MD5withRSA"

    const-string/jumbo v2, "sun.security.rsa.RSASignature$MD5withRSA"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "Signature.SHA1withRSA"

    const-string/jumbo v2, "sun.security.rsa.RSASignature$SHA1withRSA"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "Signature.SHA256withRSA"

    const-string/jumbo v2, "sun.security.rsa.RSASignature$SHA256withRSA"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "Signature.SHA384withRSA"

    const-string/jumbo v2, "sun.security.rsa.RSASignature$SHA384withRSA"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "Signature.SHA512withRSA"

    const-string/jumbo v2, "sun.security.rsa.RSASignature$SHA512withRSA"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "java.security.interfaces.RSAPublicKey|java.security.interfaces.RSAPrivateKey"

    const-string/jumbo v1, "Signature.MD2withRSA SupportedKeyClasses"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "Signature.MD5withRSA SupportedKeyClasses"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "Signature.SHA1withRSA SupportedKeyClasses"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "Signature.SHA256withRSA SupportedKeyClasses"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "Signature.SHA384withRSA SupportedKeyClasses"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "Signature.SHA512withRSA SupportedKeyClasses"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "Alg.Alias.KeyFactory.1.2.840.113549.1.1"

    const-string/jumbo v2, "RSA"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "Alg.Alias.KeyFactory.OID.1.2.840.113549.1.1"

    const-string/jumbo v2, "RSA"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "Alg.Alias.KeyPairGenerator.1.2.840.113549.1.1"

    const-string/jumbo v2, "RSA"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "Alg.Alias.KeyPairGenerator.OID.1.2.840.113549.1.1"

    const-string/jumbo v2, "RSA"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "Alg.Alias.Signature.1.2.840.113549.1.1.2"

    const-string/jumbo v2, "MD2withRSA"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.2"

    const-string/jumbo v2, "MD2withRSA"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "Alg.Alias.Signature.1.2.840.113549.1.1.4"

    const-string/jumbo v2, "MD5withRSA"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.4"

    const-string/jumbo v2, "MD5withRSA"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "Alg.Alias.Signature.1.2.840.113549.1.1.5"

    const-string/jumbo v2, "SHA1withRSA"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.5"

    const-string/jumbo v2, "SHA1withRSA"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "Alg.Alias.Signature.1.3.14.3.2.29"

    const-string/jumbo v2, "SHA1withRSA"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "Alg.Alias.Signature.1.2.840.113549.1.1.11"

    const-string/jumbo v2, "SHA256withRSA"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.11"

    const-string/jumbo v2, "SHA256withRSA"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "Alg.Alias.Signature.1.2.840.113549.1.1.12"

    const-string/jumbo v2, "SHA384withRSA"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.12"

    const-string/jumbo v2, "SHA384withRSA"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "Alg.Alias.Signature.1.2.840.113549.1.1.13"

    const-string/jumbo v2, "SHA512withRSA"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.13"

    const-string/jumbo v2, "SHA512withRSA"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
