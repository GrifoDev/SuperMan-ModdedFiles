.class public Lsun/net/TelnetOutputStream;
.super Ljava/io/BufferedOutputStream;
.source "TelnetOutputStream.java"


# instance fields
.field public binaryMode:Z

.field seenCR:Z

.field stickyCRLF:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-boolean v0, p0, Lsun/net/TelnetOutputStream;->stickyCRLF:Z

    iput-boolean v0, p0, Lsun/net/TelnetOutputStream;->seenCR:Z

    iput-boolean v0, p0, Lsun/net/TelnetOutputStream;->binaryMode:Z

    iput-boolean p2, p0, Lsun/net/TelnetOutputStream;->binaryMode:Z

    return-void
.end method


# virtual methods
.method public setStickyCRLF(Z)V
    .locals 0

    iput-boolean p1, p0, Lsun/net/TelnetOutputStream;->stickyCRLF:Z

    return-void
.end method

.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/16 v2, 0xa

    const/16 v1, 0xd

    iget-boolean v0, p0, Lsun/net/TelnetOutputStream;->binaryMode:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Ljava/io/BufferedOutputStream;->write(I)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lsun/net/TelnetOutputStream;->seenCR:Z

    if-eqz v0, :cond_3

    if-eq p1, v2, :cond_1

    invoke-super {p0, v3}, Ljava/io/BufferedOutputStream;->write(I)V

    :cond_1
    invoke-super {p0, p1}, Ljava/io/BufferedOutputStream;->write(I)V

    if-eq p1, v1, :cond_2

    iput-boolean v3, p0, Lsun/net/TelnetOutputStream;->seenCR:Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-ne p1, v2, :cond_4

    invoke-super {p0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    invoke-super {p0, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    return-void

    :cond_4
    if-ne p1, v1, :cond_5

    iget-boolean v0, p0, Lsun/net/TelnetOutputStream;->stickyCRLF:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/net/TelnetOutputStream;->seenCR:Z

    :cond_5
    :goto_1
    invoke-super {p0, p1}, Ljava/io/BufferedOutputStream;->write(I)V

    goto :goto_0

    :cond_6
    invoke-super {p0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    const/4 p1, 0x0

    goto :goto_1
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v1, p0, Lsun/net/TelnetOutputStream;->binaryMode:Z

    if-eqz v1, :cond_0

    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedOutputStream;->write([BII)V

    return-void

    :goto_0
    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_1

    add-int/lit8 p2, v0, 0x1

    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lsun/net/TelnetOutputStream;->write(I)V

    :cond_0
    move v0, p2

    goto :goto_0

    :cond_1
    return-void
.end method
