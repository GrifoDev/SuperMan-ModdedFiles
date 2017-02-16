.class public Lsun/net/www/http/HttpCaptureOutputStream;
.super Ljava/io/FilterOutputStream;
.source "HttpCaptureOutputStream.java"


# instance fields
.field private capture:Lsun/net/www/http/HttpCapture;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lsun/net/www/http/HttpCapture;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "cap"    # Lsun/net/www/http/HttpCapture;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/net/www/http/HttpCaptureOutputStream;->capture:Lsun/net/www/http/HttpCapture;

    .line 40
    iput-object p2, p0, Lsun/net/www/http/HttpCaptureOutputStream;->capture:Lsun/net/www/http/HttpCapture;

    .line 38
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    :try_start_0
    iget-object v1, p0, Lsun/net/www/http/HttpCaptureOutputStream;->capture:Lsun/net/www/http/HttpCapture;

    invoke-virtual {v1}, Lsun/net/www/http/HttpCapture;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V

    .line 66
    return-void

    .line 69
    :catch_0
    move-exception v0

    .local v0, "iOException":Ljava/io/IOException;
    goto :goto_0
.end method

.method public write(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lsun/net/www/http/HttpCaptureOutputStream;->capture:Lsun/net/www/http/HttpCapture;

    invoke-virtual {v0, p1}, Lsun/net/www/http/HttpCapture;->sent(I)V

    .line 46
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 44
    return-void
.end method

.method public write([B)V
    .locals 4
    .param p1, "ba"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    const/4 v1, 0x0

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_0

    aget-byte v0, p1, v1

    .line 52
    .local v0, "b":B
    iget-object v3, p0, Lsun/net/www/http/HttpCaptureOutputStream;->capture:Lsun/net/www/http/HttpCapture;

    invoke-virtual {v3, v0}, Lsun/net/www/http/HttpCapture;->sent(I)V

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    .end local v0    # "b":B
    :cond_0
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 50
    return-void
.end method

.method public write([BII)V
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 60
    iget-object v1, p0, Lsun/net/www/http/HttpCaptureOutputStream;->capture:Lsun/net/www/http/HttpCapture;

    aget-byte v2, p1, v0

    invoke-virtual {v1, v2}, Lsun/net/www/http/HttpCapture;->sent(I)V

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_0
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 58
    return-void
.end method
