.class public Ljava/io/PrintStream;
.super Ljava/io/FilterOutputStream;
.source "PrintStream.java"

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/io/Closeable;


# instance fields
.field private final autoFlush:Z

.field private charOut:Ljava/io/OutputStreamWriter;

.field private charset:Ljava/nio/charset/Charset;

.field private closing:Z

.field private formatter:Ljava/util/Formatter;

.field private textOut:Ljava/io/BufferedWriter;

.field private trouble:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Ljava/io/PrintStream;-><init>(ZLjava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-static {p2}, Ljava/io/PrintStream;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Ljava/io/PrintStream;-><init>(ZLjava/nio/charset/Charset;Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 1

    const-string/jumbo v0, "Null output stream"

    invoke-static {p1, v0}, Ljava/io/PrintStream;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    invoke-direct {p0, p2, v0}, Ljava/io/PrintStream;-><init>(ZLjava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;ZLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string/jumbo v0, "Null output stream"

    invoke-static {p1, v0}, Ljava/io/PrintStream;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    invoke-static {p3}, Ljava/io/PrintStream;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Ljava/io/PrintStream;-><init>(ZLjava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Ljava/io/PrintStream;-><init>(ZLjava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-static {p2}, Ljava/io/PrintStream;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Ljava/io/PrintStream;-><init>(ZLjava/nio/charset/Charset;Ljava/io/OutputStream;)V

    return-void
.end method

.method private constructor <init>(ZLjava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-boolean v0, p0, Ljava/io/PrintStream;->trouble:Z

    iput-boolean v0, p0, Ljava/io/PrintStream;->closing:Z

    iput-boolean p1, p0, Ljava/io/PrintStream;->autoFlush:Z

    return-void
.end method

.method private constructor <init>(ZLjava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-boolean v0, p0, Ljava/io/PrintStream;->trouble:Z

    iput-boolean v0, p0, Ljava/io/PrintStream;->closing:Z

    iput-boolean p1, p0, Ljava/io/PrintStream;->autoFlush:Z

    return-void
.end method

.method private constructor <init>(ZLjava/nio/charset/Charset;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-direct {p0, p1, p3, p2}, Ljava/io/PrintStream;-><init>(ZLjava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method private ensureOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private getTextOut()Ljava/io/BufferedWriter;
    .locals 2

    iget-object v0, p0, Ljava/io/PrintStream;->textOut:Ljava/io/BufferedWriter;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/io/PrintStream;->charset:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Ljava/io/PrintStream;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    :goto_0
    iput-object v0, p0, Ljava/io/PrintStream;->charOut:Ljava/io/OutputStreamWriter;

    new-instance v0, Ljava/io/BufferedWriter;

    iget-object v1, p0, Ljava/io/PrintStream;->charOut:Ljava/io/OutputStreamWriter;

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Ljava/io/PrintStream;->textOut:Ljava/io/BufferedWriter;

    :cond_0
    iget-object v0, p0, Ljava/io/PrintStream;->textOut:Ljava/io/BufferedWriter;

    return-object v0

    :cond_1
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0
.end method

.method private newLine()V
    .locals 4

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintStream;->ensureOpen()V

    invoke-direct {p0}, Ljava/io/PrintStream;->getTextOut()Ljava/io/BufferedWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flushBuffer()V

    iget-object v3, p0, Ljava/io/PrintStream;->charOut:Ljava/io/OutputStreamWriter;

    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flushBuffer()V

    iget-boolean v3, p0, Ljava/io/PrintStream;->autoFlush:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    monitor-exit p0

    :goto_0
    return-void

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catch_1
    move-exception v1

    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/io/PrintStream;->trouble:Z

    goto :goto_0
.end method

.method private static requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object p0
.end method

.method private static toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string/jumbo v1, "charsetName"

    invoke-static {p0, v1}, Ljava/io/PrintStream;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private write(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintStream;->ensureOpen()V

    invoke-direct {p0}, Ljava/io/PrintStream;->getTextOut()Ljava/io/BufferedWriter;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flushBuffer()V

    iget-object v3, p0, Ljava/io/PrintStream;->charOut:Ljava/io/OutputStreamWriter;

    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flushBuffer()V

    iget-boolean v3, p0, Ljava/io/PrintStream;->autoFlush:Z

    if-eqz v3, :cond_0

    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_0

    iget-object v3, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    monitor-exit p0

    :goto_0
    return-void

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catch_1
    move-exception v1

    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/io/PrintStream;->trouble:Z

    goto :goto_0
.end method

.method private write([C)V
    .locals 6

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintStream;->ensureOpen()V

    invoke-direct {p0}, Ljava/io/PrintStream;->getTextOut()Ljava/io/BufferedWriter;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write([C)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flushBuffer()V

    iget-object v4, p0, Ljava/io/PrintStream;->charOut:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->flushBuffer()V

    iget-boolean v4, p0, Ljava/io/PrintStream;->autoFlush:Z

    if-eqz v4, :cond_1

    const/4 v0, 0x0

    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_1

    aget-char v4, p1, v0

    const/16 v5, 0xa

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :try_start_2
    monitor-exit p0

    :goto_1
    return-void

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :catch_1
    move-exception v2

    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/io/PrintStream;->trouble:Z

    goto :goto_1
.end method


# virtual methods
.method public append(C)Ljava/io/PrintStream;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(C)V

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;
    .locals 1

    if-nez p1, :cond_0

    const-string/jumbo v0, "null"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_0
    return-object p0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/PrintStream;
    .locals 2

    if-nez p1, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    invoke-interface {v0, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    return-object p0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->append(C)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public checkError()Z
    .locals 2

    iget-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/io/PrintStream;->flush()V

    :cond_0
    iget-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    instance-of v1, v1, Ljava/io/PrintStream;

    if-eqz v1, :cond_1

    iget-object v0, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    check-cast v0, Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->checkError()Z

    move-result v1

    return v1

    :cond_1
    iget-boolean v1, p0, Ljava/io/PrintStream;->trouble:Z

    return v1
.end method

.method protected clearError()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/PrintStream;->trouble:Z

    return-void
.end method

.method public close()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Ljava/io/PrintStream;->closing:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/PrintStream;->closing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Ljava/io/PrintStream;->textOut:Ljava/io/BufferedWriter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/io/PrintStream;->textOut:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    :cond_0
    iget-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Ljava/io/PrintStream;->textOut:Ljava/io/BufferedWriter;

    const/4 v1, 0x0

    iput-object v1, p0, Ljava/io/PrintStream;->charOut:Ljava/io/OutputStreamWriter;

    const/4 v1, 0x0

    iput-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Ljava/io/PrintStream;->trouble:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public flush()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/io/PrintStream;->ensureOpen()V

    iget-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Ljava/io/PrintStream;->trouble:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .locals 4

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintStream;->ensureOpen()V

    iget-object v2, p0, Ljava/io/PrintStream;->formatter:Ljava/util/Formatter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljava/io/PrintStream;->formatter:Ljava/util/Formatter;

    invoke-virtual {v2}, Ljava/util/Formatter;->locale()Ljava/util/Locale;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    if-eq v2, v3, :cond_1

    :cond_0
    new-instance v2, Ljava/util/Formatter;

    invoke-direct {v2, p0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v2, p0, Ljava/io/PrintStream;->formatter:Ljava/util/Formatter;

    :cond_1
    iget-object v2, p0, Ljava/io/PrintStream;->formatter:Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3, p1, p2}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    :goto_0
    return-object p0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/io/PrintStream;->trouble:Z

    goto :goto_0
.end method

.method public varargs format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .locals 3

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintStream;->ensureOpen()V

    iget-object v2, p0, Ljava/io/PrintStream;->formatter:Ljava/util/Formatter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljava/io/PrintStream;->formatter:Ljava/util/Formatter;

    invoke-virtual {v2}, Ljava/util/Formatter;->locale()Ljava/util/Locale;

    move-result-object v2

    if-eq v2, p1, :cond_1

    :cond_0
    new-instance v2, Ljava/util/Formatter;

    invoke-direct {v2, p0, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v2, p0, Ljava/io/PrintStream;->formatter:Ljava/util/Formatter;

    :cond_1
    iget-object v2, p0, Ljava/io/PrintStream;->formatter:Ljava/util/Formatter;

    invoke-virtual {v2, p1, p2, p3}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    :goto_0
    return-object p0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/io/PrintStream;->trouble:Z

    goto :goto_0
.end method

.method public print(C)V
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    return-void
.end method

.method public print(D)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    return-void
.end method

.method public print(F)V
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    return-void
.end method

.method public print(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    return-void
.end method

.method public print(J)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    return-void
.end method

.method public print(Ljava/lang/Object;)V
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string/jumbo p1, "null"

    :cond_0
    invoke-direct {p0, p1}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    return-void
.end method

.method public print(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-direct {p0, v0}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method public print([C)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/PrintStream;->write([C)V

    return-void
.end method

.method public varargs printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public varargs printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/PrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public println()V
    .locals 0

    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V

    return-void
.end method

.method public println(C)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(C)V

    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public println(D)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/io/PrintStream;->print(D)V

    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public println(F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(F)V

    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public println(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(I)V

    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public println(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/io/PrintStream;->print(J)V

    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public println(Ljava/lang/Object;)V
    .locals 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public println(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public println(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Z)V

    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public println([C)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print([C)V

    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected setError()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/PrintStream;->trouble:Z

    return-void
.end method

.method public write(I)V
    .locals 3

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintStream;->ensureOpen()V

    iget-object v2, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write(I)V

    const/16 v2, 0xa

    if-ne p1, v2, :cond_0

    iget-boolean v2, p0, Ljava/io/PrintStream;->autoFlush:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    monitor-exit p0

    :goto_0
    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/io/PrintStream;->trouble:Z

    goto :goto_0
.end method

.method public write([BII)V
    .locals 3

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintStream;->ensureOpen()V

    iget-object v2, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget-boolean v2, p0, Ljava/io/PrintStream;->autoFlush:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    monitor-exit p0

    :goto_0
    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/io/PrintStream;->trouble:Z

    goto :goto_0
.end method
