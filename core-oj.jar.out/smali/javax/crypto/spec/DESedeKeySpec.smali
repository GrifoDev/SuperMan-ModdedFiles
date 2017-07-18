.class public Ljavax/crypto/spec/DESedeKeySpec;
.super Ljava/lang/Object;
.source "DESedeKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# static fields
.field public static final DES_EDE_KEY_LEN:I = 0x18


# instance fields
.field private key:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/16 v2, 0x18

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    sub-int/2addr v0, p2

    if-ge v0, v2, :cond_0

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "Wrong key size"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v0, v2, [B

    iput-object v0, p0, Ljavax/crypto/spec/DESedeKeySpec;->key:[B

    iget-object v0, p0, Ljavax/crypto/spec/DESedeKeySpec;->key:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-void
.end method

.method public static isParityAdjusted([BI)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    array-length v0, p0

    sub-int/2addr v0, p1

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "Wrong key size"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0, p1}, Ljavax/crypto/spec/DESKeySpec;->isParityAdjusted([BI)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, p1, 0x8

    invoke-static {p0, v0}, Ljavax/crypto/spec/DESKeySpec;->isParityAdjusted([BI)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    add-int/lit8 v0, p1, 0x10

    invoke-static {p0, v0}, Ljavax/crypto/spec/DESKeySpec;->isParityAdjusted([BI)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getKey()[B
    .locals 1

    iget-object v0, p0, Ljavax/crypto/spec/DESedeKeySpec;->key:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
