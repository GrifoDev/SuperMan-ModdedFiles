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

    .prologue
    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    .line 117
    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    const-string/jumbo v1, "version"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    const-string/jumbo v1, "serialNumber"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    const-string/jumbo v1, "algorithmID"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    const-string/jumbo v1, "issuer"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    const-string/jumbo v1, "validity"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    const-string/jumbo v1, "subject"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    const-string/jumbo v1, "key"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    const-string/jumbo v1, "issuerID"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    const-string/jumbo v1, "subjectID"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    const-string/jumbo v1, "extensions"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lsun/security/x509/CertificateVersion;

    invoke-direct {v0}, Lsun/security/x509/CertificateVersion;-><init>()V

    iput-object v0, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    .line 85
    iput-object v1, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    .line 86
    iput-object v1, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    .line 87
    iput-object v1, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    .line 88
    iput-object v1, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    .line 89
    iput-object v1, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    .line 90
    iput-object v1, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    .line 93
    iput-object v1, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/UniqueIdentity;

    .line 94
    iput-object v1, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/UniqueIdentity;

    .line 97
    iput-object v1, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    .line 112
    iput-object v1, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    .line 133
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 3
    .param p1, "derVal"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v1, Lsun/security/x509/CertificateVersion;

    invoke-direct {v1}, Lsun/security/x509/CertificateVersion;-><init>()V

    iput-object v1, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    .line 85
    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    .line 86
    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    .line 87
    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    .line 88
    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    .line 89
    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    .line 90
    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    .line 93
    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/UniqueIdentity;

    .line 94
    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/UniqueIdentity;

    .line 97
    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    .line 112
    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    .line 167
    :try_start_0
    invoke-direct {p0, p1}, Lsun/security/x509/X509CertInfo;->parse(Lsun/security/util/DerValue;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>([B)V
    .locals 4
    .param p1, "cert"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v2, Lsun/security/x509/CertificateVersion;

    invoke-direct {v2}, Lsun/security/x509/CertificateVersion;-><init>()V

    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    .line 85
    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    .line 86
    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    .line 87
    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    .line 88
    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    .line 89
    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    .line 90
    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    .line 93
    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/UniqueIdentity;

    .line 94
    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/UniqueIdentity;

    .line 97
    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    .line 112
    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    .line 149
    :try_start_0
    new-instance v1, Lsun/security/util/DerValue;

    invoke-direct {v1, p1}, Lsun/security/util/DerValue;-><init>([B)V

    .line 151
    .local v1, "in":Lsun/security/util/DerValue;
    invoke-direct {p0, v1}, Lsun/security/x509/X509CertInfo;->parse(Lsun/security/util/DerValue;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    return-void

    .line 152
    .end local v1    # "in":Lsun/security/util/DerValue;
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    invoke-direct {v2, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private attributeMap(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 805
    sget-object v1, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 806
    .local v0, "num":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 807
    const/4 v1, 0x0

    return v1

    .line 809
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private emit(Lsun/security/util/DerOutputStream;)V
    .locals 5
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, -0x80

    const/4 v3, 0x0

    .line 756
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 759
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    invoke-virtual {v1, v0}, Lsun/security/x509/CertificateVersion;->encode(Ljava/io/OutputStream;)V

    .line 763
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    invoke-virtual {v1, v0}, Lsun/security/x509/CertificateSerialNumber;->encode(Ljava/io/OutputStream;)V

    .line 764
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    invoke-virtual {v1, v0}, Lsun/security/x509/CertificateAlgorithmId;->encode(Ljava/io/OutputStream;)V

    .line 766
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    invoke-virtual {v1, v3}, Lsun/security/x509/CertificateVersion;->compare(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 767
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    invoke-virtual {v1}, Lsun/security/x509/X500Name;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 768
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    .line 769
    const-string/jumbo v2, "Null issuer DN not allowed in v1 certificate"

    .line 768
    invoke-direct {v1, v2}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 771
    :cond_0
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    invoke-virtual {v1, v0}, Lsun/security/x509/X500Name;->encode(Lsun/security/util/DerOutputStream;)V

    .line 772
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    invoke-virtual {v1, v0}, Lsun/security/x509/CertificateValidity;->encode(Ljava/io/OutputStream;)V

    .line 775
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    invoke-virtual {v1, v3}, Lsun/security/x509/CertificateVersion;->compare(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 776
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    invoke-virtual {v1}, Lsun/security/x509/X500Name;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 777
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    .line 778
    const-string/jumbo v2, "Null subject DN not allowed in v1 certificate"

    .line 777
    invoke-direct {v1, v2}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 779
    :cond_1
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    invoke-virtual {v1, v0}, Lsun/security/x509/X500Name;->encode(Lsun/security/util/DerOutputStream;)V

    .line 780
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    invoke-virtual {v1, v0}, Lsun/security/x509/CertificateX509Key;->encode(Ljava/io/OutputStream;)V

    .line 783
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/UniqueIdentity;

    if-eqz v1, :cond_2

    .line 784
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/UniqueIdentity;

    .line 785
    const/4 v2, 0x1

    .line 784
    invoke-static {v4, v3, v2}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v2

    invoke-virtual {v1, v0, v2}, Lsun/security/x509/UniqueIdentity;->encode(Lsun/security/util/DerOutputStream;B)V

    .line 787
    :cond_2
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/UniqueIdentity;

    if-eqz v1, :cond_3

    .line 788
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/UniqueIdentity;

    .line 789
    const/4 v2, 0x2

    .line 788
    invoke-static {v4, v3, v2}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v2

    invoke-virtual {v1, v0, v2}, Lsun/security/x509/UniqueIdentity;->encode(Lsun/security/util/DerOutputStream;B)V

    .line 793
    :cond_3
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    if-eqz v1, :cond_4

    .line 794
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    invoke-virtual {v1, v0}, Lsun/security/x509/CertificateExtensions;->encode(Ljava/io/OutputStream;)V

    .line 798
    :cond_4
    const/16 v1, 0x30

    invoke-virtual {p1, v1, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 755
    return-void
.end method

.method private getX500Name(Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "getIssuer"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 610
    const-string/jumbo v0, "dname"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 611
    if-eqz p2, :cond_0

    iget-object v0, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    goto :goto_0

    .line 612
    :cond_1
    const-string/jumbo v0, "x500principal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 613
    if-eqz p2, :cond_2

    iget-object v0, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    invoke-virtual {v0}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    :goto_1
    return-object v0

    .line 614
    :cond_2
    iget-object v0, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    invoke-virtual {v0}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    goto :goto_1

    .line 616
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parse(Lsun/security/util/DerValue;)V
    .locals 6
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 628
    iget-byte v2, p1, Lsun/security/util/DerValue;->tag:B

    const/16 v3, 0x30

    if-eq v2, v3, :cond_0

    .line 629
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    const-string/jumbo v3, "signed fields invalid"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 631
    :cond_0
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    .line 633
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 636
    .local v0, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    .line 637
    .local v1, "tmp":Lsun/security/util/DerValue;
    invoke-virtual {v1, v4}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 638
    new-instance v2, Lsun/security/x509/CertificateVersion;

    invoke-direct {v2, v1}, Lsun/security/x509/CertificateVersion;-><init>(Lsun/security/util/DerValue;)V

    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    .line 639
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    .line 643
    :cond_1
    new-instance v2, Lsun/security/x509/CertificateSerialNumber;

    invoke-direct {v2, v1}, Lsun/security/x509/CertificateSerialNumber;-><init>(Lsun/security/util/DerValue;)V

    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    .line 646
    new-instance v2, Lsun/security/x509/CertificateAlgorithmId;

    invoke-direct {v2, v0}, Lsun/security/x509/CertificateAlgorithmId;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    .line 649
    new-instance v2, Lsun/security/x509/X500Name;

    invoke-direct {v2, v0}, Lsun/security/x509/X500Name;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    .line 650
    iget-object v2, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    invoke-virtual {v2}, Lsun/security/x509/X500Name;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 651
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    .line 652
    const-string/jumbo v3, "Empty issuer DN not allowed in X509Certificates"

    .line 651
    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 656
    :cond_2
    new-instance v2, Lsun/security/x509/CertificateValidity;

    invoke-direct {v2, v0}, Lsun/security/x509/CertificateValidity;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    .line 659
    new-instance v2, Lsun/security/x509/X500Name;

    invoke-direct {v2, v0}, Lsun/security/x509/X500Name;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    .line 660
    iget-object v2, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    invoke-virtual {v2, v4}, Lsun/security/x509/CertificateVersion;->compare(I)I

    move-result v2

    if-nez v2, :cond_3

    .line 661
    iget-object v2, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    invoke-virtual {v2}, Lsun/security/x509/X500Name;->isEmpty()Z

    move-result v2

    .line 660
    if-eqz v2, :cond_3

    .line 662
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    .line 663
    const-string/jumbo v3, "Empty subject DN not allowed in v1 certificate"

    .line 662
    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 667
    :cond_3
    new-instance v2, Lsun/security/x509/CertificateX509Key;

    invoke-direct {v2, v0}, Lsun/security/x509/CertificateX509Key;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    .line 670
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-eqz v2, :cond_4

    .line 671
    iget-object v2, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    invoke-virtual {v2, v4}, Lsun/security/x509/CertificateVersion;->compare(I)I

    move-result v2

    if-nez v2, :cond_5

    .line 672
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    .line 673
    const-string/jumbo v3, "no more data allowed for version 1 certificate"

    .line 672
    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 676
    :cond_4
    return-void

    .line 680
    :cond_5
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    .line 681
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 682
    new-instance v2, Lsun/security/x509/UniqueIdentity;

    invoke-direct {v2, v1}, Lsun/security/x509/UniqueIdentity;-><init>(Lsun/security/util/DerValue;)V

    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/UniqueIdentity;

    .line 683
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-nez v2, :cond_6

    .line 684
    return-void

    .line 685
    :cond_6
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    .line 689
    :cond_7
    invoke-virtual {v1, v5}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 690
    new-instance v2, Lsun/security/x509/UniqueIdentity;

    invoke-direct {v2, v1}, Lsun/security/x509/UniqueIdentity;-><init>(Lsun/security/util/DerValue;)V

    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/UniqueIdentity;

    .line 691
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-nez v2, :cond_8

    .line 692
    return-void

    .line 693
    :cond_8
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    .line 697
    :cond_9
    iget-object v2, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    invoke-virtual {v2, v5}, Lsun/security/x509/CertificateVersion;->compare(I)I

    move-result v2

    if-eqz v2, :cond_a

    .line 698
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    .line 699
    const-string/jumbo v3, "Extensions not allowed in v2 certificate"

    .line 698
    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 701
    :cond_a
    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 702
    new-instance v2, Lsun/security/x509/CertificateExtensions;

    iget-object v3, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-direct {v2, v3}, Lsun/security/x509/CertificateExtensions;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    .line 706
    :cond_b
    iget-object v2, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    invoke-direct {p0, v2, v3}, Lsun/security/x509/X509CertInfo;->verifyCert(Lsun/security/x509/X500Name;Lsun/security/x509/CertificateExtensions;)V

    .line 624
    return-void
.end method

.method private setAlgorithmId(Ljava/lang/Object;)V
    .locals 2
    .param p1, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 845
    instance-of v0, p1, Lsun/security/x509/CertificateAlgorithmId;

    if-nez v0, :cond_0

    .line 846
    new-instance v0, Ljava/security/cert/CertificateException;

    .line 847
    const-string/jumbo v1, "AlgorithmId class type invalid."

    .line 846
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 849
    :cond_0
    check-cast p1, Lsun/security/x509/CertificateAlgorithmId;

    .end local p1    # "val":Ljava/lang/Object;
    iput-object p1, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    .line 844
    return-void
.end method

.method private setExtensions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 949
    iget-object v0, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lsun/security/x509/CertificateVersion;->compare(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 950
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "Invalid version"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 952
    :cond_0
    instance-of v0, p1, Lsun/security/x509/CertificateExtensions;

    if-nez v0, :cond_1

    .line 953
    new-instance v0, Ljava/security/cert/CertificateException;

    .line 954
    const-string/jumbo v1, "Extensions class type invalid."

    .line 953
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 956
    :cond_1
    check-cast p1, Lsun/security/x509/CertificateExtensions;

    .end local p1    # "val":Ljava/lang/Object;
    iput-object p1, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    .line 948
    return-void
.end method

.method private setIssuer(Ljava/lang/Object;)V
    .locals 2
    .param p1, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 859
    instance-of v0, p1, Lsun/security/x509/X500Name;

    if-nez v0, :cond_0

    .line 860
    new-instance v0, Ljava/security/cert/CertificateException;

    .line 861
    const-string/jumbo v1, "Issuer class type invalid."

    .line 860
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 863
    :cond_0
    check-cast p1, Lsun/security/x509/X500Name;

    .end local p1    # "val":Ljava/lang/Object;
    iput-object p1, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    .line 858
    return-void
.end method

.method private setIssuerUniqueId(Ljava/lang/Object;)V
    .locals 2
    .param p1, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 915
    iget-object v0, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsun/security/x509/CertificateVersion;->compare(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 916
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "Invalid version"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 918
    :cond_0
    instance-of v0, p1, Lsun/security/x509/UniqueIdentity;

    if-nez v0, :cond_1

    .line 919
    new-instance v0, Ljava/security/cert/CertificateException;

    .line 920
    const-string/jumbo v1, "IssuerUniqueId class type invalid."

    .line 919
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 922
    :cond_1
    check-cast p1, Lsun/security/x509/UniqueIdentity;

    .end local p1    # "val":Ljava/lang/Object;
    iput-object p1, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/UniqueIdentity;

    .line 914
    return-void
.end method

.method private setKey(Ljava/lang/Object;)V
    .locals 2
    .param p1, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 901
    instance-of v0, p1, Lsun/security/x509/CertificateX509Key;

    if-nez v0, :cond_0

    .line 902
    new-instance v0, Ljava/security/cert/CertificateException;

    .line 903
    const-string/jumbo v1, "Key class type invalid."

    .line 902
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 905
    :cond_0
    check-cast p1, Lsun/security/x509/CertificateX509Key;

    .end local p1    # "val":Ljava/lang/Object;
    iput-object p1, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    .line 900
    return-void
.end method

.method private setSerialNumber(Ljava/lang/Object;)V
    .locals 2
    .param p1, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 832
    instance-of v0, p1, Lsun/security/x509/CertificateSerialNumber;

    if-nez v0, :cond_0

    .line 833
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "SerialNumber class type invalid."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 835
    :cond_0
    check-cast p1, Lsun/security/x509/CertificateSerialNumber;

    .end local p1    # "val":Ljava/lang/Object;
    iput-object p1, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    .line 831
    return-void
.end method

.method private setSubject(Ljava/lang/Object;)V
    .locals 2
    .param p1, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 887
    instance-of v0, p1, Lsun/security/x509/X500Name;

    if-nez v0, :cond_0

    .line 888
    new-instance v0, Ljava/security/cert/CertificateException;

    .line 889
    const-string/jumbo v1, "Subject class type invalid."

    .line 888
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 891
    :cond_0
    check-cast p1, Lsun/security/x509/X500Name;

    .end local p1    # "val":Ljava/lang/Object;
    iput-object p1, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    .line 886
    return-void
.end method

.method private setSubjectUniqueId(Ljava/lang/Object;)V
    .locals 2
    .param p1, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 932
    iget-object v0, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsun/security/x509/CertificateVersion;->compare(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 933
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "Invalid version"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 935
    :cond_0
    instance-of v0, p1, Lsun/security/x509/UniqueIdentity;

    if-nez v0, :cond_1

    .line 936
    new-instance v0, Ljava/security/cert/CertificateException;

    .line 937
    const-string/jumbo v1, "SubjectUniqueId class type invalid."

    .line 936
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 939
    :cond_1
    check-cast p1, Lsun/security/x509/UniqueIdentity;

    .end local p1    # "val":Ljava/lang/Object;
    iput-object p1, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/UniqueIdentity;

    .line 931
    return-void
.end method

.method private setValidity(Ljava/lang/Object;)V
    .locals 2
    .param p1, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 873
    instance-of v0, p1, Lsun/security/x509/CertificateValidity;

    if-nez v0, :cond_0

    .line 874
    new-instance v0, Ljava/security/cert/CertificateException;

    .line 875
    const-string/jumbo v1, "CertificateValidity class type invalid."

    .line 874
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 877
    :cond_0
    check-cast p1, Lsun/security/x509/CertificateValidity;

    .end local p1    # "val":Ljava/lang/Object;
    iput-object p1, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    .line 872
    return-void
.end method

.method private setVersion(Ljava/lang/Object;)V
    .locals 2
    .param p1, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 819
    instance-of v0, p1, Lsun/security/x509/CertificateVersion;

    if-nez v0, :cond_0

    .line 820
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "Version class type invalid."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 822
    :cond_0
    check-cast p1, Lsun/security/x509/CertificateVersion;

    .end local p1    # "val":Ljava/lang/Object;
    iput-object p1, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    .line 818
    return-void
.end method

.method private verifyCert(Lsun/security/x509/X500Name;Lsun/security/x509/CertificateExtensions;)V
    .locals 7
    .param p1, "subject"    # Lsun/security/x509/X500Name;
    .param p2, "extensions"    # Lsun/security/x509/CertificateExtensions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 718
    invoke-virtual {p1}, Lsun/security/x509/X500Name;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 719
    if-nez p2, :cond_0

    .line 720
    new-instance v5, Ljava/security/cert/CertificateParsingException;

    const-string/jumbo v6, "X.509 Certificate is incomplete: subject field is empty, and certificate has no extensions"

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 724
    :cond_0
    const/4 v4, 0x0

    .line 725
    .local v4, "subjectAltNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    const/4 v2, 0x0

    .line 726
    .local v2, "extValue":Lsun/security/x509/SubjectAlternativeNameExtension;
    const/4 v3, 0x0

    .line 729
    .local v3, "names":Lsun/security/x509/GeneralNames;
    :try_start_0
    const-string/jumbo v5, "SubjectAlternativeName"

    invoke-virtual {p2, v5}, Lsun/security/x509/CertificateExtensions;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 728
    move-object v0, v5

    check-cast v0, Lsun/security/x509/SubjectAlternativeNameExtension;

    move-object v4, v0

    .line 731
    .local v4, "subjectAltNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    const-string/jumbo v5, "subject_name"

    .line 730
    invoke-virtual {v4, v5}, Lsun/security/x509/SubjectAlternativeNameExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralNames;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 739
    .local v3, "names":Lsun/security/x509/GeneralNames;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lsun/security/x509/GeneralNames;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 740
    :cond_1
    new-instance v5, Ljava/security/cert/CertificateParsingException;

    const-string/jumbo v6, "X.509 Certificate is incomplete: subject field is empty, and SubjectAlternativeName extension is empty"

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 732
    .end local v4    # "subjectAltNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    .local v3, "names":Lsun/security/x509/GeneralNames;
    :catch_0
    move-exception v1

    .line 733
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Ljava/security/cert/CertificateParsingException;

    const-string/jumbo v6, "X.509 Certificate is incomplete: subject field is empty, and SubjectAlternativeName extension is absent"

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 743
    .end local v1    # "e":Ljava/io/IOException;
    .local v3, "names":Lsun/security/x509/GeneralNames;
    .restart local v4    # "subjectAltNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    :cond_2
    invoke-virtual {v4}, Lsun/security/x509/SubjectAlternativeNameExtension;->isCritical()Z

    move-result v5

    if-nez v5, :cond_3

    .line 744
    new-instance v5, Ljava/security/cert/CertificateParsingException;

    const-string/jumbo v6, "X.509 Certificate is incomplete: SubjectAlternativeName extension MUST be marked critical when subject field is empty"

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 715
    .end local v2    # "extValue":Lsun/security/x509/SubjectAlternativeNameExtension;
    .end local v3    # "names":Lsun/security/x509/GeneralNames;
    .end local v4    # "subjectAltNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    :cond_3
    return-void
.end method


# virtual methods
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

    .line 455
    new-instance v1, Lsun/security/x509/X509AttributeName;

    invoke-direct {v1, p1}, Lsun/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    .line 457
    .local v1, "attrName":Lsun/security/x509/X509AttributeName;
    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lsun/security/x509/X509CertInfo;->attributeMap(Ljava/lang/String;)I

    move-result v0

    .line 458
    .local v0, "attr":I
    if-nez v0, :cond_0

    .line 459
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

    .line 463
    :cond_0
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    .line 464
    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v2

    .line 466
    .local v2, "suffix":Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    .line 454
    :cond_1
    :goto_0
    return-void

    .line 468
    :pswitch_0
    if-nez v2, :cond_2

    .line 469
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    goto :goto_0

    .line 471
    :cond_2
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateVersion;->delete(Ljava/lang/String;)V

    goto :goto_0

    .line 475
    :pswitch_1
    if-nez v2, :cond_3

    .line 476
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    goto :goto_0

    .line 478
    :cond_3
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateSerialNumber;->delete(Ljava/lang/String;)V

    goto :goto_0

    .line 482
    :pswitch_2
    if-nez v2, :cond_4

    .line 483
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    goto :goto_0

    .line 485
    :cond_4
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateAlgorithmId;->delete(Ljava/lang/String;)V

    goto :goto_0

    .line 489
    :pswitch_3
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    goto :goto_0

    .line 492
    :pswitch_4
    if-nez v2, :cond_5

    .line 493
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    goto :goto_0

    .line 495
    :cond_5
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateValidity;->delete(Ljava/lang/String;)V

    goto :goto_0

    .line 499
    :pswitch_5
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    goto :goto_0

    .line 502
    :pswitch_6
    if-nez v2, :cond_6

    .line 503
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    goto :goto_0

    .line 505
    :cond_6
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateX509Key;->delete(Ljava/lang/String;)V

    goto :goto_0

    .line 509
    :pswitch_7
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/UniqueIdentity;

    goto :goto_0

    .line 512
    :pswitch_8
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/UniqueIdentity;

    goto :goto_0

    .line 515
    :pswitch_9
    if-nez v2, :cond_7

    .line 516
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    goto :goto_0

    .line 518
    :cond_7
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    if-eqz v3, :cond_1

    .line 519
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateExtensions;->delete(Ljava/lang/String;)V

    goto :goto_0

    .line 466
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
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    if-nez v1, :cond_0

    .line 183
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 184
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    invoke-direct {p0, v0}, Lsun/security/x509/X509CertInfo;->emit(Lsun/security/util/DerOutputStream;)V

    .line 185
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    .line 187
    .end local v0    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_0
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 181
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 246
    instance-of v0, p1, Lsun/security/x509/X509CertInfo;

    if-eqz v0, :cond_0

    .line 247
    check-cast p1, Lsun/security/x509/X509CertInfo;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lsun/security/x509/X509CertInfo;->equals(Lsun/security/x509/X509CertInfo;)Z

    move-result v0

    return v0

    .line 249
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Lsun/security/x509/X509CertInfo;)Z
    .locals 5
    .param p1, "other"    # Lsun/security/x509/X509CertInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 261
    if-ne p0, p1, :cond_0

    .line 262
    return v4

    .line 263
    :cond_0
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    if-eqz v1, :cond_1

    iget-object v1, p1, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    if-nez v1, :cond_2

    .line 264
    :cond_1
    return v3

    .line 265
    :cond_2
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    array-length v1, v1

    iget-object v2, p1, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    array-length v2, v2

    if-eq v1, v2, :cond_3

    .line 266
    return v3

    .line 268
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 269
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    aget-byte v1, v1, v0

    iget-object v2, p1, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    aget-byte v2, v2, v0

    if-eq v1, v2, :cond_4

    .line 270
    return v3

    .line 268
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    :cond_5
    return v4
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 535
    new-instance v1, Lsun/security/x509/X509AttributeName;

    invoke-direct {v1, p1}, Lsun/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    .line 537
    .local v1, "attrName":Lsun/security/x509/X509AttributeName;
    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lsun/security/x509/X509CertInfo;->attributeMap(Ljava/lang/String;)I

    move-result v0

    .line 538
    .local v0, "attr":I
    if-nez v0, :cond_0

    .line 539
    new-instance v3, Ljava/security/cert/CertificateParsingException;

    .line 540
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Attribute name not recognized: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 539
    invoke-direct {v3, v4}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 542
    :cond_0
    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v2

    .line 544
    .local v2, "suffix":Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    .line 602
    return-object v4

    .line 546
    :pswitch_0
    if-nez v2, :cond_1

    .line 547
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    return-object v3

    .line 549
    :cond_1
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    if-nez v3, :cond_2

    .line 550
    return-object v4

    .line 552
    :cond_2
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateExtensions;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 556
    :pswitch_1
    if-nez v2, :cond_3

    .line 557
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    return-object v3

    .line 559
    :cond_3
    invoke-direct {p0, v2, v5}, Lsun/security/x509/X509CertInfo;->getX500Name(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 562
    :pswitch_2
    if-nez v2, :cond_4

    .line 563
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    return-object v3

    .line 565
    :cond_4
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lsun/security/x509/X509CertInfo;->getX500Name(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 568
    :pswitch_3
    if-nez v2, :cond_5

    .line 569
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    return-object v3

    .line 571
    :cond_5
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateX509Key;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 574
    :pswitch_4
    if-nez v2, :cond_6

    .line 575
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    return-object v3

    .line 577
    :cond_6
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateAlgorithmId;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 580
    :pswitch_5
    if-nez v2, :cond_7

    .line 581
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    return-object v3

    .line 583
    :cond_7
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateValidity;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 586
    :pswitch_6
    if-nez v2, :cond_8

    .line 587
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    return-object v3

    .line 589
    :cond_8
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateVersion;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 592
    :pswitch_7
    if-nez v2, :cond_9

    .line 593
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    return-object v3

    .line 595
    :cond_9
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateSerialNumber;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 598
    :pswitch_8
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/UniqueIdentity;

    return-object v3

    .line 600
    :pswitch_9
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/UniqueIdentity;

    return-object v3

    .line 544
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

    .prologue
    .line 195
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 196
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "version"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 197
    const-string/jumbo v1, "serialNumber"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 198
    const-string/jumbo v1, "algorithmID"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 199
    const-string/jumbo v1, "issuer"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 200
    const-string/jumbo v1, "validity"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 201
    const-string/jumbo v1, "subject"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 202
    const-string/jumbo v1, "key"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 203
    const-string/jumbo v1, "issuerID"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 204
    const-string/jumbo v1, "subjectID"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 205
    const-string/jumbo v1, "extensions"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 207
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

    .prologue
    .line 224
    :try_start_0
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    if-nez v3, :cond_0

    .line 225
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 226
    .local v2, "tmp":Lsun/security/util/DerOutputStream;
    invoke-direct {p0, v2}, Lsun/security/x509/X509CertInfo;->emit(Lsun/security/util/DerOutputStream;)V

    .line 227
    invoke-virtual {v2}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    .line 229
    .end local v2    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_0
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 232
    :catch_0
    move-exception v1

    .line 233
    .local v1, "e":Ljava/security/cert/CertificateException;
    new-instance v3, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 230
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    :catch_1
    move-exception v0

    .line 231
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    const-string/jumbo v0, "info"

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 281
    const/4 v1, 0x0

    .line 283
    .local v1, "retval":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 284
    iget-object v2, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    aget-byte v2, v2, v0

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    :cond_0
    return v1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 366
    new-instance v1, Lsun/security/x509/X509AttributeName;

    invoke-direct {v1, p1}, Lsun/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    .line 368
    .local v1, "attrName":Lsun/security/x509/X509AttributeName;
    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lsun/security/x509/X509CertInfo;->attributeMap(Ljava/lang/String;)I

    move-result v0

    .line 369
    .local v0, "attr":I
    if-nez v0, :cond_0

    .line 370
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

    .line 374
    :cond_0
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    .line 375
    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v2

    .line 377
    .local v2, "suffix":Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    .line 365
    :goto_0
    return-void

    .line 379
    :pswitch_0
    if-nez v2, :cond_1

    .line 380
    invoke-direct {p0, p2}, Lsun/security/x509/X509CertInfo;->setVersion(Ljava/lang/Object;)V

    goto :goto_0

    .line 382
    :cond_1
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    invoke-virtual {v3, v2, p2}, Lsun/security/x509/CertificateVersion;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 387
    :pswitch_1
    if-nez v2, :cond_2

    .line 388
    invoke-direct {p0, p2}, Lsun/security/x509/X509CertInfo;->setSerialNumber(Ljava/lang/Object;)V

    goto :goto_0

    .line 390
    :cond_2
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    invoke-virtual {v3, v2, p2}, Lsun/security/x509/CertificateSerialNumber;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 395
    :pswitch_2
    if-nez v2, :cond_3

    .line 396
    invoke-direct {p0, p2}, Lsun/security/x509/X509CertInfo;->setAlgorithmId(Ljava/lang/Object;)V

    goto :goto_0

    .line 398
    :cond_3
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    invoke-virtual {v3, v2, p2}, Lsun/security/x509/CertificateAlgorithmId;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 403
    :pswitch_3
    invoke-direct {p0, p2}, Lsun/security/x509/X509CertInfo;->setIssuer(Ljava/lang/Object;)V

    goto :goto_0

    .line 407
    :pswitch_4
    if-nez v2, :cond_4

    .line 408
    invoke-direct {p0, p2}, Lsun/security/x509/X509CertInfo;->setValidity(Ljava/lang/Object;)V

    goto :goto_0

    .line 410
    :cond_4
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    invoke-virtual {v3, v2, p2}, Lsun/security/x509/CertificateValidity;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 415
    :pswitch_5
    invoke-direct {p0, p2}, Lsun/security/x509/X509CertInfo;->setSubject(Ljava/lang/Object;)V

    goto :goto_0

    .line 419
    :pswitch_6
    if-nez v2, :cond_5

    .line 420
    invoke-direct {p0, p2}, Lsun/security/x509/X509CertInfo;->setKey(Ljava/lang/Object;)V

    goto :goto_0

    .line 422
    :cond_5
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    invoke-virtual {v3, v2, p2}, Lsun/security/x509/CertificateX509Key;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 427
    :pswitch_7
    invoke-direct {p0, p2}, Lsun/security/x509/X509CertInfo;->setIssuerUniqueId(Ljava/lang/Object;)V

    goto :goto_0

    .line 431
    :pswitch_8
    invoke-direct {p0, p2}, Lsun/security/x509/X509CertInfo;->setSubjectUniqueId(Ljava/lang/Object;)V

    goto :goto_0

    .line 435
    :pswitch_9
    if-nez v2, :cond_6

    .line 436
    invoke-direct {p0, p2}, Lsun/security/x509/X509CertInfo;->setExtensions(Ljava/lang/Object;)V

    goto :goto_0

    .line 438
    :cond_6
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    if-nez v3, :cond_7

    .line 439
    new-instance v3, Lsun/security/x509/CertificateExtensions;

    invoke-direct {v3}, Lsun/security/x509/CertificateExtensions;-><init>()V

    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    .line 440
    :cond_7
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    invoke-virtual {v3, v2, p2}, Lsun/security/x509/CertificateExtensions;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 377
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

    .prologue
    .line 294
    iget-object v12, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    if-nez v12, :cond_1

    .line 296
    :cond_0
    new-instance v12, Ljava/lang/NullPointerException;

    const-string/jumbo v13, "X.509 cert is incomplete"

    invoke-direct {v12, v13}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 294
    :cond_1
    iget-object v12, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    if-eqz v12, :cond_0

    .line 295
    iget-object v12, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    if-eqz v12, :cond_0

    .line 298
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    .local v11, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v12, "[\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
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

    .line 302
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

    .line 303
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

    .line 304
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

    .line 305
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

    .line 306
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

    .line 307
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

    .line 310
    iget-object v12, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/UniqueIdentity;

    if-eqz v12, :cond_2

    .line 311
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

    .line 313
    :cond_2
    iget-object v12, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/UniqueIdentity;

    if-eqz v12, :cond_3

    .line 314
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

    .line 316
    :cond_3
    iget-object v12, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    if-eqz v12, :cond_7

    .line 317
    iget-object v12, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    invoke-virtual {v12}, Lsun/security/x509/CertificateExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v0

    .line 318
    .local v0, "allExts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    const/4 v12, 0x0

    new-array v12, v12, [Lsun/security/x509/Extension;

    invoke-interface {v0, v12}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lsun/security/x509/Extension;

    .line 319
    .local v6, "exts":[Lsun/security/x509/Extension;
    const-string/jumbo v12, "\nCertificate Extensions: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v6

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 320
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v12, v6

    if-ge v7, v12, :cond_6

    .line 321
    const-string/jumbo v12, "\n["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v13, v7, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "]: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    aget-object v3, v6, v7

    .line 324
    .local v3, "ext":Lsun/security/x509/Extension;
    :try_start_0
    invoke-virtual {v3}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v12

    invoke-static {v12}, Lsun/security/x509/OIDMap;->getClass(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Class;

    move-result-object v12

    if-nez v12, :cond_5

    .line 325
    invoke-virtual {v3}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v3}, Lsun/security/x509/Extension;->getExtensionValue()[B

    move-result-object v5

    .line 327
    .local v5, "extValue":[B
    if-eqz v5, :cond_4

    .line 328
    new-instance v10, Lsun/security/util/DerOutputStream;

    invoke-direct {v10}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 329
    .local v10, "out":Lsun/security/util/DerOutputStream;
    invoke-virtual {v10, v5}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 330
    invoke-virtual {v10}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v5

    .line 331
    new-instance v2, Lsun/misc/HexDumpEncoder;

    invoke-direct {v2}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 332
    .local v2, "enc":Lsun/misc/HexDumpEncoder;
    const-string/jumbo v12, "Extension unknown: DER encoded OCTET string =\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 334
    invoke-virtual {v2, v5}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v13

    .line 332
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 334
    const-string/jumbo v13, "\n"

    .line 332
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .end local v2    # "enc":Lsun/misc/HexDumpEncoder;
    .end local v5    # "extValue":[B
    .end local v10    # "out":Lsun/security/util/DerOutputStream;
    :cond_4
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 337
    :cond_5
    invoke-virtual {v3}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 338
    :catch_0
    move-exception v1

    .line 339
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v12, ", Error parsing this extension"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 342
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "ext":Lsun/security/x509/Extension;
    :cond_6
    iget-object v12, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    invoke-virtual {v12}, Lsun/security/x509/CertificateExtensions;->getUnparseableExtensions()Ljava/util/Map;

    move-result-object v9

    .line 343
    .local v9, "invalid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lsun/security/x509/Extension;>;"
    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_7

    .line 344
    const-string/jumbo v12, "\nUnparseable certificate extensions: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 345
    const/4 v7, 0x1

    .line 346
    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "ext$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/x509/Extension;

    .line 347
    .restart local v3    # "ext":Lsun/security/x509/Extension;
    const-string/jumbo v12, "\n["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "i":I
    .local v8, "i":I
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "]: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v7, v8

    .end local v8    # "i":I
    .restart local v7    # "i":I
    goto :goto_2

    .line 352
    .end local v0    # "allExts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    .end local v3    # "ext":Lsun/security/x509/Extension;
    .end local v4    # "ext$iterator":Ljava/util/Iterator;
    .end local v6    # "exts":[Lsun/security/x509/Extension;
    .end local v7    # "i":I
    .end local v9    # "invalid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lsun/security/x509/Extension;>;"
    :cond_7
    const-string/jumbo v12, "\n]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12
.end method
