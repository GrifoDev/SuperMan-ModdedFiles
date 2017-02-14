.class public abstract Ljavax/security/cert/X509Certificate;
.super Ljavax/security/cert/Certificate;
.source "X509Certificate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/security/cert/X509Certificate$1;
    }
.end annotation


# static fields
.field private static final DEFAULT_X509_CERT_CLASS:Ljava/lang/String;

.field private static X509Provider:Ljava/lang/String; = null

.field private static final X509_PROVIDER:Ljava/lang/String; = "cert.provider.x509v1"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljavax/security/cert/X509Certificate;->DEFAULT_X509_CERT_CLASS:Ljava/lang/String;

    new-instance v0, Ljavax/security/cert/X509Certificate$1;

    invoke-direct {v0}, Ljavax/security/cert/X509Certificate$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Ljavax/security/cert/X509Certificate;->X509Provider:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljavax/security/cert/Certificate;-><init>()V

    return-void
.end method

.method private static final getInst(Ljava/lang/Object;)Ljavax/security/cert/X509Certificate;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateException;
        }
    .end annotation

    sget-object v1, Ljavax/security/cert/X509Certificate;->X509Provider:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_1

    :cond_0
    sget-object v1, Ljavax/security/cert/X509Certificate;->DEFAULT_X509_CERT_CLASS:Ljava/lang/String;

    :cond_1
    const/4 v9, 0x0

    :try_start_0
    instance-of v11, p0, Ljava/io/InputStream;

    if-eqz v11, :cond_2

    const/4 v11, 0x1

    new-array v10, v11, [Ljava/lang/Class;

    const-class v11, Ljava/io/InputStream;

    const/4 v12, 0x0

    aput-object v11, v10, v12

    move-object v9, v10

    :goto_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p0, v11, v12

    invoke-virtual {v2, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/security/cert/X509Certificate;

    return-object v8

    :cond_2
    instance-of v11, p0, [B

    if-eqz v11, :cond_3

    const/4 v11, 0x1

    new-array v10, v11, [Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    move-object v9, v10

    goto :goto_0

    :cond_3
    new-instance v11, Ljavax/security/cert/CertificateException;

    const-string/jumbo v12, "Unsupported argument type"

    invoke-direct {v11, v12}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v3

    new-instance v11, Ljavax/security/cert/CertificateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Could not find class: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v11

    :catch_1
    move-exception v6

    new-instance v11, Ljavax/security/cert/CertificateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Could not find class method: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v11

    :catch_2
    move-exception v7

    new-instance v11, Ljavax/security/cert/CertificateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "InvocationTargetException: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v11

    :catch_3
    move-exception v5

    new-instance v11, Ljavax/security/cert/CertificateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Problems instantiating: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v11

    :catch_4
    move-exception v4

    new-instance v11, Ljavax/security/cert/CertificateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Could not access class: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method public static final getInstance(Ljava/io/InputStream;)Ljavax/security/cert/X509Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateException;
        }
    .end annotation

    invoke-static {p0}, Ljavax/security/cert/X509Certificate;->getInst(Ljava/lang/Object;)Ljavax/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance([B)Ljavax/security/cert/X509Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateException;
        }
    .end annotation

    invoke-static {p0}, Ljavax/security/cert/X509Certificate;->getInst(Ljava/lang/Object;)Ljavax/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract checkValidity()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateExpiredException;,
            Ljavax/security/cert/CertificateNotYetValidException;
        }
    .end annotation
.end method

.method public abstract checkValidity(Ljava/util/Date;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateExpiredException;,
            Ljavax/security/cert/CertificateNotYetValidException;
        }
    .end annotation
.end method

.method public abstract getIssuerDN()Ljava/security/Principal;
.end method

.method public abstract getNotAfter()Ljava/util/Date;
.end method

.method public abstract getNotBefore()Ljava/util/Date;
.end method

.method public abstract getSerialNumber()Ljava/math/BigInteger;
.end method

.method public abstract getSigAlgName()Ljava/lang/String;
.end method

.method public abstract getSigAlgOID()Ljava/lang/String;
.end method

.method public abstract getSigAlgParams()[B
.end method

.method public abstract getSubjectDN()Ljava/security/Principal;
.end method

.method public abstract getVersion()I
.end method
