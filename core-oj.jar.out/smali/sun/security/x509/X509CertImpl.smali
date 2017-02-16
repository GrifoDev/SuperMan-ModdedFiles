.class public Lsun/security/x509/X509CertImpl;
.super Ljava/security/cert/X509Certificate;
.source "X509CertImpl.java"

# interfaces
.implements Lsun/security/util/DerEncoder;


# static fields
.field public static final ALG_ID:Ljava/lang/String; = "algorithm"

.field private static final AUTH_INFO_ACCESS_OID:Ljava/lang/String; = "1.3.6.1.5.5.7.1.1"

.field private static final BASIC_CONSTRAINT_OID:Ljava/lang/String; = "2.5.29.19"

.field private static final DOT:Ljava/lang/String; = "."

.field private static final EXTENDED_KEY_USAGE_OID:Ljava/lang/String; = "2.5.29.37"

.field public static final INFO:Ljava/lang/String; = "info"

.field private static final ISSUER_ALT_NAME_OID:Ljava/lang/String; = "2.5.29.18"

.field public static final ISSUER_DN:Ljava/lang/String; = "x509.info.issuer.dname"

.field private static final KEY_USAGE_OID:Ljava/lang/String; = "2.5.29.15"

.field public static final NAME:Ljava/lang/String; = "x509"

.field private static final NUM_STANDARD_KEY_USAGE:I = 0x9

.field public static final PUBLIC_KEY:Ljava/lang/String; = "x509.info.key.value"

.field public static final SERIAL_ID:Ljava/lang/String; = "x509.info.serialNumber.number"

.field public static final SIG:Ljava/lang/String; = "x509.signature"

.field public static final SIGNATURE:Ljava/lang/String; = "signature"

.field public static final SIGNED_CERT:Ljava/lang/String; = "signed_cert"

.field public static final SIG_ALG:Ljava/lang/String; = "x509.algorithm"

.field private static final SUBJECT_ALT_NAME_OID:Ljava/lang/String; = "2.5.29.17"

.field public static final SUBJECT_DN:Ljava/lang/String; = "x509.info.subject.dname"

.field public static final VERSION:Ljava/lang/String; = "x509.info.version.number"

.field private static final serialVersionUID:J = -0x2ffbe8ab06f69c16L


# instance fields
.field protected algId:Lsun/security/x509/AlgorithmId;

.field private authInfoAccess:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lsun/security/x509/AccessDescription;",
            ">;"
        }
    .end annotation
.end field

.field private extKeyUsage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fingerprints:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected info:Lsun/security/x509/X509CertInfo;

.field private issuerAlternativeNames:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation
.end field

.field private readOnly:Z

.field protected signature:[B

.field private signedCert:[B

.field private subjectAlternativeNames:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation
.end field

.field private verificationResult:Z

.field private verifiedProvider:Ljava/lang/String;

.field private verifiedPublicKey:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 179
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    .line 129
    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    .line 130
    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 131
    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    .line 132
    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    .line 1972
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 1971
    iput-object v0, p0, Lsun/security/x509/X509CertImpl;->fingerprints:Ljava/util/concurrent/ConcurrentHashMap;

    .line 179
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 7
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 213
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 126
    const/4 v4, 0x0

    iput-boolean v4, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    .line 129
    iput-object v6, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    .line 130
    iput-object v6, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 131
    iput-object v6, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    .line 132
    iput-object v6, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    .line 1972
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 1971
    iput-object v4, p0, Lsun/security/x509/X509CertImpl;->fingerprints:Ljava/util/concurrent/ConcurrentHashMap;

    .line 215
    const/4 v0, 0x0

    .line 217
    .local v0, "der":Lsun/security/util/DerValue;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 222
    .local v1, "inBuffered":Ljava/io/BufferedInputStream;
    const v4, 0x7fffffff

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 223
    invoke-direct {p0, v1}, Lsun/security/x509/X509CertImpl;->readRFC1421Cert(Ljava/io/InputStream;)Lsun/security/util/DerValue;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 238
    .local v0, "der":Lsun/security/util/DerValue;
    :goto_0
    :try_start_1
    invoke-direct {p0, v0}, Lsun/security/x509/X509CertImpl;->parse(Lsun/security/util/DerValue;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 213
    return-void

    .line 224
    .local v0, "der":Lsun/security/util/DerValue;
    :catch_0
    move-exception v2

    .line 227
    .local v2, "ioe":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->reset()V

    .line 228
    new-instance v0, Lsun/security/util/DerValue;

    .end local v0    # "der":Lsun/security/util/DerValue;
    invoke-direct {v0, v1}, Lsun/security/util/DerValue;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .local v0, "der":Lsun/security/util/DerValue;
    goto :goto_0

    .line 229
    .end local v0    # "der":Lsun/security/util/DerValue;
    :catch_1
    move-exception v3

    .line 230
    .local v3, "ioe1":Ljava/io/IOException;
    new-instance v4, Ljava/security/cert/CertificateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Input stream must be either DER-encoded bytes or RFC1421 hex-encoded DER-encoded bytes: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 234
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 230
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 239
    .end local v2    # "ioe":Ljava/io/IOException;
    .end local v3    # "ioe1":Ljava/io/IOException;
    .restart local v0    # "der":Lsun/security/util/DerValue;
    :catch_2
    move-exception v2

    .line 240
    .restart local v2    # "ioe":Ljava/io/IOException;
    iput-object v6, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    .line 241
    new-instance v4, Ljava/security/cert/CertificateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to parse DER value of certificate, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 4
    .param p1, "derVal"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 308
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 126
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    .line 129
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    .line 130
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 131
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    .line 132
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    .line 1972
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 1971
    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->fingerprints:Ljava/util/concurrent/ConcurrentHashMap;

    .line 310
    :try_start_0
    invoke-direct {p0, p1}, Lsun/security/x509/X509CertImpl;->parse(Lsun/security/util/DerValue;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    return-void

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Ljava/io/IOException;
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    .line 313
    new-instance v1, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to initialize, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lsun/security/util/DerValue;[B)V
    .locals 4
    .param p1, "derVal"    # Lsun/security/util/DerValue;
    .param p2, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 325
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 126
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    .line 129
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    .line 130
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 131
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    .line 132
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    .line 1972
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 1971
    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->fingerprints:Ljava/util/concurrent/ConcurrentHashMap;

    .line 328
    :try_start_0
    invoke-direct {p0, p1, p2}, Lsun/security/x509/X509CertImpl;->parse(Lsun/security/util/DerValue;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    return-void

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Ljava/io/IOException;
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    .line 331
    new-instance v1, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to initialize, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lsun/security/x509/X509CertInfo;)V
    .locals 2
    .param p1, "certInfo"    # Lsun/security/x509/X509CertInfo;

    .prologue
    const/4 v1, 0x0

    .line 296
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    .line 129
    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    .line 130
    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 131
    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    .line 132
    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    .line 1972
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 1971
    iput-object v0, p0, Lsun/security/x509/X509CertImpl;->fingerprints:Ljava/util/concurrent/ConcurrentHashMap;

    .line 297
    iput-object p1, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 296
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4
    .param p1, "certData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 193
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 126
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    .line 129
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    .line 130
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 131
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    .line 132
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    .line 1972
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 1971
    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->fingerprints:Ljava/util/concurrent/ConcurrentHashMap;

    .line 195
    :try_start_0
    new-instance v1, Lsun/security/util/DerValue;

    invoke-direct {v1, p1}, Lsun/security/util/DerValue;-><init>([B)V

    invoke-direct {p0, v1}, Lsun/security/x509/X509CertImpl;->parse(Lsun/security/util/DerValue;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/io/IOException;
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    .line 198
    new-instance v1, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to initialize, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static byte2hex(BLjava/lang/StringBuffer;)V
    .locals 4
    .param p0, "b"    # B
    .param p1, "buf"    # Ljava/lang/StringBuffer;

    .prologue
    .line 2006
    const/16 v3, 0x10

    new-array v0, v3, [C

    .local v0, "hexChars":[C
    fill-array-data v0, :array_0

    .line 2008
    and-int/lit16 v3, p0, 0xf0

    shr-int/lit8 v1, v3, 0x4

    .line 2009
    .local v1, "high":I
    and-int/lit8 v2, p0, 0xf

    .line 2010
    .local v2, "low":I
    aget-char v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2011
    aget-char v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2005
    return-void

    .line 2006
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private static cloneAltNames(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .local p0, "altNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    const/4 v7, 0x1

    .line 1620
    const/4 v0, 0x0

    .line 1621
    .local v0, "mustClone":Z
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "nameEntry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1622
    .local v1, "nameEntry":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, [B

    if-eqz v6, :cond_0

    .line 1624
    const/4 v0, 0x1

    goto :goto_0

    .line 1627
    .end local v1    # "nameEntry":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_1
    if-eqz v0, :cond_4

    .line 1628
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1629
    .local v5, "namesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<*>;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1630
    .restart local v1    # "nameEntry":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 1631
    .local v4, "nameObject":Ljava/lang/Object;
    instance-of v6, v4, [B

    if-eqz v6, :cond_2

    .line 1633
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1634
    .local v3, "nameEntryCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    check-cast v4, [B

    .end local v4    # "nameObject":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v7, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1635
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1637
    .end local v3    # "nameEntryCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v4    # "nameObject":Ljava/lang/Object;
    :cond_2
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1640
    .end local v1    # "nameEntry":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v4    # "nameObject":Ljava/lang/Object;
    :cond_3
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v6

    return-object v6

    .line 1642
    .end local v5    # "namesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<*>;>;"
    :cond_4
    return-object p0
.end method

.method private getCertificateFingerPrint(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "mdAlg"    # Ljava/lang/String;

    .prologue
    .line 1986
    const-string/jumbo v4, ""

    .line 1988
    .local v4, "fingerPrint":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getEncoded()[B

    move-result-object v3

    .line 1989
    .local v3, "encCertInfo":[B
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 1990
    .local v6, "md":Ljava/security/MessageDigest;
    invoke-virtual {v6, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 1991
    .local v1, "digest":[B
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1992
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v7, v1

    if-ge v5, v7, :cond_0

    .line 1993
    aget-byte v7, v1, v5

    invoke-static {v7, v0}, Lsun/security/x509/X509CertImpl;->byte2hex(BLjava/lang/StringBuffer;)V

    .line 1992
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1995
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1999
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v1    # "digest":[B
    .end local v3    # "encCertInfo":[B
    .end local v5    # "i":I
    .end local v6    # "md":Ljava/security/MessageDigest;
    :goto_1
    return-object v4

    .line 1996
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/security/GeneralSecurityException;
    goto :goto_1
.end method

.method public static getEncodedInternal(Ljava/security/cert/Certificate;)[B
    .locals 1
    .param p0, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 1917
    instance-of v0, p0, Lsun/security/x509/X509CertImpl;

    if-eqz v0, :cond_0

    .line 1918
    check-cast p0, Lsun/security/x509/X509CertImpl;

    .end local p0    # "cert":Ljava/security/cert/Certificate;
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getEncodedInternal()[B

    move-result-object v0

    return-object v0

    .line 1920
    .restart local p0    # "cert":Ljava/security/cert/Certificate;
    :cond_0
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public static getExtendedKeyUsage(Ljava/security/cert/X509Certificate;)Ljava/util/List;
    .locals 7
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1514
    :try_start_0
    const-string/jumbo v5, "2.5.29.37"

    invoke-virtual {p0, v5}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    .line 1515
    .local v2, "ext":[B
    if-nez v2, :cond_0

    .line 1516
    return-object v6

    .line 1517
    :cond_0
    new-instance v4, Lsun/security/util/DerValue;

    invoke-direct {v4, v2}, Lsun/security/util/DerValue;-><init>([B)V

    .line 1518
    .local v4, "val":Lsun/security/util/DerValue;
    invoke-virtual {v4}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v0

    .line 1521
    .local v0, "data":[B
    new-instance v1, Lsun/security/x509/ExtendedKeyUsageExtension;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v5, v0}, Lsun/security/x509/ExtendedKeyUsageExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V

    .line 1522
    .local v1, "ekuExt":Lsun/security/x509/ExtendedKeyUsageExtension;
    invoke-virtual {v1}, Lsun/security/x509/ExtendedKeyUsageExtension;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 1523
    .end local v0    # "data":[B
    .end local v1    # "ekuExt":Lsun/security/x509/ExtendedKeyUsageExtension;
    .end local v2    # "ext":[B
    .end local v4    # "val":Lsun/security/util/DerValue;
    :catch_0
    move-exception v3

    .line 1524
    .local v3, "ioe":Ljava/io/IOException;
    new-instance v5, Ljava/security/cert/CertificateParsingException;

    invoke-direct {v5, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static getIssuerAlternativeNames(Ljava/security/cert/X509Certificate;)Ljava/util/Collection;
    .locals 8
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1747
    :try_start_0
    const-string/jumbo v6, "2.5.29.18"

    invoke-virtual {p0, v6}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v1

    .line 1748
    .local v1, "ext":[B
    if-nez v1, :cond_0

    .line 1749
    return-object v7

    .line 1752
    :cond_0
    new-instance v5, Lsun/security/util/DerValue;

    invoke-direct {v5, v1}, Lsun/security/util/DerValue;-><init>([B)V

    .line 1753
    .local v5, "val":Lsun/security/util/DerValue;
    invoke-virtual {v5}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v0

    .line 1756
    .local v0, "data":[B
    new-instance v3, Lsun/security/x509/IssuerAlternativeNameExtension;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v3, v6, v0}, Lsun/security/x509/IssuerAlternativeNameExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1761
    .local v3, "issuerAltNameExt":Lsun/security/x509/IssuerAlternativeNameExtension;
    :try_start_1
    const-string/jumbo v6, "issuer_name"

    .line 1760
    invoke-virtual {v3, v6}, Lsun/security/x509/IssuerAlternativeNameExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralNames;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 1766
    .local v4, "names":Lsun/security/x509/GeneralNames;
    :try_start_2
    invoke-static {v4}, Lsun/security/x509/X509CertImpl;->makeAltNames(Lsun/security/x509/GeneralNames;)Ljava/util/Collection;

    move-result-object v6

    return-object v6

    .line 1762
    .end local v4    # "names":Lsun/security/x509/GeneralNames;
    :catch_0
    move-exception v2

    .line 1764
    .local v2, "ioe":Ljava/io/IOException;
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    return-object v6

    .line 1767
    .end local v0    # "data":[B
    .end local v1    # "ext":[B
    .end local v2    # "ioe":Ljava/io/IOException;
    .end local v3    # "issuerAltNameExt":Lsun/security/x509/IssuerAlternativeNameExtension;
    .end local v5    # "val":Lsun/security/util/DerValue;
    :catch_1
    move-exception v2

    .line 1768
    .restart local v2    # "ioe":Ljava/io/IOException;
    new-instance v6, Ljava/security/cert/CertificateParsingException;

    invoke-direct {v6, v2}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public static getIssuerX500Principal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;
    .locals 3
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 1903
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, v1}, Lsun/security/x509/X509CertImpl;->getX500Principal(Ljava/security/cert/X509Certificate;Z)Ljavax/security/auth/x500/X500Principal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1904
    :catch_0
    move-exception v0

    .line 1905
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Could not parse issuer"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getSubjectAlternativeNames(Ljava/security/cert/X509Certificate;)Ljava/util/Collection;
    .locals 8
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1684
    :try_start_0
    const-string/jumbo v6, "2.5.29.17"

    invoke-virtual {p0, v6}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v1

    .line 1685
    .local v1, "ext":[B
    if-nez v1, :cond_0

    .line 1686
    return-object v7

    .line 1688
    :cond_0
    new-instance v5, Lsun/security/util/DerValue;

    invoke-direct {v5, v1}, Lsun/security/util/DerValue;-><init>([B)V

    .line 1689
    .local v5, "val":Lsun/security/util/DerValue;
    invoke-virtual {v5}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v0

    .line 1692
    .local v0, "data":[B
    new-instance v4, Lsun/security/x509/SubjectAlternativeNameExtension;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v4, v6, v0}, Lsun/security/x509/SubjectAlternativeNameExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1698
    .local v4, "subjectAltNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    :try_start_1
    const-string/jumbo v6, "subject_name"

    .line 1697
    invoke-virtual {v4, v6}, Lsun/security/x509/SubjectAlternativeNameExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralNames;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 1703
    .local v3, "names":Lsun/security/x509/GeneralNames;
    :try_start_2
    invoke-static {v3}, Lsun/security/x509/X509CertImpl;->makeAltNames(Lsun/security/x509/GeneralNames;)Ljava/util/Collection;

    move-result-object v6

    return-object v6

    .line 1699
    .end local v3    # "names":Lsun/security/x509/GeneralNames;
    :catch_0
    move-exception v2

    .line 1701
    .local v2, "ioe":Ljava/io/IOException;
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    return-object v6

    .line 1704
    .end local v0    # "data":[B
    .end local v1    # "ext":[B
    .end local v2    # "ioe":Ljava/io/IOException;
    .end local v4    # "subjectAltNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    .end local v5    # "val":Lsun/security/util/DerValue;
    :catch_1
    move-exception v2

    .line 1705
    .restart local v2    # "ioe":Ljava/io/IOException;
    new-instance v6, Ljava/security/cert/CertificateParsingException;

    invoke-direct {v6, v2}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public static getSubjectX500Principal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;
    .locals 3
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 1891
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lsun/security/x509/X509CertImpl;->getX500Principal(Ljava/security/cert/X509Certificate;Z)Ljavax/security/auth/x500/X500Principal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1892
    :catch_0
    move-exception v0

    .line 1893
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Could not parse subject"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getX500Principal(Ljava/security/cert/X509Certificate;Z)Ljavax/security/auth/x500/X500Principal;
    .locals 8
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "getIssuer"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1864
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    .line 1865
    .local v1, "encoded":[B
    new-instance v0, Lsun/security/util/DerInputStream;

    invoke-direct {v0, v1}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 1866
    .local v0, "derIn":Lsun/security/util/DerInputStream;
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v6

    aget-object v3, v6, v7

    .line 1867
    .local v3, "tbsCert":Lsun/security/util/DerValue;
    iget-object v4, v3, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 1869
    .local v4, "tbsIn":Lsun/security/util/DerInputStream;
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v5

    .line 1871
    .local v5, "tmp":Lsun/security/util/DerValue;
    invoke-virtual {v5, v7}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1872
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v5

    .line 1875
    :cond_0
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v5

    .line 1876
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v5

    .line 1877
    if-nez p1, :cond_1

    .line 1878
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v5

    .line 1879
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v5

    .line 1881
    :cond_1
    invoke-virtual {v5}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v2

    .line 1882
    .local v2, "principalBytes":[B
    new-instance v6, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v6, v2}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    return-object v6
.end method

.method public static isSelfIssued(Ljava/security/cert/X509Certificate;)Z
    .locals 3
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 1943
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 1944
    .local v1, "subject":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 1945
    .local v0, "issuer":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v1, v0}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static isSelfSigned(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .locals 2
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "sigProvider"    # Ljava/lang/String;

    .prologue
    .line 1956
    invoke-static {p0}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1958
    if-nez p1, :cond_0

    .line 1959
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 1963
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 1961
    :cond_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1964
    :catch_0
    move-exception v0

    .line 1968
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private static makeAltNames(Lsun/security/x509/GeneralNames;)Ljava/util/Collection;
    .locals 9
    .param p0, "names"    # Lsun/security/x509/GeneralNames;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/x509/GeneralNames;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 1564
    invoke-virtual {p0}, Lsun/security/x509/GeneralNames;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1565
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v7

    return-object v7

    .line 1567
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1568
    .local v6, "newNames":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<*>;>;"
    invoke-virtual {p0}, Lsun/security/x509/GeneralNames;->names()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "gname$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/GeneralName;

    .line 1569
    .local v1, "gname":Lsun/security/x509/GeneralName;
    invoke-virtual {v1}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v4

    .line 1570
    .local v4, "name":Lsun/security/x509/GeneralNameInterface;
    new-instance v5, Ljava/util/ArrayList;

    const/4 v7, 0x2

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 1571
    .local v5, "nameEntry":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v4}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1572
    invoke-interface {v4}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 1599
    :pswitch_0
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 1601
    .local v0, "derOut":Lsun/security/util/DerOutputStream;
    :try_start_0
    invoke-interface {v4, v0}, Lsun/security/x509/GeneralNameInterface;->encode(Lsun/security/util/DerOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1607
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1610
    .end local v0    # "derOut":Lsun/security/util/DerOutputStream;
    .end local v4    # "name":Lsun/security/x509/GeneralNameInterface;
    :goto_1
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1574
    .restart local v4    # "name":Lsun/security/x509/GeneralNameInterface;
    :pswitch_1
    check-cast v4, Lsun/security/x509/RFC822Name;

    .end local v4    # "name":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {v4}, Lsun/security/x509/RFC822Name;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1577
    .restart local v4    # "name":Lsun/security/x509/GeneralNameInterface;
    :pswitch_2
    check-cast v4, Lsun/security/x509/DNSName;

    .end local v4    # "name":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {v4}, Lsun/security/x509/DNSName;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1580
    .restart local v4    # "name":Lsun/security/x509/GeneralNameInterface;
    :pswitch_3
    check-cast v4, Lsun/security/x509/X500Name;

    .end local v4    # "name":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {v4}, Lsun/security/x509/X500Name;->getRFC2253Name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1583
    .restart local v4    # "name":Lsun/security/x509/GeneralNameInterface;
    :pswitch_4
    check-cast v4, Lsun/security/x509/URIName;

    .end local v4    # "name":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {v4}, Lsun/security/x509/URIName;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1587
    .restart local v4    # "name":Lsun/security/x509/GeneralNameInterface;
    :pswitch_5
    :try_start_1
    check-cast v4, Lsun/security/x509/IPAddressName;

    .end local v4    # "name":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {v4}, Lsun/security/x509/IPAddressName;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1588
    :catch_0
    move-exception v3

    .line 1590
    .local v3, "ioe":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "IPAddress cannot be parsed"

    invoke-direct {v7, v8, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 1595
    .end local v3    # "ioe":Ljava/io/IOException;
    .restart local v4    # "name":Lsun/security/x509/GeneralNameInterface;
    :pswitch_6
    check-cast v4, Lsun/security/x509/OIDName;

    .end local v4    # "name":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {v4}, Lsun/security/x509/OIDName;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1602
    .restart local v0    # "derOut":Lsun/security/util/DerOutputStream;
    .restart local v4    # "name":Lsun/security/x509/GeneralNameInterface;
    :catch_1
    move-exception v3

    .line 1605
    .restart local v3    # "ioe":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "name cannot be encoded"

    invoke-direct {v7, v8, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 1612
    .end local v0    # "derOut":Lsun/security/util/DerOutputStream;
    .end local v1    # "gname":Lsun/security/x509/GeneralName;
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v4    # "name":Lsun/security/x509/GeneralNameInterface;
    .end local v5    # "nameEntry":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_1
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v7

    return-object v7

    .line 1572
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private parse(Lsun/security/util/DerValue;)V
    .locals 1
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1793
    const/4 v0, 0x0

    .line 1791
    invoke-direct {p0, p1, v0}, Lsun/security/x509/X509CertImpl;->parse(Lsun/security/util/DerValue;[B)V

    .line 1790
    return-void
.end method

.method private parse(Lsun/security/util/DerValue;[B)V
    .locals 7
    .param p1, "val"    # Lsun/security/util/DerValue;
    .param p2, "originalEncodedForm"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x30

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1810
    iget-boolean v2, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    if-eqz v2, :cond_0

    .line 1811
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    .line 1812
    const-string/jumbo v3, "cannot over-write existing certificate"

    .line 1811
    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1814
    :cond_0
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    if-eqz v2, :cond_1

    iget-byte v2, p1, Lsun/security/util/DerValue;->tag:B

    if-eq v2, v6, :cond_2

    .line 1815
    :cond_1
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    .line 1816
    const-string/jumbo v3, "invalid DER-encoded certificate data"

    .line 1815
    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1819
    :cond_2
    if-eqz p2, :cond_3

    .line 1818
    .end local p2    # "originalEncodedForm":[B
    :goto_0
    iput-object p2, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    .line 1821
    const/4 v2, 0x3

    new-array v1, v2, [Lsun/security/util/DerValue;

    .line 1823
    .local v1, "seq":[Lsun/security/util/DerValue;
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    aput-object v2, v1, v3

    .line 1824
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    aput-object v2, v1, v4

    .line 1825
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    aput-object v2, v1, v5

    .line 1827
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-eqz v2, :cond_4

    .line 1828
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "signed overrun, bytes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1829
    iget-object v4, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->available()I

    move-result v4

    .line 1828
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1820
    .end local v1    # "seq":[Lsun/security/util/DerValue;
    .restart local p2    # "originalEncodedForm":[B
    :cond_3
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object p2

    goto :goto_0

    .line 1831
    .end local p2    # "originalEncodedForm":[B
    .restart local v1    # "seq":[Lsun/security/util/DerValue;
    :cond_4
    aget-object v2, v1, v3

    iget-byte v2, v2, Lsun/security/util/DerValue;->tag:B

    if-eq v2, v6, :cond_5

    .line 1832
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    const-string/jumbo v3, "signed fields invalid"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1835
    :cond_5
    aget-object v2, v1, v4

    invoke-static {v2}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    .line 1836
    aget-object v2, v1, v5

    invoke-virtual {v2}, Lsun/security/util/DerValue;->getBitString()[B

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    .line 1838
    aget-object v2, v1, v4

    iget-object v2, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-eqz v2, :cond_6

    .line 1839
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    const-string/jumbo v3, "algid field overrun"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1841
    :cond_6
    aget-object v2, v1, v5

    iget-object v2, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-eqz v2, :cond_7

    .line 1842
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    const-string/jumbo v3, "signed fields overrun"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1845
    :cond_7
    new-instance v2, Lsun/security/x509/X509CertInfo;

    aget-object v3, v1, v3

    invoke-direct {v2, v3}, Lsun/security/x509/X509CertInfo;-><init>(Lsun/security/util/DerValue;)V

    iput-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 1848
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 1849
    const-string/jumbo v3, "algorithmID.algorithm"

    .line 1848
    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/AlgorithmId;

    .line 1852
    .local v0, "infoSigAlg":Lsun/security/x509/AlgorithmId;
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v2, v0}, Lsun/security/x509/AlgorithmId;->equals(Lsun/security/x509/AlgorithmId;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1853
    new-instance v2, Ljava/security/cert/CertificateException;

    const-string/jumbo v3, "Signature algorithm mismatch"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1854
    :cond_8
    iput-boolean v4, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    .line 1808
    return-void
.end method

.method private readRFC1421Cert(Ljava/io/InputStream;)Lsun/security/util/DerValue;
    .locals 10
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    const/4 v3, 0x0

    .line 256
    .local v3, "der":Lsun/security/util/DerValue;
    const/4 v6, 0x0

    .line 258
    .local v6, "line":Ljava/lang/String;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    const-string/jumbo v8, "ASCII"

    invoke-direct {v7, p1, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 260
    .local v0, "certBufferedReader":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 265
    .local v6, "line":Ljava/lang/String;
    const-string/jumbo v7, "-----BEGIN CERTIFICATE-----"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 267
    new-instance v1, Lsun/misc/BASE64Decoder;

    invoke-direct {v1}, Lsun/misc/BASE64Decoder;-><init>()V

    .line 268
    .local v1, "decoder":Lsun/misc/BASE64Decoder;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 270
    .local v2, "decstream":Ljava/io/ByteArrayOutputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 271
    const-string/jumbo v7, "-----END CERTIFICATE-----"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 272
    new-instance v3, Lsun/security/util/DerValue;

    .end local v3    # "der":Lsun/security/util/DerValue;
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {v3, v7}, Lsun/security/util/DerValue;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 286
    :cond_0
    return-object v3

    .line 261
    .end local v1    # "decoder":Lsun/misc/BASE64Decoder;
    .end local v2    # "decstream":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "der":Lsun/security/util/DerValue;
    .local v6, "line":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 262
    .local v4, "ioe1":Ljava/io/IOException;
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to read InputStream: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 263
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    .line 262
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 275
    .end local v4    # "ioe1":Ljava/io/IOException;
    .restart local v1    # "decoder":Lsun/misc/BASE64Decoder;
    .restart local v2    # "decstream":Ljava/io/ByteArrayOutputStream;
    .local v6, "line":Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-virtual {v1, v6}, Lsun/misc/BASE64Decoder;->decodeBuffer(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 278
    .end local v3    # "der":Lsun/security/util/DerValue;
    :catch_1
    move-exception v5

    .line 279
    .local v5, "ioe2":Ljava/io/IOException;
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to read InputStream: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 280
    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    .line 279
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 283
    .end local v1    # "decoder":Lsun/misc/BASE64Decoder;
    .end local v2    # "decstream":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "ioe2":Ljava/io/IOException;
    .restart local v3    # "der":Lsun/security/util/DerValue;
    :cond_2
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "InputStream is not RFC1421 hex-encoded DER bytes"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public static toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;
    .locals 1
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 1931
    instance-of v0, p0, Lsun/security/x509/X509CertImpl;

    if-eqz v0, :cond_0

    .line 1932
    check-cast p0, Lsun/security/x509/X509CertImpl;

    .end local p0    # "cert":Ljava/security/cert/X509Certificate;
    return-object p0

    .line 1934
    .restart local p0    # "cert":Ljava/security/cert/X509Certificate;
    :cond_0
    invoke-static {p0}, Lsun/security/provider/X509Factory;->intern(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v0

    return-object v0
.end method

.method public static verify(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/security/Provider;)V
    .locals 0
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 525
    invoke-virtual {p0, p1, p2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;Ljava/security/Provider;)V

    .line 524
    return-void
.end method


# virtual methods
.method public checkValidity()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .prologue
    .line 620
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 621
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->checkValidity(Ljava/util/Date;)V

    .line 619
    return-void
.end method

.method public checkValidity(Ljava/util/Date;)V
    .locals 4
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .prologue
    .line 640
    const/4 v1, 0x0

    .line 642
    .local v1, "interval":Lsun/security/x509/CertificateValidity;
    :try_start_0
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string/jumbo v3, "validity"

    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "interval":Lsun/security/x509/CertificateValidity;
    check-cast v1, Lsun/security/x509/CertificateValidity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    .local v1, "interval":Lsun/security/x509/CertificateValidity;
    if-nez v1, :cond_0

    .line 647
    new-instance v2, Ljava/security/cert/CertificateNotYetValidException;

    const-string/jumbo v3, "Null validity period"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 643
    .end local v1    # "interval":Lsun/security/x509/CertificateValidity;
    :catch_0
    move-exception v0

    .line 644
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/cert/CertificateNotYetValidException;

    const-string/jumbo v3, "Incorrect validity period"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 648
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "interval":Lsun/security/x509/CertificateValidity;
    :cond_0
    invoke-virtual {v1, p1}, Lsun/security/x509/CertificateValidity;->valid(Ljava/util/Date;)V

    .line 638
    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 758
    iget-boolean v3, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    if-eqz v3, :cond_0

    .line 759
    new-instance v3, Ljava/security/cert/CertificateException;

    const-string/jumbo v4, "cannot over-write existing certificate"

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 762
    :cond_0
    new-instance v0, Lsun/security/x509/X509AttributeName;

    invoke-direct {v0, p1}, Lsun/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    .line 763
    .local v0, "attr":Lsun/security/x509/X509AttributeName;
    invoke-virtual {v0}, Lsun/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    move-result-object v2

    .line 764
    .local v2, "id":Ljava/lang/String;
    const-string/jumbo v3, "x509"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 765
    new-instance v3, Ljava/security/cert/CertificateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid root of attribute name, expected [x509], received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 769
    :cond_1
    new-instance v1, Lsun/security/x509/X509AttributeName;

    invoke-virtual {v0}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lsun/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    .line 770
    .end local v0    # "attr":Lsun/security/x509/X509AttributeName;
    .local v1, "attr":Lsun/security/x509/X509AttributeName;
    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    move-result-object v2

    .line 772
    const-string/jumbo v3, "info"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 773
    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 774
    iput-object v4, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 756
    :goto_0
    return-void

    .line 776
    :cond_2
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/security/x509/X509CertInfo;->delete(Ljava/lang/String;)V

    goto :goto_0

    .line 778
    :cond_3
    const-string/jumbo v3, "algorithm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 779
    iput-object v4, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    goto :goto_0

    .line 780
    :cond_4
    const-string/jumbo v3, "signature"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 781
    iput-object v4, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    goto :goto_0

    .line 782
    :cond_5
    const-string/jumbo v3, "signed_cert"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 783
    iput-object v4, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    goto :goto_0

    .line 785
    :cond_6
    new-instance v3, Ljava/security/cert/CertificateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Attribute name not recognized or delete() not allowed for the same: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public derEncode(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 362
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    if-nez v0, :cond_0

    .line 363
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Null certificate to encode"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_0
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 361
    return-void
.end method

.method public encode(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 343
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    if-nez v1, :cond_0

    .line 344
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    .line 345
    const-string/jumbo v2, "Null certificate to encode"

    .line 344
    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 347
    :cond_0
    :try_start_0
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    return-void

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 663
    new-instance v0, Lsun/security/x509/X509AttributeName;

    invoke-direct {v0, p1}, Lsun/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    .line 664
    .local v0, "attr":Lsun/security/x509/X509AttributeName;
    invoke-virtual {v0}, Lsun/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    move-result-object v4

    .line 665
    .local v4, "id":Ljava/lang/String;
    const-string/jumbo v5, "x509"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 666
    new-instance v5, Ljava/security/cert/CertificateParsingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid root of attribute name, expected [x509], received ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 668
    const-string/jumbo v7, "]"

    .line 666
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 670
    :cond_0
    new-instance v1, Lsun/security/x509/X509AttributeName;

    invoke-virtual {v0}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lsun/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    .line 671
    .end local v0    # "attr":Lsun/security/x509/X509AttributeName;
    .local v1, "attr":Lsun/security/x509/X509AttributeName;
    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    move-result-object v4

    .line 673
    const-string/jumbo v5, "info"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 674
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v5, :cond_1

    .line 675
    return-object v6

    .line 677
    :cond_1
    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 679
    :try_start_0
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 682
    :catch_0
    move-exception v3

    .line 683
    .local v3, "e":Ljava/security/cert/CertificateException;
    new-instance v5, Ljava/security/cert/CertificateParsingException;

    invoke-virtual {v3}, Ljava/security/cert/CertificateException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 680
    .end local v3    # "e":Ljava/security/cert/CertificateException;
    :catch_1
    move-exception v2

    .line 681
    .local v2, "e":Ljava/io/IOException;
    new-instance v5, Ljava/security/cert/CertificateParsingException;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 686
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    return-object v5

    .line 688
    :cond_3
    const-string/jumbo v5, "algorithm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 689
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    return-object v5

    .line 690
    :cond_4
    const-string/jumbo v5, "signature"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 691
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    if-eqz v5, :cond_5

    .line 692
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    invoke-virtual {v5}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v5

    return-object v5

    .line 694
    :cond_5
    return-object v6

    .line 695
    :cond_6
    const-string/jumbo v5, "signed_cert"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 696
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    if-eqz v5, :cond_7

    .line 697
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    invoke-virtual {v5}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v5

    return-object v5

    .line 699
    :cond_7
    return-object v6

    .line 701
    :cond_8
    new-instance v5, Ljava/security/cert/CertificateParsingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Attribute name not recognized or get() not allowed for the same: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getAuthKeyId()Lsun/security/x509/KeyIdentifier;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1120
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getAuthorityKeyIdentifierExtension()Lsun/security/x509/AuthorityKeyIdentifierExtension;

    move-result-object v0

    .line 1121
    .local v0, "aki":Lsun/security/x509/AuthorityKeyIdentifierExtension;
    if-eqz v0, :cond_0

    .line 1124
    :try_start_0
    const-string/jumbo v2, "key_id"

    .line 1123
    invoke-virtual {v0, v2}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/x509/KeyIdentifier;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1125
    :catch_0
    move-exception v1

    .line 1127
    :cond_0
    return-object v3
.end method

.method public getAuthorityInfoAccessExtension()Lsun/security/x509/AuthorityInfoAccessExtension;
    .locals 1

    .prologue
    .line 1774
    sget-object v0, Lsun/security/x509/PKIXExtensions;->AuthInfoAccess_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    .line 1773
    check-cast v0, Lsun/security/x509/AuthorityInfoAccessExtension;

    return-object v0
.end method

.method public getAuthorityKeyIdentifierExtension()Lsun/security/x509/AuthorityKeyIdentifierExtension;
    .locals 1

    .prologue
    .line 1152
    sget-object v0, Lsun/security/x509/PKIXExtensions;->AuthorityKey_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    .line 1151
    check-cast v0, Lsun/security/x509/AuthorityKeyIdentifierExtension;

    return-object v0
.end method

.method public getBasicConstraints()I
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1535
    :try_start_0
    sget-object v3, Lsun/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun/security/util/ObjectIdentifier;

    invoke-static {v3}, Lsun/security/x509/OIDMap;->getName(Lsun/security/util/ObjectIdentifier;)Ljava/lang/String;

    move-result-object v2

    .line 1536
    .local v2, "extAlias":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 1537
    return v4

    .line 1539
    :cond_0
    invoke-virtual {p0, v2}, Lsun/security/x509/X509CertImpl;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/BasicConstraintsExtension;

    .line 1540
    .local v0, "certExt":Lsun/security/x509/BasicConstraintsExtension;
    if-nez v0, :cond_1

    .line 1541
    return v4

    .line 1543
    :cond_1
    const-string/jumbo v3, "is_ca"

    invoke-virtual {v0, v3}, Lsun/security/x509/BasicConstraintsExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1546
    const-string/jumbo v3, "path_len"

    .line 1545
    invoke-virtual {v0, v3}, Lsun/security/x509/BasicConstraintsExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 1548
    :cond_2
    return v4

    .line 1549
    .end local v0    # "certExt":Lsun/security/x509/BasicConstraintsExtension;
    .end local v2    # "extAlias":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1550
    .local v1, "e":Ljava/lang/Exception;
    return v4
.end method

.method public getBasicConstraintsExtension()Lsun/security/x509/BasicConstraintsExtension;
    .locals 1

    .prologue
    .line 1162
    sget-object v0, Lsun/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    .line 1161
    check-cast v0, Lsun/security/x509/BasicConstraintsExtension;

    return-object v0
.end method

.method public getCRLDistributionPointsExtension()Lsun/security/x509/CRLDistributionPointsExtension;
    .locals 1

    .prologue
    .line 1261
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CRLDistributionPoints_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    .line 1260
    check-cast v0, Lsun/security/x509/CRLDistributionPointsExtension;

    return-object v0
.end method

.method public getCertificatePoliciesExtension()Lsun/security/x509/CertificatePoliciesExtension;
    .locals 1

    .prologue
    .line 1172
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    .line 1171
    check-cast v0, Lsun/security/x509/CertificatePoliciesExtension;

    return-object v0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1291
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v5, :cond_0

    .line 1292
    return-object v7

    .line 1295
    :cond_0
    :try_start_0
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 1296
    const-string/jumbo v6, "extensions"

    .line 1295
    invoke-virtual {v5, v6}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/security/x509/CertificateExtensions;

    .line 1297
    .local v4, "exts":Lsun/security/x509/CertificateExtensions;
    if-nez v4, :cond_1

    .line 1298
    return-object v7

    .line 1300
    :cond_1
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 1301
    .local v3, "extSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v4}, Lsun/security/x509/CertificateExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "ex$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/Extension;

    .line 1302
    .local v1, "ex":Lsun/security/x509/Extension;
    invoke-virtual {v1}, Lsun/security/x509/Extension;->isCritical()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1303
    invoke-virtual {v1}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1307
    .end local v1    # "ex":Lsun/security/x509/Extension;
    .end local v2    # "ex$iterator":Ljava/util/Iterator;
    .end local v3    # "extSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "exts":Lsun/security/x509/CertificateExtensions;
    :catch_0
    move-exception v0

    .line 1308
    .local v0, "e":Ljava/lang/Exception;
    return-object v7

    .line 1306
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "ex$iterator":Ljava/util/Iterator;
    .restart local v3    # "extSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "exts":Lsun/security/x509/CertificateExtensions;
    :cond_3
    return-object v3
.end method

.method public getElements()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 795
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 796
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "x509.info"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 797
    const-string/jumbo v1, "x509.algorithm"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 798
    const-string/jumbo v1, "x509.signature"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 799
    const-string/jumbo v1, "x509.signed_cert"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 801
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 376
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getEncodedInternal()[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getEncodedInternal()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 385
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    if-nez v0, :cond_0

    .line 386
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    .line 387
    const-string/jumbo v1, "Null certificate to encode"

    .line 386
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :cond_0
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    return-object v0
.end method

.method public declared-synchronized getExtendedKeyUsage()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    .line 1492
    :try_start_0
    iget-boolean v1, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->extKeyUsage:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1493
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->extKeyUsage:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 1495
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getExtendedKeyUsageExtension()Lsun/security/x509/ExtendedKeyUsageExtension;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 1496
    .local v0, "ext":Lsun/security/x509/ExtendedKeyUsageExtension;
    if-nez v0, :cond_1

    monitor-exit p0

    .line 1497
    return-object v2

    .line 1500
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Lsun/security/x509/ExtendedKeyUsageExtension;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 1499
    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->extKeyUsage:Ljava/util/List;

    .line 1501
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->extKeyUsage:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .end local v0    # "ext":Lsun/security/x509/ExtendedKeyUsageExtension;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getExtendedKeyUsageExtension()Lsun/security/x509/ExtendedKeyUsageExtension;
    .locals 1

    .prologue
    .line 1182
    sget-object v0, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    .line 1181
    check-cast v0, Lsun/security/x509/ExtendedKeyUsageExtension;

    return-object v0
.end method

.method public getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;
    .locals 9
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;

    .prologue
    const/4 v8, 0x0

    .line 1351
    iget-object v6, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v6, :cond_0

    .line 1352
    return-object v8

    .line 1357
    :cond_0
    :try_start_0
    iget-object v6, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string/jumbo v7, "extensions"

    invoke-virtual {v6, v7}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/security/x509/CertificateExtensions;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1361
    .local v4, "extensions":Lsun/security/x509/CertificateExtensions;
    if-nez v4, :cond_1

    .line 1362
    return-object v8

    .line 1358
    .end local v4    # "extensions":Lsun/security/x509/CertificateExtensions;
    :catch_0
    move-exception v0

    .line 1359
    .local v0, "ce":Ljava/security/cert/CertificateException;
    return-object v8

    .line 1364
    .end local v0    # "ce":Ljava/security/cert/CertificateException;
    .restart local v4    # "extensions":Lsun/security/x509/CertificateExtensions;
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lsun/security/x509/CertificateExtensions;->getExtension(Ljava/lang/String;)Lsun/security/x509/Extension;

    move-result-object v1

    .line 1365
    .local v1, "ex":Lsun/security/x509/Extension;
    if-eqz v1, :cond_2

    .line 1366
    return-object v1

    .line 1368
    :cond_2
    invoke-virtual {v4}, Lsun/security/x509/CertificateExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "ex2$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/x509/Extension;

    .line 1369
    .local v2, "ex2":Lsun/security/x509/Extension;
    invoke-virtual {v2}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v6

    invoke-virtual {v6, p1}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    if-eqz v6, :cond_3

    .line 1371
    return-object v2

    .line 1375
    .end local v2    # "ex2":Lsun/security/x509/Extension;
    :cond_4
    return-object v8

    .line 1377
    .end local v1    # "ex":Lsun/security/x509/Extension;
    .end local v3    # "ex2$iterator":Ljava/util/Iterator;
    .end local v4    # "extensions":Lsun/security/x509/CertificateExtensions;
    :catch_1
    move-exception v5

    .line 1378
    .local v5, "ioe":Ljava/io/IOException;
    return-object v8
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 15
    .param p1, "oid"    # Ljava/lang/String;

    .prologue
    const/4 v14, 0x0

    .line 1411
    :try_start_0
    new-instance v9, Lsun/security/util/ObjectIdentifier;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 1412
    .local v9, "findOID":Lsun/security/util/ObjectIdentifier;
    invoke-static {v9}, Lsun/security/x509/OIDMap;->getName(Lsun/security/util/ObjectIdentifier;)Ljava/lang/String;

    move-result-object v6

    .line 1413
    .local v6, "extAlias":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1414
    .local v1, "certExt":Lsun/security/x509/Extension;
    iget-object v12, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 1415
    const-string/jumbo v13, "extensions"

    .line 1414
    invoke-virtual {v12, v13}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lsun/security/x509/CertificateExtensions;

    .line 1417
    .local v8, "exts":Lsun/security/x509/CertificateExtensions;
    if-nez v6, :cond_4

    .line 1419
    if-nez v8, :cond_0

    .line 1420
    return-object v14

    .line 1423
    :cond_0
    invoke-virtual {v8}, Lsun/security/x509/CertificateExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "ex$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/security/x509/Extension;

    .line 1424
    .local v4, "ex":Lsun/security/x509/Extension;
    invoke-virtual {v4}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v10

    .line 1425
    .local v10, "inCertOID":Lsun/security/util/ObjectIdentifier;
    invoke-virtual {v10, v9}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1426
    move-object v1, v4

    .line 1437
    .end local v1    # "certExt":Lsun/security/x509/Extension;
    .end local v4    # "ex":Lsun/security/x509/Extension;
    .end local v5    # "ex$iterator":Ljava/util/Iterator;
    .end local v10    # "inCertOID":Lsun/security/util/ObjectIdentifier;
    :cond_2
    :goto_0
    if-nez v1, :cond_5

    .line 1438
    if-eqz v8, :cond_3

    .line 1439
    invoke-virtual {v8}, Lsun/security/x509/CertificateExtensions;->getUnparseableExtensions()Ljava/util/Map;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/Extension;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1441
    :cond_3
    if-nez v1, :cond_5

    .line 1442
    return-object v14

    .line 1432
    .restart local v1    # "certExt":Lsun/security/x509/Extension;
    :cond_4
    :try_start_1
    invoke-virtual {p0, v6}, Lsun/security/x509/X509CertImpl;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Lsun/security/x509/Extension;

    move-object v1, v0
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .local v1, "certExt":Lsun/security/x509/Extension;
    goto :goto_0

    .line 1445
    .end local v1    # "certExt":Lsun/security/x509/Extension;
    :cond_5
    :try_start_2
    invoke-virtual {v1}, Lsun/security/x509/Extension;->getExtensionValue()[B

    move-result-object v7

    .line 1446
    .local v7, "extData":[B
    if-nez v7, :cond_6

    .line 1447
    return-object v14

    .line 1449
    :cond_6
    new-instance v11, Lsun/security/util/DerOutputStream;

    invoke-direct {v11}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 1450
    .local v11, "out":Lsun/security/util/DerOutputStream;
    invoke-virtual {v11, v7}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 1451
    invoke-virtual {v11}, Lsun/security/util/DerOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v12

    return-object v12

    .line 1452
    .end local v6    # "extAlias":Ljava/lang/String;
    .end local v7    # "extData":[B
    .end local v8    # "exts":Lsun/security/x509/CertificateExtensions;
    .end local v9    # "findOID":Lsun/security/util/ObjectIdentifier;
    .end local v11    # "out":Lsun/security/util/DerOutputStream;
    :catch_0
    move-exception v2

    .line 1453
    .local v2, "e":Ljava/lang/Exception;
    return-object v14

    .line 1433
    .end local v2    # "e":Ljava/lang/Exception;
    .local v1, "certExt":Lsun/security/x509/Extension;
    .restart local v6    # "extAlias":Ljava/lang/String;
    .restart local v8    # "exts":Lsun/security/x509/CertificateExtensions;
    .restart local v9    # "findOID":Lsun/security/util/ObjectIdentifier;
    :catch_1
    move-exception v3

    .local v3, "e":Ljava/security/cert/CertificateException;
    goto :goto_0
.end method

.method public getFingerprint(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 1975
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->fingerprints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1976
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->fingerprints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1}, Lsun/security/x509/X509CertImpl;->getCertificateFingerPrint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1978
    :cond_0
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->fingerprints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIssuerAlternativeNameExtension()Lsun/security/x509/IssuerAlternativeNameExtension;
    .locals 1

    .prologue
    .line 1192
    sget-object v0, Lsun/security/x509/PKIXExtensions;->IssuerAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    .line 1191
    check-cast v0, Lsun/security/x509/IssuerAlternativeNameExtension;

    return-object v0
.end method

.method public declared-synchronized getIssuerAlternativeNames()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    monitor-enter p0

    .line 1718
    :try_start_0
    iget-boolean v3, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->issuerAlternativeNames:Ljava/util/Collection;

    if-eqz v3, :cond_0

    .line 1719
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->issuerAlternativeNames:Ljava/util/Collection;

    invoke-static {v3}, Lsun/security/x509/X509CertImpl;->cloneAltNames(Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    monitor-exit p0

    return-object v3

    .line 1722
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getIssuerAlternativeNameExtension()Lsun/security/x509/IssuerAlternativeNameExtension;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 1723
    .local v1, "issuerAltNameExt":Lsun/security/x509/IssuerAlternativeNameExtension;
    if-nez v1, :cond_1

    monitor-exit p0

    .line 1724
    return-object v4

    .line 1729
    :cond_1
    :try_start_2
    const-string/jumbo v3, "issuer_name"

    .line 1728
    invoke-virtual {v1, v3}, Lsun/security/x509/IssuerAlternativeNameExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralNames;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 1734
    .local v2, "names":Lsun/security/x509/GeneralNames;
    :try_start_3
    invoke-static {v2}, Lsun/security/x509/X509CertImpl;->makeAltNames(Lsun/security/x509/GeneralNames;)Ljava/util/Collection;

    move-result-object v3

    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->issuerAlternativeNames:Ljava/util/Collection;

    .line 1735
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->issuerAlternativeNames:Ljava/util/Collection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v3

    .line 1730
    .end local v2    # "names":Lsun/security/x509/GeneralNames;
    :catch_0
    move-exception v0

    .line 1732
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_4
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v3

    monitor-exit p0

    return-object v3

    .end local v0    # "ioe":Ljava/io/IOException;
    .end local v1    # "issuerAltNameExt":Lsun/security/x509/IssuerAlternativeNameExtension;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 943
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v2, :cond_0

    .line 944
    return-object v4

    .line 946
    :cond_0
    :try_start_0
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string/jumbo v3, "issuer.dname"

    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Principal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 948
    .local v1, "issuer":Ljava/security/Principal;
    return-object v1

    .line 949
    .end local v1    # "issuer":Ljava/security/Principal;
    :catch_0
    move-exception v0

    .line 950
    .local v0, "e":Ljava/lang/Exception;
    return-object v4
.end method

.method public getIssuerUniqueID()[Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1084
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v2, :cond_0

    .line 1085
    return-object v4

    .line 1087
    :cond_0
    :try_start_0
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 1088
    const-string/jumbo v3, "issuerID"

    .line 1087
    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/UniqueIdentity;

    .line 1089
    .local v1, "id":Lsun/security/x509/UniqueIdentity;
    if-nez v1, :cond_1

    .line 1090
    return-object v4

    .line 1092
    :cond_1
    invoke-virtual {v1}, Lsun/security/x509/UniqueIdentity;->getId()[Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1093
    .end local v1    # "id":Lsun/security/x509/UniqueIdentity;
    :catch_0
    move-exception v0

    .line 1094
    .local v0, "e":Ljava/lang/Exception;
    return-object v4
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 960
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v2, :cond_0

    .line 961
    return-object v4

    .line 964
    :cond_0
    :try_start_0
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 965
    const-string/jumbo v3, "issuer.x500principal"

    .line 964
    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/security/auth/x500/X500Principal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 967
    .local v1, "issuer":Ljavax/security/auth/x500/X500Principal;
    return-object v1

    .line 968
    .end local v1    # "issuer":Ljavax/security/auth/x500/X500Principal;
    :catch_0
    move-exception v0

    .line 969
    .local v0, "e":Ljava/lang/Exception;
    return-object v4
.end method

.method public getKeyUsage()[Z
    .locals 9

    .prologue
    const/16 v6, 0x9

    const/4 v8, 0x0

    .line 1464
    :try_start_0
    sget-object v5, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    invoke-static {v5}, Lsun/security/x509/OIDMap;->getName(Lsun/security/util/ObjectIdentifier;)Ljava/lang/String;

    move-result-object v2

    .line 1465
    .local v2, "extAlias":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 1466
    return-object v8

    .line 1468
    :cond_0
    invoke-virtual {p0, v2}, Lsun/security/x509/X509CertImpl;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/KeyUsageExtension;

    .line 1469
    .local v0, "certExt":Lsun/security/x509/KeyUsageExtension;
    if-nez v0, :cond_1

    .line 1470
    return-object v8

    .line 1472
    :cond_1
    invoke-virtual {v0}, Lsun/security/x509/KeyUsageExtension;->getBits()[Z

    move-result-object v3

    .line 1473
    .local v3, "ret":[Z
    array-length v5, v3

    if-ge v5, v6, :cond_2

    .line 1474
    const/16 v5, 0x9

    new-array v4, v5, [Z

    .line 1475
    .local v4, "usageBits":[Z
    array-length v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v6, v4, v7, v5}, Ljava/lang/System;->arraycopy([ZI[ZII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1476
    move-object v3, v4

    .line 1478
    .end local v4    # "usageBits":[Z
    :cond_2
    return-object v3

    .line 1479
    .end local v0    # "certExt":Lsun/security/x509/KeyUsageExtension;
    .end local v2    # "extAlias":Ljava/lang/String;
    .end local v3    # "ret":[Z
    :catch_0
    move-exception v1

    .line 1480
    .local v1, "e":Ljava/lang/Exception;
    return-object v8
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 808
    const-string/jumbo v0, "x509"

    return-object v0
.end method

.method public getNameConstraintsExtension()Lsun/security/x509/NameConstraintsExtension;
    .locals 1

    .prologue
    .line 1201
    sget-object v0, Lsun/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    .line 1200
    check-cast v0, Lsun/security/x509/NameConstraintsExtension;

    return-object v0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1321
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v5, :cond_0

    .line 1322
    return-object v7

    .line 1325
    :cond_0
    :try_start_0
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 1326
    const-string/jumbo v6, "extensions"

    .line 1325
    invoke-virtual {v5, v6}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/security/x509/CertificateExtensions;

    .line 1327
    .local v4, "exts":Lsun/security/x509/CertificateExtensions;
    if-nez v4, :cond_1

    .line 1328
    return-object v7

    .line 1330
    :cond_1
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 1331
    .local v3, "extSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v4}, Lsun/security/x509/CertificateExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "ex$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/Extension;

    .line 1332
    .local v1, "ex":Lsun/security/x509/Extension;
    invoke-virtual {v1}, Lsun/security/x509/Extension;->isCritical()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1333
    invoke-virtual {v1}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1338
    .end local v1    # "ex":Lsun/security/x509/Extension;
    .end local v2    # "ex$iterator":Ljava/util/Iterator;
    .end local v3    # "extSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "exts":Lsun/security/x509/CertificateExtensions;
    :catch_0
    move-exception v0

    .line 1339
    .local v0, "e":Ljava/lang/Exception;
    return-object v7

    .line 1336
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "ex$iterator":Ljava/util/Iterator;
    .restart local v3    # "extSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "exts":Lsun/security/x509/CertificateExtensions;
    :cond_3
    invoke-virtual {v4}, Lsun/security/x509/CertificateExtensions;->getUnparseableExtensions()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1337
    return-object v3
.end method

.method public getNotAfter()Ljava/util/Date;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 996
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v2, :cond_0

    .line 997
    return-object v4

    .line 999
    :cond_0
    :try_start_0
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string/jumbo v3, "validity.notAfter"

    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1001
    .local v0, "d":Ljava/util/Date;
    return-object v0

    .line 1002
    .end local v0    # "d":Ljava/util/Date;
    :catch_0
    move-exception v1

    .line 1003
    .local v1, "e":Ljava/lang/Exception;
    return-object v4
.end method

.method public getNotBefore()Ljava/util/Date;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 979
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v2, :cond_0

    .line 980
    return-object v4

    .line 982
    :cond_0
    :try_start_0
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string/jumbo v3, "validity.notBefore"

    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 984
    .local v0, "d":Ljava/util/Date;
    return-object v0

    .line 985
    .end local v0    # "d":Ljava/util/Date;
    :catch_0
    move-exception v1

    .line 986
    .local v1, "e":Ljava/lang/Exception;
    return-object v4
.end method

.method public getPolicyConstraintsExtension()Lsun/security/x509/PolicyConstraintsExtension;
    .locals 1

    .prologue
    .line 1211
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    .line 1210
    check-cast v0, Lsun/security/x509/PolicyConstraintsExtension;

    return-object v0
.end method

.method public getPolicyMappingsExtension()Lsun/security/x509/PolicyMappingsExtension;
    .locals 1

    .prologue
    .line 1221
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PolicyMappings_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    .line 1220
    check-cast v0, Lsun/security/x509/PolicyMappingsExtension;

    return-object v0
.end method

.method public getPrivateKeyUsageExtension()Lsun/security/x509/PrivateKeyUsageExtension;
    .locals 1

    .prologue
    .line 1230
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PrivateKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    .line 1229
    check-cast v0, Lsun/security/x509/PrivateKeyUsageExtension;

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 842
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v2, :cond_0

    .line 843
    return-object v4

    .line 845
    :cond_0
    :try_start_0
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string/jumbo v3, "key.value"

    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 847
    .local v1, "key":Ljava/security/PublicKey;
    return-object v1

    .line 848
    .end local v1    # "key":Ljava/security/PublicKey;
    :catch_0
    move-exception v0

    .line 849
    .local v0, "e":Ljava/lang/Exception;
    return-object v4
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 876
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getSerialNumberObject()Lsun/security/x509/SerialNumber;

    move-result-object v0

    .line 878
    .local v0, "ser":Lsun/security/x509/SerialNumber;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsun/security/x509/SerialNumber;->getNumber()Ljava/math/BigInteger;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getSerialNumberObject()Lsun/security/x509/SerialNumber;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 888
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v2, :cond_0

    .line 889
    return-object v4

    .line 891
    :cond_0
    :try_start_0
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 892
    const-string/jumbo v3, "serialNumber.number"

    .line 891
    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/SerialNumber;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 894
    .local v1, "ser":Lsun/security/x509/SerialNumber;
    return-object v1

    .line 895
    .end local v1    # "ser":Lsun/security/x509/SerialNumber;
    :catch_0
    move-exception v0

    .line 896
    .local v0, "e":Ljava/lang/Exception;
    return-object v4
.end method

.method public getSigAlgName()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1043
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    if-nez v0, :cond_0

    .line 1044
    return-object v1

    .line 1045
    :cond_0
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1055
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    if-nez v1, :cond_0

    .line 1056
    return-object v2

    .line 1057
    :cond_0
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v1}, Lsun/security/x509/AlgorithmId;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 1058
    .local v0, "oid":Lsun/security/util/ObjectIdentifier;
    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSigAlgParams()[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1069
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    if-nez v1, :cond_0

    .line 1070
    return-object v2

    .line 1072
    :cond_0
    :try_start_0
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v1}, Lsun/security/x509/AlgorithmId;->getEncodedParams()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1073
    :catch_0
    move-exception v0

    .line 1074
    .local v0, "e":Ljava/io/IOException;
    return-object v2
.end method

.method public getSignature()[B
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1028
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    if-nez v1, :cond_0

    .line 1029
    return-object v2

    .line 1030
    :cond_0
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 1031
    .local v0, "dup":[B
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1032
    return-object v0
.end method

.method public getSubjectAlternativeNameExtension()Lsun/security/x509/SubjectAlternativeNameExtension;
    .locals 1

    .prologue
    .line 1241
    sget-object v0, Lsun/security/x509/PKIXExtensions;->SubjectAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    .line 1240
    check-cast v0, Lsun/security/x509/SubjectAlternativeNameExtension;

    return-object v0
.end method

.method public declared-synchronized getSubjectAlternativeNames()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    monitor-enter p0

    .line 1655
    :try_start_0
    iget-boolean v3, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->subjectAlternativeNames:Ljava/util/Collection;

    if-eqz v3, :cond_0

    .line 1656
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->subjectAlternativeNames:Ljava/util/Collection;

    invoke-static {v3}, Lsun/security/x509/X509CertImpl;->cloneAltNames(Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    monitor-exit p0

    return-object v3

    .line 1659
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getSubjectAlternativeNameExtension()Lsun/security/x509/SubjectAlternativeNameExtension;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 1660
    .local v2, "subjectAltNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    if-nez v2, :cond_1

    monitor-exit p0

    .line 1661
    return-object v4

    .line 1666
    :cond_1
    :try_start_2
    const-string/jumbo v3, "subject_name"

    .line 1665
    invoke-virtual {v2, v3}, Lsun/security/x509/SubjectAlternativeNameExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralNames;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 1671
    .local v1, "names":Lsun/security/x509/GeneralNames;
    :try_start_3
    invoke-static {v1}, Lsun/security/x509/X509CertImpl;->makeAltNames(Lsun/security/x509/GeneralNames;)Ljava/util/Collection;

    move-result-object v3

    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->subjectAlternativeNames:Ljava/util/Collection;

    .line 1672
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->subjectAlternativeNames:Ljava/util/Collection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v3

    .line 1667
    .end local v1    # "names":Lsun/security/x509/GeneralNames;
    :catch_0
    move-exception v0

    .line 1669
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_4
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v3

    monitor-exit p0

    return-object v3

    .end local v0    # "ioe":Ljava/io/IOException;
    .end local v2    # "subjectAltNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getSubjectDN()Ljava/security/Principal;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 907
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v2, :cond_0

    .line 908
    return-object v4

    .line 910
    :cond_0
    :try_start_0
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string/jumbo v3, "subject.dname"

    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Principal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 912
    .local v1, "subject":Ljava/security/Principal;
    return-object v1

    .line 913
    .end local v1    # "subject":Ljava/security/Principal;
    :catch_0
    move-exception v0

    .line 914
    .local v0, "e":Ljava/lang/Exception;
    return-object v4
.end method

.method public getSubjectKeyId()Lsun/security/x509/KeyIdentifier;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1134
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getSubjectKeyIdentifierExtension()Lsun/security/x509/SubjectKeyIdentifierExtension;

    move-result-object v1

    .line 1135
    .local v1, "ski":Lsun/security/x509/SubjectKeyIdentifierExtension;
    if-eqz v1, :cond_0

    .line 1138
    :try_start_0
    const-string/jumbo v2, "key_id"

    .line 1137
    invoke-virtual {v1, v2}, Lsun/security/x509/SubjectKeyIdentifierExtension;->get(Ljava/lang/String;)Lsun/security/x509/KeyIdentifier;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1139
    :catch_0
    move-exception v0

    .line 1141
    :cond_0
    return-object v3
.end method

.method public getSubjectKeyIdentifierExtension()Lsun/security/x509/SubjectKeyIdentifierExtension;
    .locals 1

    .prologue
    .line 1251
    sget-object v0, Lsun/security/x509/PKIXExtensions;->SubjectKey_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    .line 1250
    check-cast v0, Lsun/security/x509/SubjectKeyIdentifierExtension;

    return-object v0
.end method

.method public getSubjectUniqueID()[Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1104
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v2, :cond_0

    .line 1105
    return-object v4

    .line 1107
    :cond_0
    :try_start_0
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 1108
    const-string/jumbo v3, "subjectID"

    .line 1107
    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/UniqueIdentity;

    .line 1109
    .local v1, "id":Lsun/security/x509/UniqueIdentity;
    if-nez v1, :cond_1

    .line 1110
    return-object v4

    .line 1112
    :cond_1
    invoke-virtual {v1}, Lsun/security/x509/UniqueIdentity;->getId()[Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1113
    .end local v1    # "id":Lsun/security/x509/UniqueIdentity;
    :catch_0
    move-exception v0

    .line 1114
    .local v0, "e":Ljava/lang/Exception;
    return-object v4
.end method

.method public getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 924
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v2, :cond_0

    .line 925
    return-object v4

    .line 928
    :cond_0
    :try_start_0
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 929
    const-string/jumbo v3, "subject.x500principal"

    .line 928
    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/security/auth/x500/X500Principal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    .local v1, "subject":Ljavax/security/auth/x500/X500Principal;
    return-object v1

    .line 932
    .end local v1    # "subject":Ljavax/security/auth/x500/X500Principal;
    :catch_0
    move-exception v0

    .line 933
    .local v0, "e":Ljava/lang/Exception;
    return-object v4
.end method

.method public getTBSCertificate()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 1016
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-eqz v0, :cond_0

    .line 1017
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    invoke-virtual {v0}, Lsun/security/x509/X509CertInfo;->getEncodedInfo()[B

    move-result-object v0

    return-object v0

    .line 1019
    :cond_0
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    const-string/jumbo v1, "Uninitialized certificate"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUnparseableExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;
    .locals 6
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;

    .prologue
    const/4 v5, 0x0

    .line 1383
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v3, :cond_0

    .line 1384
    return-object v5

    .line 1389
    :cond_0
    :try_start_0
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string/jumbo v4, "extensions"

    invoke-virtual {v3, v4}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/CertificateExtensions;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1393
    .local v1, "extensions":Lsun/security/x509/CertificateExtensions;
    if-nez v1, :cond_1

    .line 1394
    return-object v5

    .line 1390
    .end local v1    # "extensions":Lsun/security/x509/CertificateExtensions;
    :catch_0
    move-exception v0

    .line 1391
    .local v0, "ce":Ljava/security/cert/CertificateException;
    return-object v5

    .line 1396
    .end local v0    # "ce":Ljava/security/cert/CertificateException;
    .restart local v1    # "extensions":Lsun/security/x509/CertificateExtensions;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lsun/security/x509/CertificateExtensions;->getUnparseableExtensions()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/x509/Extension;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    .line 1398
    .end local v1    # "extensions":Lsun/security/x509/CertificateExtensions;
    :catch_1
    move-exception v2

    .line 1399
    .local v2, "ioe":Ljava/io/IOException;
    return-object v5
.end method

.method public getVersion()I
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 859
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v2, :cond_0

    .line 860
    return v4

    .line 862
    :cond_0
    :try_start_0
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string/jumbo v3, "version.number"

    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 864
    .local v1, "vers":I
    add-int/lit8 v2, v1, 0x1

    return v2

    .line 865
    .end local v1    # "vers":I
    :catch_0
    move-exception v0

    .line 866
    .local v0, "e":Ljava/lang/Exception;
    return v4
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1269
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v2, :cond_0

    .line 1270
    return v4

    .line 1272
    :cond_0
    :try_start_0
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 1273
    const-string/jumbo v3, "extensions"

    .line 1272
    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/CertificateExtensions;

    .line 1274
    .local v1, "exts":Lsun/security/x509/CertificateExtensions;
    if-nez v1, :cond_1

    .line 1275
    return v4

    .line 1276
    :cond_1
    invoke-virtual {v1}, Lsun/security/x509/CertificateExtensions;->hasUnsupportedCriticalExtension()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1277
    .end local v1    # "exts":Lsun/security/x509/CertificateExtensions;
    :catch_0
    move-exception v0

    .line 1278
    .local v0, "e":Ljava/lang/Exception;
    return v4
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 717
    iget-boolean v3, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    if-eqz v3, :cond_0

    .line 718
    new-instance v3, Ljava/security/cert/CertificateException;

    const-string/jumbo v4, "cannot over-write existing certificate"

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 721
    :cond_0
    new-instance v0, Lsun/security/x509/X509AttributeName;

    invoke-direct {v0, p1}, Lsun/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    .line 722
    .local v0, "attr":Lsun/security/x509/X509AttributeName;
    invoke-virtual {v0}, Lsun/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    move-result-object v2

    .line 723
    .local v2, "id":Ljava/lang/String;
    const-string/jumbo v3, "x509"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 724
    new-instance v3, Ljava/security/cert/CertificateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid root of attribute name, expected [x509], received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 727
    :cond_1
    new-instance v1, Lsun/security/x509/X509AttributeName;

    invoke-virtual {v0}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lsun/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    .line 728
    .end local v0    # "attr":Lsun/security/x509/X509AttributeName;
    .local v1, "attr":Lsun/security/x509/X509AttributeName;
    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    move-result-object v2

    .line 730
    const-string/jumbo v3, "info"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 731
    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 732
    instance-of v3, p2, Lsun/security/x509/X509CertInfo;

    if-nez v3, :cond_2

    .line 733
    new-instance v3, Ljava/security/cert/CertificateException;

    const-string/jumbo v4, "Attribute value should be of type X509CertInfo."

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 736
    :cond_2
    check-cast p2, Lsun/security/x509/X509CertInfo;

    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 737
    iput-object v5, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    .line 715
    :goto_0
    return-void

    .line 739
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_3
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lsun/security/x509/X509CertInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 740
    iput-object v5, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    goto :goto_0

    .line 743
    :cond_4
    new-instance v3, Ljava/security/cert/CertificateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Attribute name not recognized or set() not allowed for the same: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public sign(Ljava/security/PrivateKey;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 547
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lsun/security/x509/X509CertImpl;->sign(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    return-void
.end method

.method public sign(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 571
    :try_start_0
    iget-boolean v5, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    if-eqz v5, :cond_0

    .line 572
    new-instance v5, Ljava/security/cert/CertificateEncodingException;

    .line 573
    const-string/jumbo v6, "cannot over-write existing certificate"

    .line 572
    invoke-direct {v5, v6}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    :catch_0
    move-exception v0

    .line 606
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 574
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    const/4 v3, 0x0

    .line 575
    .local v3, "sigEngine":Ljava/security/Signature;
    if-eqz p3, :cond_1

    :try_start_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 576
    :cond_1
    invoke-static {p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v3

    .line 580
    .local v3, "sigEngine":Ljava/security/Signature;
    :goto_0
    invoke-virtual {v3, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 583
    invoke-virtual {v3}, Ljava/security/Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lsun/security/x509/AlgorithmId;->get(Ljava/lang/String;)Lsun/security/x509/AlgorithmId;

    move-result-object v5

    iput-object v5, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    .line 585
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 586
    .local v1, "out":Lsun/security/util/DerOutputStream;
    new-instance v4, Lsun/security/util/DerOutputStream;

    invoke-direct {v4}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 589
    .local v4, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    invoke-virtual {v5, v4}, Lsun/security/x509/X509CertInfo;->encode(Ljava/io/OutputStream;)V

    .line 590
    invoke-virtual {v4}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v2

    .line 593
    .local v2, "rawCert":[B
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v5, v4}, Lsun/security/x509/AlgorithmId;->encode(Lsun/security/util/DerOutputStream;)V

    .line 596
    array-length v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v6, v5}, Ljava/security/Signature;->update([BII)V

    .line 597
    invoke-virtual {v3}, Ljava/security/Signature;->sign()[B

    move-result-object v5

    iput-object v5, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    .line 598
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    invoke-virtual {v4, v5}, Lsun/security/util/DerOutputStream;->putBitString([B)V

    .line 601
    const/16 v5, 0x30

    invoke-virtual {v1, v5, v4}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 602
    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    .line 603
    const/4 v5, 0x1

    iput-boolean v5, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    .line 569
    return-void

    .line 578
    .end local v1    # "out":Lsun/security/util/DerOutputStream;
    .end local v2    # "rawCert":[B
    .end local v4    # "tmp":Lsun/security/util/DerOutputStream;
    .local v3, "sigEngine":Ljava/security/Signature;
    :cond_2
    invoke-static {p2, p3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .local v3, "sigEngine":Ljava/security/Signature;
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 818
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    if-nez v2, :cond_1

    .line 819
    :cond_0
    const-string/jumbo v2, ""

    return-object v2

    .line 818
    :cond_1
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    if-eqz v2, :cond_0

    .line 821
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 823
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "[\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    invoke-virtual {v2}, Lsun/security/x509/X509CertInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    const-string/jumbo v2, "  Algorithm: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v3}, Lsun/security/x509/AlgorithmId;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    new-instance v0, Lsun/misc/HexDumpEncoder;

    invoke-direct {v0}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 828
    .local v0, "encoder":Lsun/misc/HexDumpEncoder;
    const-string/jumbo v2, "  Signature:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    invoke-virtual {v0, v3}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    const-string/jumbo v2, "\n]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public verify(Ljava/security/PublicKey;)V
    .locals 1
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 411
    const-string/jumbo v0, ""

    invoke-virtual {p0, p1, v0}, Lsun/security/x509/X509CertImpl;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    .line 409
    return-void
.end method

.method public declared-synchronized verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 433
    if-nez p2, :cond_0

    .line 434
    :try_start_0
    const-string/jumbo p2, ""

    .line 436
    :cond_0
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->verifiedPublicKey:Ljava/security/PublicKey;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->verifiedPublicKey:Ljava/security/PublicKey;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 439
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->verifiedProvider:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 440
    iget-boolean v2, p0, Lsun/security/x509/X509CertImpl;->verificationResult:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    monitor-exit p0

    .line 441
    return-void

    .line 443
    :cond_1
    :try_start_1
    new-instance v2, Ljava/security/SignatureException;

    const-string/jumbo v3, "Signature does not match."

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 447
    :cond_2
    :try_start_2
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    if-nez v2, :cond_3

    .line 448
    new-instance v2, Ljava/security/cert/CertificateEncodingException;

    const-string/jumbo v3, "Uninitialized certificate"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 451
    :cond_3
    const/4 v1, 0x0

    .line 452
    .local v1, "sigVerf":Ljava/security/Signature;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 453
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v2}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 457
    .local v1, "sigVerf":Ljava/security/Signature;
    :goto_0
    invoke-virtual {v1, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 459
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    invoke-virtual {v2}, Lsun/security/x509/X509CertInfo;->getEncodedInfo()[B

    move-result-object v0

    .line 460
    .local v0, "rawCert":[B
    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/security/Signature;->update([BII)V

    .line 463
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    invoke-virtual {v1, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v2

    iput-boolean v2, p0, Lsun/security/x509/X509CertImpl;->verificationResult:Z

    .line 464
    iput-object p1, p0, Lsun/security/x509/X509CertImpl;->verifiedPublicKey:Ljava/security/PublicKey;

    .line 465
    iput-object p2, p0, Lsun/security/x509/X509CertImpl;->verifiedProvider:Ljava/lang/String;

    .line 467
    iget-boolean v2, p0, Lsun/security/x509/X509CertImpl;->verificationResult:Z

    if-nez v2, :cond_5

    .line 468
    new-instance v2, Ljava/security/SignatureException;

    const-string/jumbo v3, "Signature does not match."

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 455
    .end local v0    # "rawCert":[B
    .local v1, "sigVerf":Ljava/security/Signature;
    :cond_4
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v2}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .local v1, "sigVerf":Ljava/security/Signature;
    goto :goto_0

    .restart local v0    # "rawCert":[B
    :cond_5
    monitor-exit p0

    .line 432
    return-void
.end method

.method public declared-synchronized verify(Ljava/security/PublicKey;Ljava/security/Provider;)V
    .locals 4
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 492
    :try_start_0
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    if-nez v2, :cond_0

    .line 493
    new-instance v2, Ljava/security/cert/CertificateEncodingException;

    const-string/jumbo v3, "Uninitialized certificate"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 496
    :cond_0
    const/4 v1, 0x0

    .line 497
    .local v1, "sigVerf":Ljava/security/Signature;
    if-nez p2, :cond_1

    .line 498
    :try_start_1
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v2}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 502
    .local v1, "sigVerf":Ljava/security/Signature;
    :goto_0
    invoke-virtual {v1, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 504
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    invoke-virtual {v2}, Lsun/security/x509/X509CertInfo;->getEncodedInfo()[B

    move-result-object v0

    .line 505
    .local v0, "rawCert":[B
    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/security/Signature;->update([BII)V

    .line 508
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    invoke-virtual {v1, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v2

    iput-boolean v2, p0, Lsun/security/x509/X509CertImpl;->verificationResult:Z

    .line 509
    iput-object p1, p0, Lsun/security/x509/X509CertImpl;->verifiedPublicKey:Ljava/security/PublicKey;

    .line 511
    iget-boolean v2, p0, Lsun/security/x509/X509CertImpl;->verificationResult:Z

    if-nez v2, :cond_2

    .line 512
    new-instance v2, Ljava/security/SignatureException;

    const-string/jumbo v3, "Signature does not match."

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 500
    .end local v0    # "rawCert":[B
    .local v1, "sigVerf":Ljava/security/Signature;
    :cond_1
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v2}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .local v1, "sigVerf":Ljava/security/Signature;
    goto :goto_0

    .restart local v0    # "rawCert":[B
    :cond_2
    monitor-exit p0

    .line 491
    return-void
.end method
