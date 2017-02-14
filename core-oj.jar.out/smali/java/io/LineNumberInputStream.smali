.class public Ljava/io/LineNumberInputStream;
.super Ljava/io/FilterInputStream;
.source "LineNumberInputStream.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field lineNumber:I

.field markLineNumber:I

.field markPushBack:I

.field pushBack:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput v0, p0, Ljava/io/LineNumberInputStream;->pushBack:I

    iput v0, p0, Ljava/io/LineNumberInputStream;->markPushBack:I

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Ljava/io/LineNumberInputStream;->pushBack:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getLineNumber()I
    .locals 1

    iget v0, p0, Ljava/io/LineNumberInputStream;->lineNumber:I

    return v0
.end method

.method public mark(I)V
    .locals 1

    iget v0, p0, Ljava/io/LineNumberInputStream;->lineNumber:I

    iput v0, p0, Ljava/io/LineNumberInputStream;->markLineNumber:I

    iget v0, p0, Ljava/io/LineNumberInputStream;->pushBack:I

    iput v0, p0, Ljava/io/LineNumberInputStream;->markPushBack:I

    iget-object v0, p0, Ljava/io/LineNumberInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0xa

    const/4 v2, -0x1

    iget v0, p0, Ljava/io/LineNumberInputStream;->pushBack:I

    if-eq v0, v2, :cond_0

    iput v2, p0, Ljava/io/LineNumberInputStream;->pushBack:I

    :goto_0
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return v0

    :cond_0
    iget-object v1, p0, Ljava/io/LineNumberInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Ljava/io/LineNumberInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    iput v1, p0, Ljava/io/LineNumberInputStream;->pushBack:I

    iget v1, p0, Ljava/io/LineNumberInputStream;->pushBack:I

    if-ne v1, v3, :cond_1

    iput v2, p0, Ljava/io/LineNumberInputStream;->pushBack:I

    :cond_1
    :pswitch_2
    iget v1, p0, Ljava/io/LineNumberInputStream;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/io/LineNumberInputStream;->lineNumber:I

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public read([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, -0x1

    const/4 v5, 0x0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_0
    if-ltz p2, :cond_1

    array-length v3, p1

    if-le p2, v3, :cond_2

    :cond_1
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    :cond_2
    if-ltz p3, :cond_1

    add-int v3, p2, p3

    array-length v4, p1

    if-gt v3, v4, :cond_1

    add-int v3, p2, p3

    if-ltz v3, :cond_1

    if-nez p3, :cond_3

    return v5

    :cond_3
    invoke-virtual {p0}, Ljava/io/LineNumberInputStream;->read()I

    move-result v0

    if-ne v0, v6, :cond_4

    return v6

    :cond_4
    int-to-byte v3, v0

    aput-byte v3, p1, p2

    const/4 v2, 0x1

    :goto_0
    if-ge v2, p3, :cond_5

    :try_start_0
    invoke-virtual {p0}, Ljava/io/LineNumberInputStream;->read()I

    move-result v0

    if-ne v0, v6, :cond_6

    :cond_5
    :goto_1
    return v2

    :cond_6
    if-eqz p1, :cond_7

    add-int v3, p2, v2

    int-to-byte v4, v0

    aput-byte v4, p1, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Ljava/io/LineNumberInputStream;->markLineNumber:I

    iput v0, p0, Ljava/io/LineNumberInputStream;->lineNumber:I

    iget v0, p0, Ljava/io/LineNumberInputStream;->markPushBack:I

    iput v0, p0, Ljava/io/LineNumberInputStream;->pushBack:I

    iget-object v0, p0, Ljava/io/LineNumberInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    return-void
.end method

.method public setLineNumber(I)V
    .locals 0

    iput p1, p0, Ljava/io/LineNumberInputStream;->lineNumber:I

    return-void
.end method

.method public skip(J)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    const/16 v0, 0x800

    move-wide v4, p1

    cmp-long v3, p1, v8

    if-gtz v3, :cond_0

    return-wide v8

    :cond_0
    new-array v1, v0, [B

    :goto_0
    cmp-long v3, v4, v8

    if-lez v3, :cond_1

    const-wide/16 v6, 0x800

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v3, v6

    invoke-virtual {p0, v1, v10, v3}, Ljava/io/LineNumberInputStream;->read([BII)I

    move-result v2

    if-gez v2, :cond_2

    :cond_1
    sub-long v6, p1, v4

    return-wide v6

    :cond_2
    int-to-long v6, v2

    sub-long/2addr v4, v6

    goto :goto_0
.end method
