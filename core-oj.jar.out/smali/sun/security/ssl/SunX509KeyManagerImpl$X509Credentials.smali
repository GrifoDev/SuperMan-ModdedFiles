.class Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;
.super Ljava/lang/Object;
.source "SunX509KeyManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/SunX509KeyManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "X509Credentials"
.end annotation


# instance fields
.field certificates:[Ljava/security/cert/X509Certificate;

.field private issuerX500Principals:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;"
        }
    .end annotation
.end field

.field privateKey:Ljava/security/PrivateKey;


# direct methods
.method constructor <init>(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "certificates"    # [Ljava/security/cert/X509Certificate;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;->privateKey:Ljava/security/PrivateKey;

    .line 100
    iput-object p2, p0, Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;->certificates:[Ljava/security/cert/X509Certificate;

    .line 97
    return-void
.end method


# virtual methods
.method declared-synchronized getIssuerX500Principals()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 105
    :try_start_0
    iget-object v1, p0, Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;->issuerX500Principals:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 106
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;->issuerX500Principals:Ljava/util/Set;

    .line 107
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;->certificates:[Ljava/security/cert/X509Certificate;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 108
    iget-object v1, p0, Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;->issuerX500Principals:Ljava/util/Set;

    .line 109
    iget-object v2, p0, Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;->certificates:[Ljava/security/cert/X509Certificate;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .line 108
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;->issuerX500Principals:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
