.class public Lsun/net/www/http/HttpCaptureInputStream;
.super Ljava/io/FilterInputStream;
.source "HttpCaptureInputStream.java"


# instance fields
.field private capture:Lsun/net/www/http/HttpCapture;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lsun/net/www/http/HttpCapture;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/net/www/http/HttpCaptureInputStream;->capture:Lsun/net/www/http/HttpCapture;

    iput-object p2, p0, Lsun/net/www/http/HttpCaptureInputStream;->capture:Lsun/net/www/http/HttpCapture;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lsun/net/www/http/HttpCaptureInputStream;->capture:Lsun/net/www/http/HttpCapture;

    invoke-virtual {v1}, Lsun/net/www/http/HttpCapture;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    iget-object v1, p0, Lsun/net/www/http/HttpCaptureInputStream;->capture:Lsun/net/www/http/HttpCapture;

    invoke-virtual {v1, v0}, Lsun/net/www/http/HttpCapture;->received(I)V

    return v0
.end method

.method public read([B)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->read([B)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lsun/net/www/http/HttpCaptureInputStream;->capture:Lsun/net/www/http/HttpCapture;

    aget-byte v3, p1, v0

    invoke-virtual {v2, v3}, Lsun/net/www/http/HttpCapture;->received(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lsun/net/www/http/HttpCaptureInputStream;->capture:Lsun/net/www/http/HttpCapture;

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    invoke-virtual {v2, v3}, Lsun/net/www/http/HttpCapture;->received(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method
