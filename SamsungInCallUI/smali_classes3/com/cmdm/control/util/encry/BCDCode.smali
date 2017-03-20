.class public Lcom/cmdm/control/util/encry/BCDCode;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(B)B
    .locals 2
    .param p1, "asc"    # B

    .prologue
    .line 25
    const/16 v1, 0x30

    if-lt p1, v1, :cond_0

    const/16 v1, 0x39

    if-gt p1, v1, :cond_0

    .line 26
    add-int/lit8 v1, p1, -0x30

    int-to-byte v0, v1

    .line 33
    .local v0, "bcd":B
    :goto_0
    return v0

    .line 27
    .end local v0    # "bcd":B
    :cond_0
    const/16 v1, 0x41

    if-lt p1, v1, :cond_1

    const/16 v1, 0x46

    if-gt p1, v1, :cond_1

    .line 28
    add-int/lit8 v1, p1, -0x41

    add-int/lit8 v1, v1, 0xa

    int-to-byte v0, v1

    .restart local v0    # "bcd":B
    goto :goto_0

    .line 29
    .end local v0    # "bcd":B
    :cond_1
    const/16 v1, 0x61

    if-lt p1, v1, :cond_2

    const/16 v1, 0x66

    if-gt p1, v1, :cond_2

    .line 30
    add-int/lit8 v1, p1, -0x61

    add-int/lit8 v1, v1, 0xa

    int-to-byte v0, v1

    .restart local v0    # "bcd":B
    goto :goto_0

    .line 32
    .end local v0    # "bcd":B
    :cond_2
    add-int/lit8 v1, p1, -0x30

    int-to-byte v0, v1

    .restart local v0    # "bcd":B
    goto :goto_0
.end method


# virtual methods
.method public ASCII_To_BCD([BI)[B
    .locals 6
    .param p1, "ascii"    # [B
    .param p2, "asc_len"    # I

    .prologue
    .line 13
    div-int/lit8 v4, p2, 0x2

    new-array v0, v4, [B

    .line 14
    .local v0, "bcd":[B
    const/4 v2, 0x0

    .line 15
    .local v2, "j":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    add-int/lit8 v4, p2, 0x1

    div-int/lit8 v4, v4, 0x2

    if-lt v1, v4, :cond_0

    .line 19
    return-object v0

    .line 16
    :cond_0
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "j":I
    .local v3, "j":I
    aget-byte v4, p1, v2

    invoke-direct {p0, v4}, Lcom/cmdm/control/util/encry/BCDCode;->a(B)B

    move-result v4

    aput-byte v4, v0, v1

    .line 17
    if-lt v3, p2, :cond_1

    const/4 v4, 0x0

    move v2, v3

    .end local v3    # "j":I
    .restart local v2    # "j":I
    :goto_1
    aget-byte v5, v0, v1

    shl-int/lit8 v5, v5, 0x4

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 15
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 17
    .end local v2    # "j":I
    .restart local v3    # "j":I
    :cond_1
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    aget-byte v4, p1, v3

    invoke-direct {p0, v4}, Lcom/cmdm/control/util/encry/BCDCode;->a(B)B

    move-result v4

    goto :goto_1
.end method

.method public bcd2Str([B)Ljava/lang/String;
    .locals 6
    .param p1, "bytes"    # [B

    .prologue
    const/16 v5, 0x9

    .line 37
    array-length v3, p1

    mul-int/lit8 v3, v3, 0x2

    new-array v1, v3, [C

    .line 39
    .local v1, "temp":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-lt v0, v3, :cond_0

    .line 46
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    return-object v3

    .line 40
    :cond_0
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    int-to-char v2, v3

    .line 41
    .local v2, "val":C
    mul-int/lit8 v4, v0, 0x2

    if-le v2, v5, :cond_1

    add-int/lit8 v3, v2, 0x41

    add-int/lit8 v3, v3, -0xa

    :goto_1
    int-to-char v3, v3

    aput-char v3, v1, v4

    .line 43
    aget-byte v3, p1, v0

    and-int/lit8 v3, v3, 0xf

    int-to-char v2, v3

    .line 44
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v4, v3, 0x1

    if-le v2, v5, :cond_2

    add-int/lit8 v3, v2, 0x41

    add-int/lit8 v3, v3, -0xa

    :goto_2
    int-to-char v3, v3

    aput-char v3, v1, v4

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_1
    add-int/lit8 v3, v2, 0x30

    goto :goto_1

    .line 44
    :cond_2
    add-int/lit8 v3, v2, 0x30

    goto :goto_2
.end method
