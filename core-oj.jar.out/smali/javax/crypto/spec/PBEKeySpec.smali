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
    .param p1, "password"    # [C

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    .line 67
    iput v1, p0, Ljavax/crypto/spec/PBEKeySpec;->iterationCount:I

    .line 68
    iput v1, p0, Ljavax/crypto/spec/PBEKeySpec;->keyLength:I

    .line 80
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 81
    :cond_0
    new-array v0, v1, [C

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    .line 79
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    goto :goto_0
.end method

.method public constructor <init>([C[BI)V
    .locals 2
    .param p1, "password"    # [C
    .param p2, "salt"    # [B
    .param p3, "iterationCount"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    .line 67
    iput v1, p0, Ljavax/crypto/spec/PBEKeySpec;->iterationCount:I

    .line 68
    iput v1, p0, Ljavax/crypto/spec/PBEKeySpec;->keyLength:I

    .line 151
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 152
    :cond_0
    new-array v0, v1, [C

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    .line 156
    :goto_0
    if-nez p2, :cond_2

    .line 157
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "the salt parameter must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    goto :goto_0

    .line 159
    :cond_2
    array-length v0, p2

    if-nez v0, :cond_3

    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "the salt parameter must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    .line 165
    if-gtz p3, :cond_4

    .line 166
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid iterationCount value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_4
    iput p3, p0, Ljavax/crypto/spec/PBEKeySpec;->iterationCount:I

    .line 150
    return-void
.end method

.method public constructor <init>([C[BII)V
    .locals 2
    .param p1, "password"    # [C
    .param p2, "salt"    # [B
    .param p3, "iterationCount"    # I
    .param p4, "keyLength"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    .line 67
    iput v1, p0, Ljavax/crypto/spec/PBEKeySpec;->iterationCount:I

    .line 68
    iput v1, p0, Ljavax/crypto/spec/PBEKeySpec;->keyLength:I

    .line 109
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 110
    :cond_0
    new-array v0, v1, [C

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    .line 114
    :goto_0
    if-nez p2, :cond_2

    .line 115
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "the salt parameter must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    goto :goto_0

    .line 117
    :cond_2
    array-length v0, p2

    if-nez v0, :cond_3

    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "the salt parameter must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    .line 123
    if-gtz p3, :cond_4

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid iterationCount value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_4
    if-gtz p4, :cond_5

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid keyLength value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_5
    iput p3, p0, Ljavax/crypto/spec/PBEKeySpec;->iterationCount:I

    .line 130
    iput p4, p0, Ljavax/crypto/spec/PBEKeySpec;->keyLength:I

    .line 108
    return-void
.end method


# virtual methods
.method public final clearPassword()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 176
    iget-object v1, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    if-eqz v1, :cond_1

    .line 177
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 178
    iget-object v1, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    const/16 v2, 0x20

    aput-char v2, v1, v0

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_0
    iput-object v3, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    .line 175
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public final getIterationCount()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Ljavax/crypto/spec/PBEKeySpec;->iterationCount:I

    return v0
.end method

.method public final getKeyLength()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Ljavax/crypto/spec/PBEKeySpec;->keyLength:I

    return v0
.end method

.method public final getPassword()[C
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "password has been cleared"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_0
    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public final getSalt()[B
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 212
    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0

    .line 215
    :cond_0
    return-object v1
.end method
