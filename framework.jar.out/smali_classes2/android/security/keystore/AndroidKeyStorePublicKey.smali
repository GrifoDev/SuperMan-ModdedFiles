.class public Landroid/security/keystore/AndroidKeyStorePublicKey;
.super Landroid/security/keystore/AndroidKeyStoreKey;
.source "AndroidKeyStorePublicKey.java"

# interfaces
.implements Ljava/security/PublicKey;


# instance fields
.field private final mEncoded:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;[B)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/security/keystore/AndroidKeyStoreKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {p4}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([B)[B

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStorePublicKey;->mEncoded:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_0

    return v4

    :cond_0
    invoke-super {p0, p1}, Landroid/security/keystore/AndroidKeyStoreKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStorePublicKey;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/security/keystore/AndroidKeyStorePublicKey;

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStorePublicKey;->mEncoded:[B

    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStorePublicKey;->mEncoded:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    :cond_3
    return v4
.end method

.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStorePublicKey;->mEncoded:[B

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "X.509"

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const/16 v0, 0x1f

    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreKey;->hashCode()I

    move-result v1

    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStorePublicKey;->mEncoded:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int v1, v2, v3

    return v1
.end method
