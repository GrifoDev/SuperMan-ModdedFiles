.class public Ljava/io/OutputStreamWriter;
.super Ljava/io/Writer;
.source "OutputStreamWriter.java"


# instance fields
.field private final se:Lsun/nio/cs/StreamEncoder;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x0

    :try_start_0
    check-cast v1, Ljava/lang/String;

    invoke-static {p1, p0, v1}, Lsun/nio/cs/StreamEncoder;->forOutputStreamWriter(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/lang/String;)Lsun/nio/cs/StreamEncoder;

    move-result-object v1

    iput-object v1, p0, Ljava/io/OutputStreamWriter;->se:Lsun/nio/cs/StreamEncoder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "charsetName"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1, p0, p2}, Lsun/nio/cs/StreamEncoder;->forOutputStreamWriter(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/lang/String;)Lsun/nio/cs/StreamEncoder;

    move-result-object v0

    iput-object v0, p0, Ljava/io/OutputStreamWriter;->se:Lsun/nio/cs/StreamEncoder;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "charset"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1, p0, p2}, Lsun/nio/cs/StreamEncoder;->forOutputStreamWriter(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)Lsun/nio/cs/StreamEncoder;

    move-result-object v0

    iput-object v0, p0, Ljava/io/OutputStreamWriter;->se:Lsun/nio/cs/StreamEncoder;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/charset/CharsetEncoder;)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "charset encoder"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1, p0, p2}, Lsun/nio/cs/StreamEncoder;->forOutputStreamWriter(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetEncoder;)Lsun/nio/cs/StreamEncoder;

    move-result-object v0

    iput-object v0, p0, Ljava/io/OutputStreamWriter;->se:Lsun/nio/cs/StreamEncoder;

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

    iget-object v0, p0, Ljava/io/OutputStreamWriter;->se:Lsun/nio/cs/StreamEncoder;

    invoke-virtual {v0}, Lsun/nio/cs/StreamEncoder;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/OutputStreamWriter;->se:Lsun/nio/cs/StreamEncoder;

    invoke-virtual {v0}, Lsun/nio/cs/StreamEncoder;->flush()V

    return-void
.end method

.method flushBuffer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/OutputStreamWriter;->se:Lsun/nio/cs/StreamEncoder;

    invoke-virtual {v0}, Lsun/nio/cs/StreamEncoder;->flushBuffer()V

    return-void
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/io/OutputStreamWriter;->se:Lsun/nio/cs/StreamEncoder;

    invoke-virtual {v0}, Lsun/nio/cs/StreamEncoder;->getEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/OutputStreamWriter;->se:Lsun/nio/cs/StreamEncoder;

    invoke-virtual {v0, p1}, Lsun/nio/cs/StreamEncoder;->write(I)V

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/OutputStreamWriter;->se:Lsun/nio/cs/StreamEncoder;

    invoke-virtual {v0, p1, p2, p3}, Lsun/nio/cs/StreamEncoder;->write(Ljava/lang/String;II)V

    return-void
.end method

.method public write([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/OutputStreamWriter;->se:Lsun/nio/cs/StreamEncoder;

    invoke-virtual {v0, p1, p2, p3}, Lsun/nio/cs/StreamEncoder;->write([CII)V

    return-void
.end method
