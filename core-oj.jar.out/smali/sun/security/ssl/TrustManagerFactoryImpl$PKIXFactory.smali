.class public final Lsun/security/ssl/TrustManagerFactoryImpl$PKIXFactory;
.super Lsun/security/ssl/TrustManagerFactoryImpl;
.source "TrustManagerFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/TrustManagerFactoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PKIXFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsun/security/ssl/TrustManagerFactoryImpl;-><init>()V

    return-void
.end method


# virtual methods
.method getInstance(Ljava/security/KeyStore;)Ljavax/net/ssl/X509TrustManager;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    new-instance v0, Lsun/security/ssl/X509TrustManagerImpl;

    const-string/jumbo v1, "PKIX"

    invoke-direct {v0, v1, p1}, Lsun/security/ssl/X509TrustManagerImpl;-><init>(Ljava/lang/String;Ljava/security/KeyStore;)V

    return-object v0
.end method

.method getInstance(Ljavax/net/ssl/ManagerFactoryParameters;)Ljavax/net/ssl/X509TrustManager;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    instance-of v2, p1, Ljavax/net/ssl/CertPathTrustManagerParameters;

    if-nez v2, :cond_0

    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v3, "Parameters must be CertPathTrustManagerParameters"

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    nop

    nop

    invoke-virtual {p1}, Ljavax/net/ssl/CertPathTrustManagerParameters;->getParameters()Ljava/security/cert/CertPathParameters;

    move-result-object v0

    instance-of v2, v0, Ljava/security/cert/PKIXBuilderParameters;

    if-nez v2, :cond_1

    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v3, "Encapsulated parameters must be PKIXBuilderParameters"

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object v1, v0

    nop

    nop

    new-instance v2, Lsun/security/ssl/X509TrustManagerImpl;

    const-string/jumbo v3, "PKIX"

    invoke-direct {v2, v3, v1}, Lsun/security/ssl/X509TrustManagerImpl;-><init>(Ljava/lang/String;Ljava/security/cert/PKIXBuilderParameters;)V

    return-object v2
.end method
