.class public Lsun/security/provider/certpath/X509CertPath;
.super Ljava/security/cert/CertPath;
.source "X509CertPath.java"


# static fields
.field private static final COUNT_ENCODING:Ljava/lang/String; = "count"

.field private static final PKCS7_ENCODING:Ljava/lang/String; = "PKCS7"

.field private static final PKIPATH_ENCODING:Ljava/lang/String; = "PkiPath"

.field private static final encodingList:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x453f54f74c4520b4L


# instance fields
.field private certs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "PkiPath"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    const-string/jumbo v1, "PKCS7"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    sput-object v1, Lsun/security/provider/certpath/X509CertPath;->encodingList:Ljava/util/Collection;

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 139
    const-string/jumbo v0, "PkiPath"

    invoke-direct {p0, p1, v0}, Lsun/security/provider/certpath/X509CertPath;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 154
    const-string/jumbo v0, "X.509"

    invoke-direct {p0, v0}, Ljava/security/cert/CertPath;-><init>(Ljava/lang/String;)V

    .line 156
    const-string/jumbo v0, "PkiPath"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-static {p1}, Lsun/security/provider/certpath/X509CertPath;->parsePKIPATH(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/X509CertPath;->certs:Ljava/util/List;

    .line 153
    :goto_0
    return-void

    .line 156
    :cond_0
    const-string/jumbo v0, "PKCS7"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    invoke-static {p1}, Lsun/security/provider/certpath/X509CertPath;->parsePKCS7(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/X509CertPath;->certs:Ljava/util/List;

    goto :goto_0

    .line 164
    :cond_1
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "unsupported encoding"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "certs":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    const-string/jumbo v2, "X.509"

    invoke-direct {p0, v2}, Ljava/security/cert/CertPath;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "obj$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 115
    .local v0, "obj":Ljava/lang/Object;
    instance-of v2, v0, Ljava/security/cert/X509Certificate;

    if-nez v2, :cond_0

    .line 116
    new-instance v2, Ljava/security/cert/CertificateException;

    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "List is not all X509Certificates: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 118
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 117
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 116
    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 127
    .end local v0    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 126
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lsun/security/provider/certpath/X509CertPath;->certs:Ljava/util/List;

    .line 104
    return-void
.end method

.method private encodePKCS7()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 324
    new-instance v2, Lsun/security/pkcs/PKCS7;

    new-array v4, v7, [Lsun/security/x509/AlgorithmId;

    .line 325
    new-instance v5, Lsun/security/pkcs/ContentInfo;

    sget-object v3, Lsun/security/pkcs/ContentInfo;->DATA_OID:Lsun/security/util/ObjectIdentifier;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6}, Lsun/security/pkcs/ContentInfo;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    .line 326
    iget-object v3, p0, Lsun/security/provider/certpath/X509CertPath;->certs:Ljava/util/List;

    iget-object v6, p0, Lsun/security/provider/certpath/X509CertPath;->certs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/security/cert/X509Certificate;

    invoke-interface {v3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/security/cert/X509Certificate;

    .line 327
    new-array v6, v7, [Lsun/security/pkcs/SignerInfo;

    .line 324
    invoke-direct {v2, v4, v5, v3, v6}, Lsun/security/pkcs/PKCS7;-><init>([Lsun/security/x509/AlgorithmId;Lsun/security/pkcs/ContentInfo;[Ljava/security/cert/X509Certificate;[Lsun/security/pkcs/SignerInfo;)V

    .line 328
    .local v2, "p7":Lsun/security/pkcs/PKCS7;
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 330
    .local v0, "derout":Lsun/security/util/DerOutputStream;
    :try_start_0
    invoke-virtual {v2, v0}, Lsun/security/pkcs/PKCS7;->encodeSignedData(Lsun/security/util/DerOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 331
    :catch_0
    move-exception v1

    .line 332
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v3, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private encodePKIPATH()[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 289
    iget-object v6, p0, Lsun/security/provider/certpath/X509CertPath;->certs:Ljava/util/List;

    iget-object v7, p0, Lsun/security/provider/certpath/X509CertPath;->certs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v5

    .line 291
    .local v5, "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/security/cert/X509Certificate;>;"
    :try_start_0
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 294
    .local v0, "bytes":Lsun/security/util/DerOutputStream;
    :goto_0
    invoke-interface {v5}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 295
    invoke-interface {v5}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 297
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    iget-object v6, p0, Lsun/security/provider/certpath/X509CertPath;->certs:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v6

    iget-object v7, p0, Lsun/security/provider/certpath/X509CertPath;->certs:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    if-eq v6, v7, :cond_0

    .line 298
    new-instance v6, Ljava/security/cert/CertificateEncodingException;

    .line 299
    const-string/jumbo v7, "Duplicate Certificate"

    .line 298
    invoke-direct {v6, v7}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    .end local v0    # "bytes":Lsun/security/util/DerOutputStream;
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    :catch_0
    move-exception v4

    .line 312
    .local v4, "ioe":Ljava/io/IOException;
    new-instance v6, Ljava/security/cert/CertificateEncodingException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "IOException encoding PkiPath data: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 302
    .end local v4    # "ioe":Ljava/io/IOException;
    .restart local v0    # "bytes":Lsun/security/util/DerOutputStream;
    .restart local v1    # "cert":Ljava/security/cert/X509Certificate;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    .line 303
    .local v3, "encoded":[B
    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 307
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v3    # "encoded":[B
    :cond_1
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 308
    .local v2, "derout":Lsun/security/util/DerOutputStream;
    const/16 v6, 0x30

    invoke-virtual {v2, v6, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 309
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    return-object v6
.end method

.method public static getEncodingsStatic()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 367
    sget-object v0, Lsun/security/provider/certpath/X509CertPath;->encodingList:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method private static parsePKCS7(Ljava/io/InputStream;)Ljava/util/List;
    .locals 8
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 221
    if-nez p0, :cond_0

    .line 222
    new-instance v5, Ljava/security/cert/CertificateException;

    const-string/jumbo v6, "input stream is null"

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 226
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v5

    if-nez v5, :cond_1

    .line 229
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-static {p0}, Lsun/security/provider/certpath/X509CertPath;->readAllBytes(Ljava/io/InputStream;)[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .end local p0    # "is":Ljava/io/InputStream;
    .local v3, "is":Ljava/io/InputStream;
    move-object p0, v3

    .line 231
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local p0    # "is":Ljava/io/InputStream;
    :cond_1
    new-instance v4, Lsun/security/pkcs/PKCS7;

    invoke-direct {v4, p0}, Lsun/security/pkcs/PKCS7;-><init>(Ljava/io/InputStream;)V

    .line 233
    .local v4, "pkcs7":Lsun/security/pkcs/PKCS7;
    invoke-virtual {v4}, Lsun/security/pkcs/PKCS7;->getCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 235
    .local v0, "certArray":[Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_2

    .line 236
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 249
    .local v1, "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :goto_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    return-object v5

    .line 239
    .end local v1    # "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :cond_2
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v1    # "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    goto :goto_0

    .line 241
    .end local v0    # "certArray":[Ljava/security/cert/X509Certificate;
    .end local v1    # "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v4    # "pkcs7":Lsun/security/pkcs/PKCS7;
    :catch_0
    move-exception v2

    .line 242
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v5, Ljava/security/cert/CertificateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "IOException parsing PKCS7 data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static parsePKIPATH(Ljava/io/InputStream;)Ljava/util/List;
    .locals 10
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 178
    const/4 v1, 0x0

    .line 179
    .local v1, "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v0, 0x0

    .line 181
    .local v0, "certFac":Ljava/security/cert/CertificateFactory;
    if-nez p0, :cond_0

    .line 182
    new-instance v7, Ljava/security/cert/CertificateException;

    const-string/jumbo v8, "input stream is null"

    invoke-direct {v7, v8}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 186
    :cond_0
    :try_start_0
    new-instance v3, Lsun/security/util/DerInputStream;

    invoke-static {p0}, Lsun/security/provider/certpath/X509CertPath;->readAllBytes(Ljava/io/InputStream;)[B

    move-result-object v7

    invoke-direct {v3, v7}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 187
    .local v3, "dis":Lsun/security/util/DerInputStream;
    const/4 v7, 0x3

    invoke-virtual {v3, v7}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v6

    .line 188
    .local v6, "seq":[Lsun/security/util/DerValue;
    array-length v7, v6

    if-nez v7, :cond_1

    .line 189
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    return-object v7

    .line 192
    :cond_1
    const-string/jumbo v7, "X.509"

    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 193
    .local v0, "certFac":Ljava/security/cert/CertificateFactory;
    new-instance v2, Ljava/util/ArrayList;

    array-length v7, v6

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .local v2, "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :try_start_1
    array-length v7, v6

    .end local v1    # "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    add-int/lit8 v4, v7, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_2

    .line 198
    new-instance v7, Ljava/io/ByteArrayInputStream;

    aget-object v8, v6, v4

    invoke-virtual {v8}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 197
    invoke-virtual {v0, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 201
    :cond_2
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    return-object v7

    .line 203
    .end local v0    # "certFac":Ljava/security/cert/CertificateFactory;
    .end local v2    # "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v3    # "dis":Lsun/security/util/DerInputStream;
    .end local v4    # "i":I
    .end local v6    # "seq":[Lsun/security/util/DerValue;
    .restart local v1    # "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catch_0
    move-exception v5

    .line 204
    .end local v1    # "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .local v5, "ioe":Ljava/io/IOException;
    :goto_1
    new-instance v7, Ljava/security/cert/CertificateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "IOException parsing PkiPath data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 203
    .end local v5    # "ioe":Ljava/io/IOException;
    .restart local v0    # "certFac":Ljava/security/cert/CertificateFactory;
    .restart local v2    # "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v3    # "dis":Lsun/security/util/DerInputStream;
    .restart local v6    # "seq":[Lsun/security/util/DerValue;
    :catch_1
    move-exception v5

    .restart local v5    # "ioe":Ljava/io/IOException;
    move-object v1, v2

    .end local v2    # "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .local v1, "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    goto :goto_1
.end method

.method private static readAllBytes(Ljava/io/InputStream;)[B
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 259
    const/16 v3, 0x2000

    new-array v1, v3, [B

    .line 260
    .local v1, "buffer":[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x800

    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 262
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "n":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 263
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 265
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public getCertificates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 395
    iget-object v0, p0, Lsun/security/provider/certpath/X509CertPath;->certs:Ljava/util/List;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 278
    invoke-direct {p0}, Lsun/security/provider/certpath/X509CertPath;->encodePKIPATH()[B

    move-result-object v0

    return-object v0
.end method

.method public getEncoded(Ljava/lang/String;)[B
    .locals 2
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 349
    const-string/jumbo v0, "PkiPath"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    invoke-direct {p0}, Lsun/security/provider/certpath/X509CertPath;->encodePKIPATH()[B

    move-result-object v0

    return-object v0

    .line 349
    :cond_0
    const-string/jumbo v0, "PKCS7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    invoke-direct {p0}, Lsun/security/provider/certpath/X509CertPath;->encodePKCS7()[B

    move-result-object v0

    return-object v0

    .line 355
    :cond_1
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    const-string/jumbo v1, "unsupported encoding"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEncodings()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 383
    invoke-static {}, Lsun/security/provider/certpath/X509CertPath;->getEncodingsStatic()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
