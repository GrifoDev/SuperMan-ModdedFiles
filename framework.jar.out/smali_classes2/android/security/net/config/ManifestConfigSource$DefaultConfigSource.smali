.class final Landroid/security/net/config/ManifestConfigSource$DefaultConfigSource;
.super Ljava/lang/Object;
.source "ManifestConfigSource.java"

# interfaces
.implements Landroid/security/net/config/ConfigSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/net/config/ManifestConfigSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultConfigSource"
.end annotation


# instance fields
.field private final mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;


# direct methods
.method public constructor <init>(ZII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2, p3}, Landroid/security/net/config/NetworkSecurityConfig;->getDefaultBuilder(II)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->setCleartextTrafficPermitted(Z)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->build()Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v0

    iput-object v0, p0, Landroid/security/net/config/ManifestConfigSource$DefaultConfigSource;->mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

    return-void
.end method


# virtual methods
.method public getDefaultConfig()Landroid/security/net/config/NetworkSecurityConfig;
    .locals 1

    iget-object v0, p0, Landroid/security/net/config/ManifestConfigSource$DefaultConfigSource;->mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

    return-object v0
.end method

.method public getPerDomainConfigs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/security/net/config/Domain;",
            "Landroid/security/net/config/NetworkSecurityConfig;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
