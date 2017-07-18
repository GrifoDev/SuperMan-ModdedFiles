.class public Ljavax/crypto/spec/PBEKeySpec;
.super Ljava/lang/Object;
.source "PBEKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private iterationCount:I

.field private keyLength:I

.field private password:[C

.field private salt:[B


# direct methods
.method public constructor <init>([C)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    iput v1, p0, Ljavax/crypto/spec/PBEKeySpec;->iterationCount:I

    iput v1, p0, Ljavax/crypto/spec/PBEKeySpec;->keyLength:I

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    new-array v0, v1, [C

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    goto :goto_0
.end method

.method public constructor <init>([C[BI)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    iput v1, p0, Ljavax/crypto/spec/PBEKeySpec;->iterationCount:I

    iput v1, p0, Ljavax/crypto/spec/PBEKeySpec;->keyLength:I

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    new-array v0, v1, [C

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    :goto_0
    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "the salt parameter must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    goto :goto_0

    :cond_2
    array-length v0, p2

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "the salt parameter must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    if-gtz p3, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid iterationCount value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iput p3, p0, Ljavax/crypto/spec/PBEKeySpec;->iterationCount:I

    return-void
.end method

.method public constructor <init>([C[BII)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    iput v1, p0, Ljavax/crypto/spec/PBEKeySpec;->iterationCount:I

    iput v1, p0, Ljavax/crypto/spec/PBEKeySpec;->keyLength:I

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    new-array v0, v1, [C

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    :goto_0
    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "the salt parameter must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    goto :goto_0

    :cond_2
    array-length v0, p2

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "the salt parameter must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    if-gtz p3, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid iterationCount value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-gtz p4, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid keyLength value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iput p3, p0, Ljavax/crypto/spec/PBEKeySpec;->iterationCount:I

    iput p4, p0, Ljavax/crypto/spec/PBEKeySpec;->keyLength:I

    return-void
.end method


# virtual methods
.method public final clearPassword()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    const/16 v2, 0x20

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object v3, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    :cond_1
    return-void
.end method

.method public final getIterationCount()I
    .locals 1

    iget v0, p0, Ljavax/crypto/spec/PBEKeySpec;->iterationCount:I

    return v0
.end method

.method public final getKeyLength()I
    .locals 1

    iget v0, p0, Ljavax/crypto/spec/PBEKeySpec;->keyLength:I

    return v0
.end method

.method public final getPassword()[C
    .locals 2

    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "password has been cleared"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public final getSalt()[B
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0

    :cond_0
    return-object v1
.end method
