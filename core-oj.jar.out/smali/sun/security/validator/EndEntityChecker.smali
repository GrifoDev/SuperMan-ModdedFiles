.class Lsun/security/validator/EndEntityChecker;
.super Ljava/lang/Object;
.source "EndEntityChecker.java"


# static fields
.field private static final KU_KEY_AGREEMENT:I = 0x4

.field private static final KU_KEY_ENCIPHERMENT:I = 0x2

.field private static final KU_SERVER_ENCRYPTION:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final KU_SERVER_KEY_AGREEMENT:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final KU_SERVER_SIGNATURE:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final KU_SIGNATURE:I = 0x0

.field private static final NSCT_CODE_SIGNING:Ljava/lang/String; = "object_signing"

.field private static final NSCT_SSL_CLIENT:Ljava/lang/String; = "ssl_client"

.field private static final NSCT_SSL_SERVER:Ljava/lang/String; = "ssl_server"

.field private static final OID_EKU_ANY_USAGE:Ljava/lang/String; = "2.5.29.37.0"

.field private static final OID_EKU_CODE_SIGNING:Ljava/lang/String; = "1.3.6.1.5.5.7.3.3"

.field private static final OID_EKU_MS_SGC:Ljava/lang/String; = "1.3.6.1.4.1.311.10.3.3"

.field private static final OID_EKU_NS_SGC:Ljava/lang/String; = "2.16.840.1.113730.4.1"

.field private static final OID_EKU_TIME_STAMPING:Ljava/lang/String; = "1.3.6.1.5.5.7.3.8"

.field private static final OID_EKU_TLS_CLIENT:Ljava/lang/String; = "1.3.6.1.5.5.7.3.2"

.field private static final OID_EKU_TLS_SERVER:Ljava/lang/String; = "1.3.6.1.5.5.7.3.1"

.field private static final OID_EXTENDED_KEY_USAGE:Ljava/lang/String; = "2.5.29.37"

.field private static final OID_SUBJECT_ALT_NAME:Ljava/lang/String; = "2.5.29.17"


# instance fields
.field private final type:Ljava/lang/String;

.field private final variant:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 109
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "DHE_DSS"

    aput-object v1, v0, v3

    const-string/jumbo v1, "DHE_RSA"

    aput-object v1, v0, v4

    const-string/jumbo v1, "ECDHE_ECDSA"

    aput-object v1, v0, v5

    const-string/jumbo v1, "ECDHE_RSA"

    aput-object v1, v0, v6

    .line 110
    const-string/jumbo v1, "RSA_EXPORT"

    aput-object v1, v0, v7

    const-string/jumbo v1, "UNKNOWN"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 109
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 108
    sput-object v0, Lsun/security/validator/EndEntityChecker;->KU_SERVER_SIGNATURE:Ljava/util/Collection;

    .line 114
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "RSA"

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 113
    sput-object v0, Lsun/security/validator/EndEntityChecker;->KU_SERVER_ENCRYPTION:Ljava/util/Collection;

    .line 118
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "DH_DSS"

    aput-object v1, v0, v3

    const-string/jumbo v1, "DH_RSA"

    aput-object v1, v0, v4

    const-string/jumbo v1, "ECDH_ECDSA"

    aput-object v1, v0, v5

    const-string/jumbo v1, "ECDH_RSA"

    aput-object v1, v0, v6

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 117
    sput-object v0, Lsun/security/validator/EndEntityChecker;->KU_SERVER_KEY_AGREEMENT:Ljava/util/Collection;

    .line 66
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "variant"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lsun/security/validator/EndEntityChecker;->type:Ljava/lang/String;

    .line 128
    iput-object p2, p0, Lsun/security/validator/EndEntityChecker;->variant:Ljava/lang/String;

    .line 126
    return-void
.end method

.method private checkCodeSigning(Ljava/security/cert/X509Certificate;)V
    .locals 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 316
    invoke-direct {p0, p1}, Lsun/security/validator/EndEntityChecker;->getCriticalExtensions(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v0

    .line 318
    .local v0, "exts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lsun/security/validator/EndEntityChecker;->checkKeyUsage(Ljava/security/cert/X509Certificate;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 319
    new-instance v1, Lsun/security/validator/ValidatorException;

    .line 320
    const-string/jumbo v2, "KeyUsage does not allow digital signatures"

    .line 321
    sget-object v3, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    .line 319
    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v1

    .line 324
    :cond_0
    const-string/jumbo v1, "1.3.6.1.5.5.7.3.3"

    invoke-direct {p0, p1, v0, v1}, Lsun/security/validator/EndEntityChecker;->checkEKU(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 325
    new-instance v1, Lsun/security/validator/ValidatorException;

    .line 326
    const-string/jumbo v2, "Extended key usage does not permit use for code signing"

    .line 327
    sget-object v3, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    .line 325
    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v1

    .line 332
    :cond_1
    iget-object v1, p0, Lsun/security/validator/EndEntityChecker;->variant:Ljava/lang/String;

    const-string/jumbo v2, "jce signing"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 333
    const-string/jumbo v1, "object_signing"

    invoke-static {p1, v1}, Lsun/security/validator/SimpleValidator;->getNetscapeCertTypeBit(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 334
    new-instance v1, Lsun/security/validator/ValidatorException;

    .line 335
    const-string/jumbo v2, "Netscape cert type does not permit use for code signing"

    .line 336
    sget-object v3, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    .line 334
    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v1

    .line 338
    :cond_2
    const-string/jumbo v1, "2.16.840.1.113730.1.1"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 342
    :cond_3
    const-string/jumbo v1, "2.5.29.15"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 343
    const-string/jumbo v1, "2.5.29.37"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 345
    invoke-direct {p0, v0}, Lsun/security/validator/EndEntityChecker;->checkRemainingExtensions(Ljava/util/Set;)V

    .line 315
    return-void
.end method

.method private checkEKU(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Z
    .locals 3
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p3, "expectedEKU"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .local p2, "exts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 196
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v0

    .line 197
    .local v0, "eku":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 198
    return v1

    .line 200
    :cond_0
    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v1, "2.5.29.37.0"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    :cond_1
    return v1
.end method

.method private checkKeyUsage(Ljava/security/cert/X509Certificate;I)Z
    .locals 2
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "bit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    .line 211
    .local v0, "keyUsage":[Z
    if-nez v0, :cond_0

    .line 212
    const/4 v1, 0x1

    return v1

    .line 214
    :cond_0
    array-length v1, v0

    if-le v1, p2, :cond_1

    aget-boolean v1, v0, p2

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkRemainingExtensions(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "exts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v0, "2.5.29.19"

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 182
    const-string/jumbo v0, "2.5.29.17"

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 184
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Ljava/security/cert/CertificateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Certificate contains unsupported critical extensions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    return-void
.end method

.method private checkTLSClient(Ljava/security/cert/X509Certificate;)V
    .locals 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lsun/security/validator/EndEntityChecker;->getCriticalExtensions(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v0

    .line 226
    .local v0, "exts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lsun/security/validator/EndEntityChecker;->checkKeyUsage(Ljava/security/cert/X509Certificate;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    new-instance v1, Lsun/security/validator/ValidatorException;

    .line 228
    const-string/jumbo v2, "KeyUsage does not allow digital signatures"

    .line 229
    sget-object v3, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    .line 227
    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v1

    .line 232
    :cond_0
    const-string/jumbo v1, "1.3.6.1.5.5.7.3.2"

    invoke-direct {p0, p1, v0, v1}, Lsun/security/validator/EndEntityChecker;->checkEKU(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 233
    new-instance v1, Lsun/security/validator/ValidatorException;

    const-string/jumbo v2, "Extended key usage does not permit use for TLS client authentication"

    .line 235
    sget-object v3, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    .line 233
    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v1

    .line 238
    :cond_1
    const-string/jumbo v1, "ssl_client"

    invoke-static {p1, v1}, Lsun/security/validator/SimpleValidator;->getNetscapeCertTypeBit(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 239
    new-instance v1, Lsun/security/validator/ValidatorException;

    .line 240
    const-string/jumbo v2, "Netscape cert type does not permit use for SSL client"

    .line 241
    sget-object v3, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    .line 239
    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v1

    .line 245
    :cond_2
    const-string/jumbo v1, "2.5.29.15"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 246
    const-string/jumbo v1, "2.5.29.37"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 247
    const-string/jumbo v1, "2.16.840.1.113730.1.1"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 249
    invoke-direct {p0, v0}, Lsun/security/validator/EndEntityChecker;->checkRemainingExtensions(Ljava/util/Set;)V

    .line 223
    return-void
.end method

.method private checkTLSServer(Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "parameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 260
    invoke-direct {p0, p1}, Lsun/security/validator/EndEntityChecker;->getCriticalExtensions(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v0

    .line 262
    .local v0, "exts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v1, Lsun/security/validator/EndEntityChecker;->KU_SERVER_ENCRYPTION:Ljava/util/Collection;

    invoke-interface {v1, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Lsun/security/validator/EndEntityChecker;->checkKeyUsage(Ljava/security/cert/X509Certificate;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 264
    new-instance v1, Lsun/security/validator/ValidatorException;

    .line 265
    const-string/jumbo v2, "KeyUsage does not allow key encipherment"

    .line 266
    sget-object v3, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    .line 264
    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v1

    .line 268
    :cond_0
    sget-object v1, Lsun/security/validator/EndEntityChecker;->KU_SERVER_SIGNATURE:Ljava/util/Collection;

    invoke-interface {v1, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lsun/security/validator/EndEntityChecker;->checkKeyUsage(Ljava/security/cert/X509Certificate;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 270
    new-instance v1, Lsun/security/validator/ValidatorException;

    .line 271
    const-string/jumbo v2, "KeyUsage does not allow digital signatures"

    .line 272
    sget-object v3, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    .line 270
    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v1

    .line 274
    :cond_1
    sget-object v1, Lsun/security/validator/EndEntityChecker;->KU_SERVER_KEY_AGREEMENT:Ljava/util/Collection;

    invoke-interface {v1, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 275
    const/4 v1, 0x4

    invoke-direct {p0, p1, v1}, Lsun/security/validator/EndEntityChecker;->checkKeyUsage(Ljava/security/cert/X509Certificate;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 276
    new-instance v1, Lsun/security/validator/ValidatorException;

    .line 277
    const-string/jumbo v2, "KeyUsage does not allow key agreement"

    .line 278
    sget-object v3, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    .line 276
    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v1

    .line 281
    :cond_2
    new-instance v1, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown authType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 284
    :cond_3
    const-string/jumbo v1, "1.3.6.1.5.5.7.3.1"

    invoke-direct {p0, p1, v0, v1}, Lsun/security/validator/EndEntityChecker;->checkEKU(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 287
    const-string/jumbo v1, "1.3.6.1.4.1.311.10.3.3"

    invoke-direct {p0, p1, v0, v1}, Lsun/security/validator/EndEntityChecker;->checkEKU(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 288
    const-string/jumbo v1, "2.16.840.1.113730.4.1"

    invoke-direct {p0, p1, v0, v1}, Lsun/security/validator/EndEntityChecker;->checkEKU(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 289
    new-instance v1, Lsun/security/validator/ValidatorException;

    .line 290
    const-string/jumbo v2, "Extended key usage does not permit use for TLS server authentication"

    .line 292
    sget-object v3, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    .line 289
    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v1

    .line 296
    :cond_4
    const-string/jumbo v1, "ssl_server"

    invoke-static {p1, v1}, Lsun/security/validator/SimpleValidator;->getNetscapeCertTypeBit(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 297
    new-instance v1, Lsun/security/validator/ValidatorException;

    .line 298
    const-string/jumbo v2, "Netscape cert type does not permit use for SSL server"

    .line 299
    sget-object v3, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    .line 297
    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v1

    .line 303
    :cond_5
    const-string/jumbo v1, "2.5.29.15"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 304
    const-string/jumbo v1, "2.5.29.37"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 305
    const-string/jumbo v1, "2.16.840.1.113730.1.1"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 307
    invoke-direct {p0, v0}, Lsun/security/validator/EndEntityChecker;->checkRemainingExtensions(Ljava/util/Set;)V

    .line 259
    return-void
.end method

.method private checkTSAServer(Ljava/security/cert/X509Certificate;)V
    .locals 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 355
    invoke-direct {p0, p1}, Lsun/security/validator/EndEntityChecker;->getCriticalExtensions(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v0

    .line 357
    .local v0, "exts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lsun/security/validator/EndEntityChecker;->checkKeyUsage(Ljava/security/cert/X509Certificate;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 358
    new-instance v1, Lsun/security/validator/ValidatorException;

    .line 359
    const-string/jumbo v2, "KeyUsage does not allow digital signatures"

    .line 360
    sget-object v3, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    .line 358
    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v1

    .line 363
    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    .line 364
    new-instance v1, Lsun/security/validator/ValidatorException;

    .line 365
    const-string/jumbo v2, "Certificate does not contain an extended key usage extension required for a TSA server"

    .line 367
    sget-object v3, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    .line 364
    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v1

    .line 370
    :cond_1
    const-string/jumbo v1, "1.3.6.1.5.5.7.3.8"

    invoke-direct {p0, p1, v0, v1}, Lsun/security/validator/EndEntityChecker;->checkEKU(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 371
    new-instance v1, Lsun/security/validator/ValidatorException;

    .line 372
    const-string/jumbo v2, "Extended key usage does not permit use for TSA server"

    .line 373
    sget-object v3, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    .line 371
    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    throw v1

    .line 377
    :cond_2
    const-string/jumbo v1, "2.5.29.15"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 378
    const-string/jumbo v1, "2.5.29.37"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 380
    invoke-direct {p0, v0}, Lsun/security/validator/EndEntityChecker;->checkRemainingExtensions(Ljava/util/Set;)V

    .line 354
    return-void
.end method

.method private getCriticalExtensions(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .locals 1
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    .line 163
    .local v0, "exts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 164
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 166
    :cond_0
    return-object v0
.end method

.method static getInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/security/validator/EndEntityChecker;
    .locals 1
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "variant"    # Ljava/lang/String;

    .prologue
    .line 132
    new-instance v0, Lsun/security/validator/EndEntityChecker;

    invoke-direct {v0, p0, p1}, Lsun/security/validator/EndEntityChecker;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method check(Ljava/security/cert/X509Certificate;Ljava/lang/Object;)V
    .locals 3
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "parameter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lsun/security/validator/EndEntityChecker;->variant:Ljava/lang/String;

    const-string/jumbo v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lsun/security/validator/EndEntityChecker;->variant:Ljava/lang/String;

    const-string/jumbo v1, "tls server"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    check-cast p2, Ljava/lang/String;

    .end local p2    # "parameter":Ljava/lang/Object;
    invoke-direct {p0, p1, p2}, Lsun/security/validator/EndEntityChecker;->checkTLSServer(Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 136
    :goto_0
    return-void

    .line 142
    .restart local p2    # "parameter":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lsun/security/validator/EndEntityChecker;->variant:Ljava/lang/String;

    const-string/jumbo v1, "tls client"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    invoke-direct {p0, p1}, Lsun/security/validator/EndEntityChecker;->checkTLSClient(Ljava/security/cert/X509Certificate;)V

    goto :goto_0

    .line 144
    :cond_2
    iget-object v0, p0, Lsun/security/validator/EndEntityChecker;->variant:Ljava/lang/String;

    const-string/jumbo v1, "code signing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 145
    invoke-direct {p0, p1}, Lsun/security/validator/EndEntityChecker;->checkCodeSigning(Ljava/security/cert/X509Certificate;)V

    goto :goto_0

    .line 146
    :cond_3
    iget-object v0, p0, Lsun/security/validator/EndEntityChecker;->variant:Ljava/lang/String;

    const-string/jumbo v1, "jce signing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 147
    invoke-direct {p0, p1}, Lsun/security/validator/EndEntityChecker;->checkCodeSigning(Ljava/security/cert/X509Certificate;)V

    goto :goto_0

    .line 148
    :cond_4
    iget-object v0, p0, Lsun/security/validator/EndEntityChecker;->variant:Ljava/lang/String;

    const-string/jumbo v1, "plugin code signing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 149
    invoke-direct {p0, p1}, Lsun/security/validator/EndEntityChecker;->checkCodeSigning(Ljava/security/cert/X509Certificate;)V

    goto :goto_0

    .line 150
    :cond_5
    iget-object v0, p0, Lsun/security/validator/EndEntityChecker;->variant:Ljava/lang/String;

    const-string/jumbo v1, "tsa server"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 151
    invoke-direct {p0, p1}, Lsun/security/validator/EndEntityChecker;->checkTSAServer(Ljava/security/cert/X509Certificate;)V

    goto :goto_0

    .line 153
    :cond_6
    new-instance v0, Ljava/security/cert/CertificateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown variant: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/validator/EndEntityChecker;->variant:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
