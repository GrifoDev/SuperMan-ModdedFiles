.class public final Lsun/security/ssl/TrustManagerFactoryImpl$SimpleFactory;
.super Lsun/security/ssl/TrustManagerFactoryImpl;
.source "TrustManagerFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/TrustManagerFactoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimpleFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0}, Lsun/security/ssl/TrustManagerFactoryImpl;-><init>()V

    return-void
.end method


# virtual methods
.method getInstance(Ljava/security/KeyStore;)Ljavax/net/ssl/X509TrustManager;
    .locals 2
    .param p1, "ks"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 240
    new-instance v0, Lsun/security/ssl/X509TrustManagerImpl;

    const-string/jumbo v1, "Simple"

    invoke-direct {v0, v1, p1}, Lsun/security/ssl/X509TrustManagerImpl;-><init>(Ljava/lang/String;Ljava/security/KeyStore;)V

    return-object v0
.end method

.method getInstance(Ljavax/net/ssl/ManagerFactoryParameters;)Ljavax/net/ssl/X509TrustManager;
    .locals 2
    .param p1, "spec"    # Ljavax/net/ssl/ManagerFactoryParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 244
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    .line 245
    const-string/jumbo v1, "SunX509 TrustManagerFactory does not use ManagerFactoryParameters"

    .line 244
    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
