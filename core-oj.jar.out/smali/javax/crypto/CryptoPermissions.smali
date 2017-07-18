.class final Ljavax/crypto/CryptoPermissions;
.super Ljava/security/PermissionCollection;
.source "CryptoPermissions.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/security/PermissionCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/security/Permission;)V
    .locals 0

    return-void
.end method

.method public elements()Ljava/util/Enumeration;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method getMinimum(Ljavax/crypto/CryptoPermissions;)Ljavax/crypto/CryptoPermissions;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method getPermissionCollection(Ljava/lang/String;)Ljava/security/PermissionCollection;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method load(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/crypto/CryptoPolicyParser$ParsingException;
        }
    .end annotation

    return-void
.end method
