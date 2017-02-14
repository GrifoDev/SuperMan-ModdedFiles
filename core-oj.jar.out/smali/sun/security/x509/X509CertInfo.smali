.class public Lsun/security/x509/X509CertInfo;
.super Ljava/lang/Object;
.source "X509CertInfo.java"

# interfaces
.implements Lsun/security/x509/CertAttrSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsun/security/x509/CertAttrSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALGORITHM_ID:Ljava/lang/String; = "algorithmID"

.field private static final ATTR_ALGORITHM:I = 0x3

.field private static final ATTR_EXTENSIONS:I = 0xa

.field private static final ATTR_ISSUER:I = 0x4

.field private static final ATTR_ISSUER_ID:I = 0x8

.field private static final ATTR_KEY:I = 0x7

.field private static final ATTR_SERIAL:I = 0x2

.field private static final ATTR_SUBJECT:I = 0x6

.field private static final ATTR_SUBJECT_ID:I = 0x9

.field private static final ATTR_VALIDITY:I = 0x5

.field private static final ATTR_VERSION:I = 0x1

.field public static final DN_NAME:Ljava/lang/String; = "dname"

.field public static final EXTENSIONS:Ljava/lang/String; = "extensions"

.field public static final IDENT:Ljava/lang/String; = "x509.info"

.field public static final ISSUER:Ljava/lang/String; = "issuer"

.field public static final ISSUER_ID:Ljava/lang/String; = "issuerID"

.field public static final KEY:Ljava/lang/String; = "key"

.field public static final NAME:Ljava/lang/String; = "info"

.field public static final SERIAL_NUMBER:Ljava/lang/String; = "serialNumber"

.field public static final SUBJECT:Ljava/lang/String; = "subject"

.field public static final SUBJECT_ID:Ljava/lang/String; = "subjectID"

.field public static final VALIDITY:Ljava/lang/String; = "validity"

.field public static final VERSION:Ljava/lang/String; = "version"

.field private static final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected algId:Lsun/security/x509/CertificateAlgorithmId;

.field protected extensions:Lsun/security/x509/CertificateExtensions;

.field protected interval:Lsun/security/x509/CertificateValidity;

.field protected issuer:Lsun/security/x509/X500Name;

.field protected issuerUniqueId:Lsun/security/x509/UniqueIdentity;

.field protected pubKey:Lsun/security/x509/CertificateX509Key;

.field private rawCertInfo:[B

.field protected serialNum:Lsun/security/x509/CertificateSerialNumber;

.field protected subject:Lsun/security/x509/X500Name;

.field protected subjectUniqueId:Lsun/security/x509/UniqueIdentity;

.field protected version:Lsun/security/x509/CertificateVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    const-string/jumbo v1, "version"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    const-string/jumbo v1, "serialNumber"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    const-string/jumbo v1, "algorithmID"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    const-string/jumbo v1, "issuer"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    const-string/jumbo v1, "validity"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    const-string/jumbo v1, "subject"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    const-string/jumbo v1, "key"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    const-string/jumbo v1, "issuerID"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    const-string/jumbo v1, "subjectID"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    const-string/jumbo v1, "extensions"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lsun/security/x509/CertificateVersion;

    invoke-direct {v0}, Lsun/security/x509/CertificateVersion;-><init>()V

    iput-object v0, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    iput-object v1, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    iput-object v1, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    iput-object v1, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    iput-object v1, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    iput-object v1, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    iput-object v1, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    iput-object v1, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/UniqueIdentity;

    iput-object v1, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/UniqueIdentity;

    iput-object v1, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    iput-object v1, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lsun/security/x509/CertificateVersion;

    invoke-direct {v1}, Lsun/security/x509/CertificateVersion;-><init>()V

    iput-object v1, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/UniqueIdentity;

    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/UniqueIdentity;

    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    :try_start_0
    invoke-direct {p0, p1}, Lsun/security/x509/X509CertInfo;->parse(Lsun/security/util/DerValue;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/cert/CertificateParsingException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lsun/security/x509/CertificateVersion;

    invoke-direct {v2}, Lsun/security/x509/CertificateVersion;-><init>()V

    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/UniqueIdentity;

    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/UniqueIdentity;

    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    :try_start_0
    new-instance v1, Lsun/security/util/DerValue;

    invoke-direct {v1, p1}, Lsun/security/util/DerValue;-><init>([B)V

    invoke-direct {p0, v1}, Lsun/security/x509/X509CertInfo;->parse(Lsun/security/util/DerValue;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/security/cert/CertificateParsingException;

    invoke-direct {v2, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private attributeMap(Ljava/lang/String;)I
    .locals 2

    sget-object v1, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private emit(Lsun/security/util/DerOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, -0x80

    const/4 v3, 0x0

    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    invoke-virtual {v1, v0}, Lsun/security/x509/CertificateVersion;->encode(Ljava/io/OutputStream;)V

    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    invoke-virtual {v1, v0}, Lsun/security/x509/CertificateSerialNumber;->encode(Ljava/io/OutputStream;)V

    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    invoke-virtual {v1, v0}, Lsun/security/x509/CertificateAlgorithmId;->encode(Ljava/io/OutputStream;)V

    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    invoke-virtual {v1, v3}, Lsun/security/x509/CertificateVersion;->compare(I)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    invoke-virtual {v1}, Lsun/security/x509/X500Name;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/security/cert/CertificateParsingException;

    const-string/jumbo v2, "Null issuer DN not allowed in v1 certificate"

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    invoke-virtual {v1, v0}, Lsun/security/x509/X500Name;->encode(Lsun/security/util/DerOutputStream;)V

    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    invoke-virtual {v1, v0}, Lsun/security/x509/CertificateValidity;->encode(Ljava/io/OutputStream;)V

    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    invoke-virtual {v1, v3}, Lsun/security/x509/CertificateVersion;->compare(I)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    invoke-virtual {v1}, Lsun/security/x509/X500Name;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/security/cert/CertificateParsingException;

    const-string/jumbo v2, "Null subject DN not allowed in v1 certificate"

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    invoke-virtual {v1, v0}, Lsun/security/x509/X500Name;->encode(Lsun/security/util/DerOutputStream;)V

    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    invoke-virtual {v1, v0}, Lsun/security/x509/CertificateX509Key;->encode(Ljava/io/OutputStream;)V

    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/UniqueIdentity;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/UniqueIdentity;

    const/4 v2, 0x1

    invoke-static {v4, v3, v2}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v2

    invoke-virtual {v1, v0, v2}, Lsun/security/x509/UniqueIdentity;->encode(Lsun/security/util/DerOutputStream;B)V

    :cond_2
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/UniqueIdentity;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/UniqueIdentity;

    const/4 v2, 0x2

    invoke-static {v4, v3, v2}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v2

    invoke-virtual {v1, v0, v2}, Lsun/security/x509/UniqueIdentity;->encode(Lsun/security/util/DerOutputStream;B)V

    :cond_3
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    invoke-virtual {v1, v0}, Lsun/security/x509/CertificateExtensions;->encode(Ljava/io/OutputStream;)V

    :cond_4
    const/16 v1, 0x30

    invoke-virtual {p1, v1, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    return-void
.end method

.method private getX500Name(Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "dname"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "x500principal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    iget-object v0, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    invoke-virtual {v0}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    iget-object v0, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    invoke-virtual {v0}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parse(Lsun/security/util/DerValue;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x2

    const/4 v4, 0x0

    iget-byte v2, p1, Lsun/security/util/DerValue;->tag:B

    const/16 v3, 0x30

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/security/cert/CertificateParsingException;

    const-string/jumbo v3, "signed fields invalid"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    invoke-virtual {v1, v4}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lsun/security/x509/CertificateVersion;

    invoke-direct {v2, v1}, Lsun/security/x509/CertificateVersion;-><init>(Lsun/security/util/DerValue;)V

    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    :cond_1
    new-instance v2, Lsun/security/x509/CertificateSerialNumber;

    invoke-direct {v2, v1}, Lsun/security/x509/CertificateSerialNumber;-><init>(Lsun/security/util/DerValue;)V

    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    new-instance v2, Lsun/security/x509/CertificateAlgorithmId;

    invoke-direct {v2, v0}, Lsun/security/x509/CertificateAlgorithmId;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    new-instance v2, Lsun/security/x509/X500Name;

    invoke-direct {v2, v0}, Lsun/security/x509/X500Name;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    iget-object v2, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    invoke-virtual {v2}, Lsun/security/x509/X500Name;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/security/cert/CertificateParsingException;

    const-string/jumbo v3, "Empty issuer DN not allowed in X509Certificates"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v2, Lsun/security/x509/CertificateValidity;

    invoke-direct {v2, v0}, Lsun/security/x509/CertificateValidity;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    new-instance v2, Lsun/security/x509/X500Name;

    invoke-direct {v2, v0}, Lsun/security/x509/X500Name;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    iget-object v2, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    invoke-virtual {v2, v4}, Lsun/security/x509/CertificateVersion;->compare(I)I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    invoke-virtual {v2}, Lsun/security/x509/X500Name;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/security/cert/CertificateParsingException;

    const-string/jumbo v3, "Empty subject DN not allowed in v1 certificate"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v2, Lsun/security/x509/CertificateX509Key;

    invoke-direct {v2, v0}, Lsun/security/x509/CertificateX509Key;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    invoke-virtual {v2, v4}, Lsun/security/x509/CertificateVersion;->compare(I)I

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Ljava/security/cert/CertificateParsingException;

    const-string/jumbo v3, "no more data allowed for version 1 certificate"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    return-void

    :cond_5
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lsun/security/x509/UniqueIdentity;

    invoke-direct {v2, v1}, Lsun/security/x509/UniqueIdentity;-><init>(Lsun/security/util/DerValue;)V

    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/UniqueIdentity;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-nez v2, :cond_6

    return-void

    :cond_6
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    :cond_7
    invoke-virtual {v1, v5}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v2, Lsun/security/x509/UniqueIdentity;

    invoke-direct {v2, v1}, Lsun/security/x509/UniqueIdentity;-><init>(Lsun/security/util/DerValue;)V

    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/UniqueIdentity;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-nez v2, :cond_8

    return-void

    :cond_8
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    :cond_9
    iget-object v2, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    invoke-virtual {v2, v5}, Lsun/security/x509/CertificateVersion;->compare(I)I

    move-result v2

    if-eqz v2, :cond_a

    new-instance v2, Ljava/security/cert/CertificateParsingException;

    const-string/jumbo v3, "Extensions not allowed in v2 certificate"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v2, Lsun/security/x509/CertificateExtensions;

    iget-object v3, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-direct {v2, v3}, Lsun/security/x509/CertificateExtensions;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    :cond_b
    iget-object v2, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    invoke-direct {p0, v2, v3}, Lsun/security/x509/X509CertInfo;->verifyCert(Lsun/security/x509/X500Name;Lsun/security/x509/CertificateExtensions;)V

    return-void
.end method

.method private setAlgorithmId(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    instance-of v0, p1, Lsun/security/x509/CertificateAlgorithmId;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "AlgorithmId class type invalid."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lsun/security/x509/CertificateAlgorithmId;

    iput-object p1, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    return-void
.end method

.method private setExtensions(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lsun/security/x509/CertificateVersion;->compare(I)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "Invalid version"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v0, p1, Lsun/security/x509/CertificateExtensions;

    if-nez v0, :cond_1

    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "Extensions class type invalid."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast p1, Lsun/security/x509/CertificateExtensions;

    iput-object p1, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    return-void
.end method

.method private setIssuer(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    instance-of v0, p1, Lsun/security/x509/X500Name;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "Issuer class type invalid."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lsun/security/x509/X500Name;

    iput-object p1, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    return-void
.end method

.method private setIssuerUniqueId(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsun/security/x509/CertificateVersion;->compare(I)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "Invalid version"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v0, p1, Lsun/security/x509/UniqueIdentity;

    if-nez v0, :cond_1

    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "IssuerUniqueId class type invalid."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast p1, Lsun/security/x509/UniqueIdentity;

    iput-object p1, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/UniqueIdentity;

    return-void
.end method

.method private setKey(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    instance-of v0, p1, Lsun/security/x509/CertificateX509Key;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "Key class type invalid."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lsun/security/x509/CertificateX509Key;

    iput-object p1, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    return-void
.end method

.method private setSerialNumber(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    instance-of v0, p1, Lsun/security/x509/CertificateSerialNumber;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "SerialNumber class type invalid."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lsun/security/x509/CertificateSerialNumber;

    iput-object p1, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    return-void
.end method

.method private setSubject(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    instance-of v0, p1, Lsun/security/x509/X500Name;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "Subject class type invalid."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lsun/security/x509/X500Name;

    iput-object p1, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    return-void
.end method

.method private setSubjectUniqueId(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsun/security/x509/CertificateVersion;->compare(I)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "Invalid version"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v0, p1, Lsun/security/x509/UniqueIdentity;

    if-nez v0, :cond_1

    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "SubjectUniqueId class type invalid."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast p1, Lsun/security/x509/UniqueIdentity;

    iput-object p1, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/UniqueIdentity;

    return-void
.end method

.method private setValidity(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    instance-of v0, p1, Lsun/security/x509/CertificateValidity;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "CertificateValidity class type invalid."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lsun/security/x509/CertificateValidity;

    iput-object p1, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    return-void
.end method

.method private setVersion(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    instance-of v0, p1, Lsun/security/x509/CertificateVersion;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "Version class type invalid."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lsun/security/x509/CertificateVersion;

    iput-object p1, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    return-void
.end method

.method private verifyCert(Lsun/security/x509/X500Name;Lsun/security/x509/CertificateExtensions;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lsun/security/x509/X500Name;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez p2, :cond_0

    new-instance v5, Ljava/security/cert/CertificateParsingException;

    const-string/jumbo v6, "X.509 Certificate is incomplete: subject field is empty, and certificate has no extensions"

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    const-string/jumbo v5, "SubjectAlternativeName"

    invoke-virtual {p2, v5}, Lsun/security/x509/CertificateExtensions;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lsun/security/x509/SubjectAlternativeNameExtension;

    move-object v4, v0

    const-string/jumbo v5, "subject_name"

    invoke-virtual {v4, v5}, Lsun/security/x509/SubjectAlternativeNameExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralNames;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lsun/security/x509/GeneralNames;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    new-instance v5, Ljava/security/cert/CertificateParsingException;

    const-string/jumbo v6, "X.509 Certificate is incomplete: subject field is empty, and SubjectAlternativeName extension is empty"

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_0
    move-exception v1

    new-instance v5, Ljava/security/cert/CertificateParsingException;

    const-string/jumbo v6, "X.509 Certificate is incomplete: subject field is empty, and SubjectAlternativeName extension is absent"

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    invoke-virtual {v4}, Lsun/security/x509/SubjectAlternativeNameExtension;->isCritical()Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v5, Ljava/security/cert/CertificateParsingException;

    const-string/jumbo v6, "X.509 Certificate is incomplete: SubjectAlternativeName extension MUST be marked critical when subject field is empty"

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v1, Lsun/security/x509/X509AttributeName;

    invoke-direct {v1, p1}, Lsun/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lsun/security/x509/X509CertInfo;->attributeMap(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v3, Ljava/security/cert/CertificateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Attribute name not recognized: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v2

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    if-nez v2, :cond_2

    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateVersion;->delete(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    if-nez v2, :cond_3

    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateSerialNumber;->delete(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    if-nez v2, :cond_4

    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateAlgorithmId;->delete(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    goto :goto_0

    :pswitch_4
    if-nez v2, :cond_5

    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateValidity;->delete(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    goto :goto_0

    :pswitch_6
    if-nez v2, :cond_6

    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateX509Key;->delete(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/UniqueIdentity;

    goto :goto_0

    :pswitch_8
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/UniqueIdentity;

    goto :goto_0

    :pswitch_9
    if-nez v2, :cond_7

    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    goto :goto_0

    :cond_7
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateExtensions;->delete(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public encode(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    if-nez v1, :cond_0

    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    invoke-direct {p0, v0}, Lsun/security/x509/X509CertInfo;->emit(Lsun/security/util/DerOutputStream;)V

    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    :cond_0
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lsun/security/x509/X509CertInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lsun/security/x509/X509CertInfo;

    invoke-virtual {p0, p1}, Lsun/security/x509/X509CertInfo;->equals(Lsun/security/x509/X509CertInfo;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Lsun/security/x509/X509CertInfo;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_0

    return v4

    :cond_0
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    if-eqz v1, :cond_1

    iget-object v1, p1, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    if-nez v1, :cond_2

    :cond_1
    return v3

    :cond_2
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    array-length v1, v1

    iget-object v2, p1, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    array-length v2, v2

    if-eq v1, v2, :cond_3

    return v3

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    array-length v1, v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    aget-byte v1, v1, v0

    iget-object v2, p1, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    aget-byte v2, v2, v0

    if-eq v1, v2, :cond_4

    return v3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return v4
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x0

    new-instance v1, Lsun/security/x509/X509AttributeName;

    invoke-direct {v1, p1}, Lsun/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lsun/security/x509/X509CertInfo;->attributeMap(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v3, Ljava/security/cert/CertificateParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Attribute name not recognized: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v2

    packed-switch v0, :pswitch_data_0

    return-object v4

    :pswitch_0
    if-nez v2, :cond_1

    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    return-object v3

    :cond_1
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    if-nez v3, :cond_2

    return-object v4

    :cond_2
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateExtensions;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    :pswitch_1
    if-nez v2, :cond_3

    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    return-object v3

    :cond_3
    invoke-direct {p0, v2, v5}, Lsun/security/x509/X509CertInfo;->getX500Name(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    :pswitch_2
    if-nez v2, :cond_4

    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    return-object v3

    :cond_4
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lsun/security/x509/X509CertInfo;->getX500Name(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    :pswitch_3
    if-nez v2, :cond_5

    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    return-object v3

    :cond_5
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateX509Key;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    :pswitch_4
    if-nez v2, :cond_6

    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    return-object v3

    :cond_6
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateAlgorithmId;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    :pswitch_5
    if-nez v2, :cond_7

    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    return-object v3

    :cond_7
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateValidity;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    :pswitch_6
    if-nez v2, :cond_8

    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    return-object v3

    :cond_8
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateVersion;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    :pswitch_7
    if-nez v2, :cond_9

    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    return-object v3

    :cond_9
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateSerialNumber;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    :pswitch_8
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/UniqueIdentity;

    return-object v3

    :pswitch_9
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/UniqueIdentity;

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_0
    .end packed-switch
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

    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    const-string/jumbo v1, "version"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    const-string/jumbo v1, "serialNumber"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    const-string/jumbo v1, "algorithmID"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    const-string/jumbo v1, "issuer"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    const-string/jumbo v1, "validity"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    const-string/jumbo v1, "subject"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    const-string/jumbo v1, "key"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    const-string/jumbo v1, "issuerID"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    const-string/jumbo v1, "subjectID"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    const-string/jumbo v1, "extensions"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public getEncodedInfo()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    :try_start_0
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    if-nez v3, :cond_0

    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    invoke-direct {p0, v2}, Lsun/security/x509/X509CertInfo;->emit(Lsun/security/util/DerOutputStream;)V

    invoke-virtual {v2}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    :cond_0
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v1

    new-instance v3, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_1
    move-exception v0

    new-instance v3, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "info"

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    aget-byte v2, v2, v0

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v1, Lsun/security/x509/X509AttributeName;

    invoke-direct {v1, p1}, Lsun/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lsun/security/x509/X509CertInfo;->attributeMap(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v3, Ljava/security/cert/CertificateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Attribute name not recognized: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v2

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    if-nez v2, :cond_1

    invoke-direct {p0, p2}, Lsun/security/x509/X509CertInfo;->setVersion(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    invoke-virtual {v3, v2, p2}, Lsun/security/x509/CertificateVersion;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    if-nez v2, :cond_2

    invoke-direct {p0, p2}, Lsun/security/x509/X509CertInfo;->setSerialNumber(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    invoke-virtual {v3, v2, p2}, Lsun/security/x509/CertificateSerialNumber;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    if-nez v2, :cond_3

    invoke-direct {p0, p2}, Lsun/security/x509/X509CertInfo;->setAlgorithmId(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    invoke-virtual {v3, v2, p2}, Lsun/security/x509/CertificateAlgorithmId;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p2}, Lsun/security/x509/X509CertInfo;->setIssuer(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_4
    if-nez v2, :cond_4

    invoke-direct {p0, p2}, Lsun/security/x509/X509CertInfo;->setValidity(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    invoke-virtual {v3, v2, p2}, Lsun/security/x509/CertificateValidity;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p2}, Lsun/security/x509/X509CertInfo;->setSubject(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_6
    if-nez v2, :cond_5

    invoke-direct {p0, p2}, Lsun/security/x509/X509CertInfo;->setKey(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    invoke-virtual {v3, v2, p2}, Lsun/security/x509/CertificateX509Key;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0, p2}, Lsun/security/x509/X509CertInfo;->setIssuerUniqueId(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_8
    invoke-direct {p0, p2}, Lsun/security/x509/X509CertInfo;->setSubjectUniqueId(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_9
    if-nez v2, :cond_6

    invoke-direct {p0, p2}, Lsun/security/x509/X509CertInfo;->setExtensions(Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    if-nez v3, :cond_7

    new-instance v3, Lsun/security/x509/CertificateExtensions;

    invoke-direct {v3}, Lsun/security/x509/CertificateExtensions;-><init>()V

    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    :cond_7
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    invoke-virtual {v3, v2, p2}, Lsun/security/x509/CertificateExtensions;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    iget-object v12, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    if-nez v12, :cond_1

    :cond_0
    new-instance v12, Ljava/lang/NullPointerException;

    const-string/jumbo v13, "X.509 cert is incomplete"

    invoke-direct {v12, v13}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_1
    iget-object v12, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    if-eqz v12, :cond_0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    invoke-virtual {v13}, Lsun/security/x509/CertificateVersion;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "  Subject: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    invoke-virtual {v13}, Lsun/security/x509/X500Name;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "  Signature Algorithm: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    invoke-virtual {v13}, Lsun/security/x509/CertificateAlgorithmId;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "  Key:  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    invoke-virtual {v13}, Lsun/security/x509/CertificateX509Key;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    invoke-virtual {v13}, Lsun/security/x509/CertificateValidity;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "  Issuer: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    invoke-virtual {v13}, Lsun/security/x509/X500Name;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    invoke-virtual {v13}, Lsun/security/x509/CertificateSerialNumber;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/UniqueIdentity;

    if-eqz v12, :cond_2

    const-string/jumbo v12, "  Issuer Id:\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/UniqueIdentity;

    invoke-virtual {v13}, Lsun/security/x509/UniqueIdentity;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v12, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/UniqueIdentity;

    if-eqz v12, :cond_3

    const-string/jumbo v12, "  Subject Id:\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/UniqueIdentity;

    invoke-virtual {v13}, Lsun/security/x509/UniqueIdentity;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v12, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    if-eqz v12, :cond_7

    iget-object v12, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    invoke-virtual {v12}, Lsun/security/x509/CertificateExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v0

    const/4 v12, 0x0

    new-array v12, v12, [Lsun/security/x509/Extension;

    invoke-interface {v0, v12}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lsun/security/x509/Extension;

    const-string/jumbo v12, "\nCertificate Extensions: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v6

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    :goto_0
    array-length v12, v6

    if-ge v7, v12, :cond_6

    const-string/jumbo v12, "\n["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v13, v7, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "]: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v6, v7

    :try_start_0
    invoke-virtual {v3}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v12

    invoke-static {v12}, Lsun/security/x509/OIDMap;->getClass(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Class;

    move-result-object v12

    if-nez v12, :cond_5

    invoke-virtual {v3}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lsun/security/x509/Extension;->getExtensionValue()[B

    move-result-object v5

    if-eqz v5, :cond_4

    new-instance v10, Lsun/security/util/DerOutputStream;

    invoke-direct {v10}, Lsun/security/util/DerOutputStream;-><init>()V

    invoke-virtual {v10, v5}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    invoke-virtual {v10}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v5

    new-instance v2, Lsun/misc/HexDumpEncoder;

    invoke-direct {v2}, Lsun/misc/HexDumpEncoder;-><init>()V

    const-string/jumbo v12, "Extension unknown: DER encoded OCTET string =\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2, v5}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v3}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v12, ", Error parsing this extension"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    iget-object v12, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    invoke-virtual {v12}, Lsun/security/x509/CertificateExtensions;->getUnparseableExtensions()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_7

    const-string/jumbo v12, "\nUnparseable certificate extensions: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/x509/Extension;

    const-string/jumbo v12, "\n["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "]: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v7, v8

    goto :goto_2

    :cond_7
    const-string/jumbo v12, "\n]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12
.end method
