.class public Lsun/net/TelnetInputStream;
.super Ljava/io/FilterInputStream;
.source "TelnetInputStream.java"


# instance fields
.field public binaryMode:Z

.field seenCR:Z

.field stickyCRLF:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-boolean v0, p0, Lsun/net/TelnetInputStream;->stickyCRLF:Z

    iput-boolean v0, p0, Lsun/net/TelnetInputStream;->seenCR:Z

    iput-boolean v0, p0, Lsun/net/TelnetInputStream;->binaryMode:Z

    iput-boolean p2, p0, Lsun/net/TelnetInputStream;->binaryMode:Z

    return-void
.end method


# virtual methods
.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0xa

    const/16 v2, 0xd

    iget-boolean v1, p0, Lsun/net/TelnetInputStream;->binaryMode:Z

    if-eqz v1, :cond_0

    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v1

    return v1

    :cond_0
    iget-boolean v1, p0, Lsun/net/TelnetInputStream;->seenCR:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/net/TelnetInputStream;->seenCR:Z

    return v3

    :cond_1
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    if-ne v0, v2, :cond_3

    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :sswitch_0
    new-instance v1, Lsun/net/TelnetProtocolException;

    const-string/jumbo v2, "misplaced CR in input"

    invoke-direct {v1, v2}, Lsun/net/TelnetProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_1
    return v2

    :sswitch_2
    iget-boolean v1, p0, Lsun/net/TelnetInputStream;->stickyCRLF:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/net/TelnetInputStream;->seenCR:Z

    return v2

    :cond_2
    return v3

    :cond_3
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lsun/net/TelnetInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, -0x1

    iget-boolean v4, p0, Lsun/net/TelnetInputStream;->binaryMode:Z

    if-eqz v4, :cond_0

    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v3

    return v3

    :cond_0
    move v2, p2

    move v1, p2

    :goto_0
    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_1

    invoke-virtual {p0}, Lsun/net/TelnetInputStream;->read()I

    move-result v0

    if-ne v0, v3, :cond_3

    :cond_1
    if-le v1, v2, :cond_2

    sub-int v3, v1, v2

    :cond_2
    return v3

    :cond_3
    add-int/lit8 p2, v1, 0x1

    int-to-byte v4, v0

    aput-byte v4, p1, v1

    move v1, p2

    goto :goto_0
.end method

.method public setStickyCRLF(Z)V
    .locals 0

    iput-boolean p1, p0, Lsun/net/TelnetInputStream;->stickyCRLF:Z

    return-void
.end method
