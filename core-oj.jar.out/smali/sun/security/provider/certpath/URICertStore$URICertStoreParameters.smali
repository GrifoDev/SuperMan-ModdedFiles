.class Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;
.super Ljava/lang/Object;
.source "URICertStore.java"

# interfaces
.implements Ljava/security/cert/CertStoreParameters;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/provider/certpath/URICertStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "URICertStoreParameters"
.end annotation


# instance fields
.field private volatile hashCode:I

.field private final uri:Ljava/net/URI;


# direct methods
.method static synthetic -get0(Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;)Ljava/net/URI;
    .locals 1

    iget-object v0, p0, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;->uri:Ljava/net/URI;

    return-object v0
.end method

.method constructor <init>(Ljava/net/URI;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;->hashCode:I

    iput-object p1, p0, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;->uri:Ljava/net/URI;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v1, p1, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    move-object v0, p1

    nop

    nop

    iget-object v1, p0, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;->uri:Ljava/net/URI;

    iget-object v2, v0, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;->uri:Ljava/net/URI;

    invoke-virtual {v1, v2}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v1, p0, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;->hashCode:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;->uri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x275

    iput v0, p0, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;->hashCode:I

    :cond_0
    iget v1, p0, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;->hashCode:I

    return v1
.end method
