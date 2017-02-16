.class public abstract Ljavax/net/ssl/SNIServerName;
.super Ljava/lang/Object;
.source "SNIServerName.java"


# static fields
.field private static final HEXES:[C


# instance fields
.field private final encoded:[B

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string/jumbo v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Ljavax/net/ssl/SNIServerName;->HEXES:[C

    .line 47
    return-void
.end method

.method protected constructor <init>(I[B)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "encoded"    # [B

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    if-gez p1, :cond_0

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 77
    const-string/jumbo v1, "Server name type cannot be less than zero"

    .line 76
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 80
    const-string/jumbo v1, "Server name type cannot be greater than 255"

    .line 79
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    iput p1, p0, Ljavax/net/ssl/SNIServerName;->type:I

    .line 84
    if-nez p2, :cond_2

    .line 85
    new-instance v0, Ljava/lang/NullPointerException;

    .line 86
    const-string/jumbo v1, "Server name encoded value cannot be null"

    .line 85
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljavax/net/ssl/SNIServerName;->encoded:[B

    .line 74
    return-void
.end method

.method private static toHexString([B)Ljava/lang/String;
    .locals 8
    .param p0, "bytes"    # [B

    .prologue
    const/4 v4, 0x0

    .line 192
    array-length v5, p0

    if-nez v5, :cond_0

    .line 193
    const-string/jumbo v4, "(empty)"

    return-object v4

    .line 196
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    array-length v5, p0

    mul-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 197
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 198
    .local v1, "isInitial":Z
    array-length v5, p0

    :goto_0
    if-ge v4, v5, :cond_2

    aget-byte v0, p0, v4

    .line 199
    .local v0, "b":B
    if-eqz v1, :cond_1

    .line 200
    const/4 v1, 0x0

    .line 205
    :goto_1
    and-int/lit16 v2, v0, 0xff

    .line 206
    .local v2, "k":I
    sget-object v6, Ljavax/net/ssl/SNIServerName;->HEXES:[C

    ushr-int/lit8 v7, v2, 0x4

    aget-char v6, v6, v7

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 207
    sget-object v6, Ljavax/net/ssl/SNIServerName;->HEXES:[C

    and-int/lit8 v7, v2, 0xf

    aget-char v6, v6, v7

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 198
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 202
    .end local v2    # "k":I
    :cond_1
    const/16 v6, 0x3a

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 210
    .end local v0    # "b":B
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 119
    if-ne p0, p1, :cond_0

    .line 120
    const/4 v1, 0x1

    return v1

    .line 123
    :cond_0
    invoke-virtual {p0}, Ljavax/net/ssl/SNIServerName;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 124
    return v1

    :cond_1
    move-object v0, p1

    .line 127
    check-cast v0, Ljavax/net/ssl/SNIServerName;

    .line 128
    .local v0, "that":Ljavax/net/ssl/SNIServerName;
    iget v2, p0, Ljavax/net/ssl/SNIServerName;->type:I

    iget v3, v0, Ljavax/net/ssl/SNIServerName;->type:I

    if-ne v2, v3, :cond_2

    .line 129
    iget-object v1, p0, Ljavax/net/ssl/SNIServerName;->encoded:[B

    iget-object v2, v0, Ljavax/net/ssl/SNIServerName;->encoded:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 128
    :cond_2
    return v1
.end method

.method public final getEncoded()[B
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Ljavax/net/ssl/SNIServerName;->encoded:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Ljavax/net/ssl/SNIServerName;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 143
    iget v1, p0, Ljavax/net/ssl/SNIServerName;->type:I

    add-int/lit16 v0, v1, 0x20f

    .line 144
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ljavax/net/ssl/SNIServerName;->encoded:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int v0, v1, v2

    .line 146
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 183
    iget v0, p0, Ljavax/net/ssl/SNIServerName;->type:I

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "type=host_name (0), value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavax/net/ssl/SNIServerName;->encoded:[B

    invoke-static {v1}, Ljavax/net/ssl/SNIServerName;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "type=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljavax/net/ssl/SNIServerName;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "), value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavax/net/ssl/SNIServerName;->encoded:[B

    invoke-static {v1}, Ljavax/net/ssl/SNIServerName;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
