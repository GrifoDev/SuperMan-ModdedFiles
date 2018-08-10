.class public Landroid/security/keystore/AndroidKeyStoreKey;
.super Ljava/lang/Object;
.source "AndroidKeyStoreKey.java"

# interfaces
.implements Ljava/security/Key;


# instance fields
.field private final mAlgorithm:Ljava/lang/String;

.field private final mAlias:Ljava/lang/String;

.field private final mUid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlias:Ljava/lang/String;

    iput p2, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mUid:I

    iput-object p3, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlgorithm:Ljava/lang/String;

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
    if-nez p1, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreKey;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/security/keystore/AndroidKeyStoreKey;

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, v0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    if-eqz v1, :cond_4

    return v3

    :cond_3
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    :cond_4
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlias:Ljava/lang/String;

    if-nez v1, :cond_5

    iget-object v1, v0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlias:Ljava/lang/String;

    if-eqz v1, :cond_6

    return v3

    :cond_5
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlias:Ljava/lang/String;

    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    :cond_6
    iget v1, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mUid:I

    iget v2, v0, Landroid/security/keystore/AndroidKeyStoreKey;->mUid:I

    if-eq v1, v2, :cond_7

    return v3

    :cond_7
    return v4
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method getAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method getUid()I
    .locals 1

    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mUid:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    const/4 v3, 0x0

    const/16 v0, 0x1f

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlias:Ljava/lang/String;

    if-nez v4, :cond_1

    :goto_1
    add-int v1, v2, v3

    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mUid:I

    add-int v1, v2, v3

    return v1

    :cond_0
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlias:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method
