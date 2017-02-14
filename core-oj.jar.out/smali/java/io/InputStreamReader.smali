.class public Ljava/io/InputStreamReader;
.super Ljava/io/Reader;
.source "InputStreamReader.java"


# instance fields
.field private final sd:Lsun/nio/cs/StreamDecoder;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x0

    :try_start_0
    check-cast v1, Ljava/lang/String;

    invoke-static {p1, p0, v1}, Lsun/nio/cs/StreamDecoder;->forInputStreamReader(Ljava/io/InputStream;Ljava/lang/Object;Ljava/lang/String;)Lsun/nio/cs/StreamDecoder;

    move-result-object v1

    iput-object v1, p0, Ljava/io/InputStreamReader;->sd:Lsun/nio/cs/StreamDecoder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "charsetName"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1, p0, p2}, Lsun/nio/cs/StreamDecoder;->forInputStreamReader(Ljava/io/InputStream;Ljava/lang/Object;Ljava/lang/String;)Lsun/nio/cs/StreamDecoder;

    move-result-object v0

    iput-object v0, p0, Ljava/io/InputStreamReader;->sd:Lsun/nio/cs/StreamDecoder;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "charset"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1, p0, p2}, Lsun/nio/cs/StreamDecoder;->forInputStreamReader(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)Lsun/nio/cs/StreamDecoder;

    move-result-object v0

    iput-object v0, p0, Ljava/io/InputStreamReader;->sd:Lsun/nio/cs/StreamDecoder;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/CharsetDecoder;)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "charset decoder"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1, p0, p2}, Lsun/nio/cs/StreamDecoder;->forInputStreamReader(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetDecoder;)Lsun/nio/cs/StreamDecoder;

    move-result-object v0

    iput-object v0, p0, Ljava/io/InputStreamReader;->sd:Lsun/nio/cs/StreamDecoder;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/InputStreamReader;->sd:Lsun/nio/cs/StreamDecoder;

    invoke-virtual {v0}, Lsun/nio/cs/StreamDecoder;->close()V

    return-void
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/io/InputStreamReader;->sd:Lsun/nio/cs/StreamDecoder;

    invoke-virtual {v0}, Lsun/nio/cs/StreamDecoder;->getEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/InputStreamReader;->sd:Lsun/nio/cs/StreamDecoder;

    invoke-virtual {v0}, Lsun/nio/cs/StreamDecoder;->read()I

    move-result v0

    return v0
.end method

.method public read([CII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/InputStreamReader;->sd:Lsun/nio/cs/StreamDecoder;

    invoke-virtual {v0, p1, p2, p3}, Lsun/nio/cs/StreamDecoder;->read([CII)I

    move-result v0

    return v0
.end method

.method public ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/InputStreamReader;->sd:Lsun/nio/cs/StreamDecoder;

    invoke-virtual {v0}, Lsun/nio/cs/StreamDecoder;->ready()Z

    move-result v0

    return v0
.end method
