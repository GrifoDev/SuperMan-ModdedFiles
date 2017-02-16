.class public final Lsun/security/rsa/SunRsaSignEntries;
.super Ljava/lang/Object;
.source "SunRsaSignEntries.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
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

    .prologue
    .line 45
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    const-string/jumbo v1, "KeyFactory.RSA"

    .line 46
    const-string/jumbo v2, "sun.security.rsa.RSAKeyFactory"

    .line 45
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string/jumbo v1, "KeyPairGenerator.RSA"

    .line 48
    const-string/jumbo v2, "sun.security.rsa.RSAKeyPairGenerator"

    .line 47
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string/jumbo v1, "Signature.MD2withRSA"

    .line 50
    const-string/jumbo v2, "sun.security.rsa.RSASignature$MD2withRSA"

    .line 49
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string/jumbo v1, "Signature.MD5withRSA"

    .line 52
    const-string/jumbo v2, "sun.security.rsa.RSASignature$MD5withRSA"

    .line 51
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string/jumbo v1, "Signature.SHA1withRSA"

    .line 54
    const-string/jumbo v2, "sun.security.rsa.RSASignature$SHA1withRSA"

    .line 53
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string/jumbo v1, "Signature.SHA256withRSA"

    .line 56
    const-string/jumbo v2, "sun.security.rsa.RSASignature$SHA256withRSA"

    .line 55
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string/jumbo v1, "Signature.SHA384withRSA"

    .line 58
    const-string/jumbo v2, "sun.security.rsa.RSASignature$SHA384withRSA"

    .line 57
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string/jumbo v1, "Signature.SHA512withRSA"

    .line 60
    const-string/jumbo v2, "sun.security.rsa.RSASignature$SHA512withRSA"

    .line 59
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string/jumbo v0, "java.security.interfaces.RSAPublicKey|java.security.interfaces.RSAPrivateKey"

    .line 66
    .local v0, "rsaKeyClasses":Ljava/lang/String;
    const-string/jumbo v1, "Signature.MD2withRSA SupportedKeyClasses"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string/jumbo v1, "Signature.MD5withRSA SupportedKeyClasses"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string/jumbo v1, "Signature.SHA1withRSA SupportedKeyClasses"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string/jumbo v1, "Signature.SHA256withRSA SupportedKeyClasses"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string/jumbo v1, "Signature.SHA384withRSA SupportedKeyClasses"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string/jumbo v1, "Signature.SHA512withRSA SupportedKeyClasses"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string/jumbo v1, "Alg.Alias.KeyFactory.1.2.840.113549.1.1"

    const-string/jumbo v2, "RSA"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string/jumbo v1, "Alg.Alias.KeyFactory.OID.1.2.840.113549.1.1"

    const-string/jumbo v2, "RSA"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string/jumbo v1, "Alg.Alias.KeyPairGenerator.1.2.840.113549.1.1"

    const-string/jumbo v2, "RSA"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string/jumbo v1, "Alg.Alias.KeyPairGenerator.OID.1.2.840.113549.1.1"

    const-string/jumbo v2, "RSA"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string/jumbo v1, "Alg.Alias.Signature.1.2.840.113549.1.1.2"

    const-string/jumbo v2, "MD2withRSA"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string/jumbo v1, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.2"

    const-string/jumbo v2, "MD2withRSA"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string/jumbo v1, "Alg.Alias.Signature.1.2.840.113549.1.1.4"

    const-string/jumbo v2, "MD5withRSA"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string/jumbo v1, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.4"

    const-string/jumbo v2, "MD5withRSA"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string/jumbo v1, "Alg.Alias.Signature.1.2.840.113549.1.1.5"

    const-string/jumbo v2, "SHA1withRSA"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string/jumbo v1, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.5"

    const-string/jumbo v2, "SHA1withRSA"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string/jumbo v1, "Alg.Alias.Signature.1.3.14.3.2.29"

    const-string/jumbo v2, "SHA1withRSA"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string/jumbo v1, "Alg.Alias.Signature.1.2.840.113549.1.1.11"

    const-string/jumbo v2, "SHA256withRSA"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string/jumbo v1, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.11"

    const-string/jumbo v2, "SHA256withRSA"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string/jumbo v1, "Alg.Alias.Signature.1.2.840.113549.1.1.12"

    const-string/jumbo v2, "SHA384withRSA"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string/jumbo v1, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.12"

    const-string/jumbo v2, "SHA384withRSA"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string/jumbo v1, "Alg.Alias.Signature.1.2.840.113549.1.1.13"

    const-string/jumbo v2, "SHA512withRSA"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string/jumbo v1, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.13"

    const-string/jumbo v2, "SHA512withRSA"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method
