.class public Lcom/samsung/android/knox/keystore/KnoxCSR;
.super Ljava/lang/Object;
.source "KnoxCSR.java"


# instance fields
.field private mKeyStore:Ljava/security/KeyStore;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "KnoxAndroidKeyStore"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keyStoreType should be \"KnoxAndroidKeyStore\""

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/knox/keystore/KnoxCSR;->mKeyStore:Ljava/security/KeyStore;

    return-void
.end method


# virtual methods
.method public getCSR(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxCSR;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v0, p1}, Ljava/security/KeyStore;->getCSR(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
