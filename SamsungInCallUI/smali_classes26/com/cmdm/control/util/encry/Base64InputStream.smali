.class public Lcom/cmdm/control/util/encry/Base64InputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private dQ:Ljava/io/InputStream;

.field private dR:[I

.field private dS:I

.field private eof:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput v0, p0, Lcom/cmdm/control/util/encry/Base64InputStream;->dS:I

    iput-boolean v0, p0, Lcom/cmdm/control/util/encry/Base64InputStream;->eof:Z

    iput-object p1, p0, Lcom/cmdm/control/util/encry/Base64InputStream;->dQ:Ljava/io/InputStream;

    return-void
.end method

.method private acquire()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v12, 0x1

    const/4 v11, -0x1

    const/4 v10, 0x4

    new-array v3, v10, [C

    const/4 v4, 0x0

    :cond_0
    iget-object v8, p0, Lcom/cmdm/control/util/encry/Base64InputStream;->dQ:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ne v1, v11, :cond_3

    if-eqz v4, :cond_1

    new-instance v8, Ljava/io/IOException;

    const-string v9, "Bad base64 stream"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    const/4 v8, 0x0

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/cmdm/control/util/encry/Base64InputStream;->dR:[I

    iput-boolean v12, p0, Lcom/cmdm/control/util/encry/Base64InputStream;->eof:Z

    :cond_2
    return-void

    :cond_3
    int-to-char v2, v1

    sget-object v8, Lcom/cmdm/control/util/encry/Shared;->ed:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ne v8, v11, :cond_4

    sget-char v8, Lcom/cmdm/control/util/encry/Shared;->ee:C

    if-ne v2, v8, :cond_6

    :cond_4
    add-int/lit8 v5, v4, 0x1

    aput-char v2, v3, v4

    move v4, v5

    :cond_5
    if-lt v4, v10, :cond_0

    const/4 v7, 0x0

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v10, :cond_7

    const/4 v8, 0x3

    aget-char v8, v3, v8

    sget-char v9, Lcom/cmdm/control/util/encry/Shared;->ee:C

    if-ne v8, v9, :cond_c

    iget-object v8, p0, Lcom/cmdm/control/util/encry/Base64InputStream;->dQ:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    move-result v8

    if-eq v8, v11, :cond_a

    new-instance v8, Ljava/io/IOException;

    const-string v9, "Bad base64 stream"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_6
    const/16 v8, 0xd

    if-eq v2, v8, :cond_5

    const/16 v8, 0xa

    if-eq v2, v8, :cond_5

    new-instance v8, Ljava/io/IOException;

    const-string v9, "Bad base64 stream"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_7
    aget-char v8, v3, v4

    sget-char v9, Lcom/cmdm/control/util/encry/Shared;->ee:C

    if-eq v8, v9, :cond_8

    if-eqz v7, :cond_9

    new-instance v8, Ljava/io/IOException;

    const-string v9, "Bad base64 stream"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_8
    if-nez v7, :cond_9

    const/4 v7, 0x1

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_a
    iput-boolean v12, p0, Lcom/cmdm/control/util/encry/Base64InputStream;->eof:Z

    const/4 v8, 0x2

    aget-char v8, v3, v8

    sget-char v9, Lcom/cmdm/control/util/encry/Shared;->ee:C

    if-ne v8, v9, :cond_b

    const/4 v6, 0x1

    :goto_1
    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_2
    if-lt v4, v10, :cond_d

    new-array v8, v6, [I

    iput-object v8, p0, Lcom/cmdm/control/util/encry/Base64InputStream;->dR:[I

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v6, :cond_2

    iget-object v8, p0, Lcom/cmdm/control/util/encry/Base64InputStream;->dR:[I

    rsub-int/lit8 v9, v4, 0x2

    mul-int/lit8 v9, v9, 0x8

    ushr-int v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    aput v9, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_b
    const/4 v6, 0x2

    goto :goto_1

    :cond_c
    const/4 v6, 0x3

    goto :goto_1

    :cond_d
    aget-char v8, v3, v4

    sget-char v9, Lcom/cmdm/control/util/encry/Shared;->ee:C

    if-eq v8, v9, :cond_e

    sget-object v8, Lcom/cmdm/control/util/encry/Shared;->ed:Ljava/lang/String;

    aget-char v9, v3, v4

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    rsub-int/lit8 v9, v4, 0x3

    mul-int/lit8 v9, v9, 0x6

    shl-int/2addr v8, v9

    or-int/2addr v0, v8

    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/util/encry/Base64InputStream;->dQ:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/cmdm/control/util/encry/Base64InputStream;->dR:[I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/cmdm/control/util/encry/Base64InputStream;->dS:I

    iget-object v2, p0, Lcom/cmdm/control/util/encry/Base64InputStream;->dR:[I

    array-length v2, v2

    if-ne v1, v2, :cond_3

    :cond_0
    iget-boolean v1, p0, Lcom/cmdm/control/util/encry/Base64InputStream;->eof:Z

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/cmdm/control/util/encry/Base64InputStream;->acquire()V

    iget-object v1, p0, Lcom/cmdm/control/util/encry/Base64InputStream;->dR:[I

    array-length v1, v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cmdm/control/util/encry/Base64InputStream;->dR:[I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/cmdm/control/util/encry/Base64InputStream;->dS:I

    :cond_3
    iget-object v0, p0, Lcom/cmdm/control/util/encry/Base64InputStream;->dR:[I

    iget v1, p0, Lcom/cmdm/control/util/encry/Base64InputStream;->dS:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/cmdm/control/util/encry/Base64InputStream;->dS:I

    aget v0, v0, v1

    goto :goto_0
.end method
