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
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 278
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Ljava/io/PrintStream;-><init>(ZLjava/io/OutputStream;)V

    .line 277
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 318
    invoke-static {p2}, Ljava/io/PrintStream;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Ljava/io/PrintStream;-><init>(ZLjava/nio/charset/Charset;Ljava/io/OutputStream;)V

    .line 315
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;Z)V

    .line 133
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "autoFlush"    # Z

    .prologue
    .line 150
    const-string/jumbo v0, "Null output stream"

    invoke-static {p1, v0}, Ljava/io/PrintStream;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    invoke-direct {p0, p2, v0}, Ljava/io/PrintStream;-><init>(ZLjava/io/OutputStream;)V

    .line 149
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;ZLjava/lang/String;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "autoFlush"    # Z
    .param p3, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 175
    const-string/jumbo v0, "Null output stream"

    invoke-static {p1, v0}, Ljava/io/PrintStream;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    .line 176
    invoke-static {p3}, Ljava/io/PrintStream;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 174
    invoke-direct {p0, p2, v0, v1}, Ljava/io/PrintStream;-><init>(ZLjava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 172
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 207
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Ljava/io/PrintStream;-><init>(ZLjava/io/OutputStream;)V

    .line 206
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 247
    invoke-static {p2}, Ljava/io/PrintStream;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Ljava/io/PrintStream;-><init>(ZLjava/nio/charset/Charset;Ljava/io/OutputStream;)V

    .line 244
    return-void
.end method

.method private constructor <init>(ZLjava/io/OutputStream;)V
    .locals 1
    .param p1, "autoFlush"    # Z
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 63
    iput-boolean v0, p0, Ljava/io/PrintStream;->trouble:Z

    .line 345
    iput-boolean v0, p0, Ljava/io/PrintStream;->closing:Z

    .line 106
    iput-boolean p1, p0, Ljava/io/PrintStream;->autoFlush:Z

    .line 104
    return-void
.end method

.method private constructor <init>(ZLjava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "autoFlush"    # Z
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 63
    iput-boolean v0, p0, Ljava/io/PrintStream;->trouble:Z

    .line 345
    iput-boolean v0, p0, Ljava/io/PrintStream;->closing:Z

    .line 111
    iput-boolean p1, p0, Ljava/io/PrintStream;->autoFlush:Z

    .line 109
    return-void
.end method

.method private constructor <init>(ZLjava/nio/charset/Charset;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "autoFlush"    # Z
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-direct {p0, p1, p3, p2}, Ljava/io/PrintStream;-><init>(ZLjava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 120
    return-void
.end method

.method private ensureOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    iget-object v0, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 324
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_0
    return-void
.end method

.method private getTextOut()Ljava/io/BufferedWriter;
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Ljava/io/PrintStream;->textOut:Ljava/io/BufferedWriter;

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Ljava/io/PrintStream;->charset:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Ljava/io/PrintStream;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    :goto_0
    iput-object v0, p0, Ljava/io/PrintStream;->charOut:Ljava/io/OutputStreamWriter;

    .line 352
    new-instance v0, Ljava/io/BufferedWriter;

    iget-object v1, p0, Ljava/io/PrintStream;->charOut:Ljava/io/OutputStreamWriter;

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Ljava/io/PrintStream;->textOut:Ljava/io/BufferedWriter;

    .line 354
    :cond_0
    iget-object v0, p0, Ljava/io/PrintStream;->textOut:Ljava/io/BufferedWriter;

    return-object v0

    .line 351
    :cond_1
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0
.end method

.method private newLine()V
    .locals 4

    .prologue
    .line 558
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 559
    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintStream;->ensureOpen()V

    .line 561
    invoke-direct {p0}, Ljava/io/PrintStream;->getTextOut()Ljava/io/BufferedWriter;

    move-result-object v0

    .line 562
    .local v0, "textOut":Ljava/io/BufferedWriter;
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 563
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flushBuffer()V

    .line 564
    iget-object v3, p0, Ljava/io/PrintStream;->charOut:Ljava/io/OutputStreamWriter;

    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flushBuffer()V

    .line 565
    iget-boolean v3, p0, Ljava/io/PrintStream;->autoFlush:Z

    if-eqz v3, :cond_0

    .line 566
    iget-object v3, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    monitor-exit p0

    .line 556
    .end local v0    # "textOut":Ljava/io/BufferedWriter;
    :goto_0
    return-void

    .line 558
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 569
    :catch_0
    move-exception v2

    .line 570
    .local v2, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 572
    .end local v2    # "x":Ljava/io/InterruptedIOException;
    :catch_1
    move-exception v1

    .line 573
    .local v1, "x":Ljava/io/IOException;
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/io/PrintStream;->trouble:Z

    goto :goto_0
.end method

.method private static requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    return-object p0
.end method

.method private static toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 2
    .param p0, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 94
    const-string/jumbo v1, "charsetName"

    invoke-static {p0, v1}, Ljava/io/PrintStream;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 96
    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 97
    :catch_0
    move-exception v0

    .line 99
    .local v0, "unused":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private write(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 537
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 538
    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintStream;->ensureOpen()V

    .line 540
    invoke-direct {p0}, Ljava/io/PrintStream;->getTextOut()Ljava/io/BufferedWriter;

    move-result-object v0

    .line 541
    .local v0, "textOut":Ljava/io/BufferedWriter;
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 542
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flushBuffer()V

    .line 543
    iget-object v3, p0, Ljava/io/PrintStream;->charOut:Ljava/io/OutputStreamWriter;

    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flushBuffer()V

    .line 544
    iget-boolean v3, p0, Ljava/io/PrintStream;->autoFlush:Z

    if-eqz v3, :cond_0

    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_0

    .line 545
    iget-object v3, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    monitor-exit p0

    .line 535
    .end local v0    # "textOut":Ljava/io/BufferedWriter;
    :goto_0
    return-void

    .line 537
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 548
    :catch_0
    move-exception v2

    .line 549
    .local v2, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 551
    .end local v2    # "x":Ljava/io/InterruptedIOException;
    :catch_1
    move-exception v1

    .line 552
    .local v1, "x":Ljava/io/IOException;
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/io/PrintStream;->trouble:Z

    goto :goto_0
.end method

.method private write([C)V
    .locals 6
    .param p1, "buf"    # [C

    .prologue
    .line 513
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 514
    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintStream;->ensureOpen()V

    .line 516
    invoke-direct {p0}, Ljava/io/PrintStream;->getTextOut()Ljava/io/BufferedWriter;

    move-result-object v1

    .line 517
    .local v1, "textOut":Ljava/io/BufferedWriter;
    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write([C)V

    .line 518
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flushBuffer()V

    .line 519
    iget-object v4, p0, Ljava/io/PrintStream;->charOut:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->flushBuffer()V

    .line 520
    iget-boolean v4, p0, Ljava/io/PrintStream;->autoFlush:Z

    if-eqz v4, :cond_1

    .line 521
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_1

    .line 522
    aget-char v4, p1, v0

    const/16 v5, 0xa

    if-ne v4, v5, :cond_0

    .line 523
    iget-object v4, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 521
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_1
    :try_start_2
    monitor-exit p0

    .line 511
    .end local v1    # "textOut":Ljava/io/BufferedWriter;
    :goto_1
    return-void

    .line 513
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 527
    :catch_0
    move-exception v3

    .line 528
    .local v3, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 530
    .end local v3    # "x":Ljava/io/InterruptedIOException;
    :catch_1
    move-exception v2

    .line 531
    .local v2, "x":Ljava/io/IOException;
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/io/PrintStream;->trouble:Z

    goto :goto_1
.end method


# virtual methods
.method public append(C)Ljava/io/PrintStream;
    .locals 0
    .param p1, "c"    # C

    .prologue
    .line 1143
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(C)V

    .line 1144
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;

    .prologue
    .line 1080
    if-nez p1, :cond_0

    .line 1081
    const-string/jumbo v0, "null"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1084
    :goto_0
    return-object p0

    .line 1083
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/PrintStream;
    .locals 2
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 1121
    if-nez p1, :cond_0

    const-string/jumbo v0, "null"

    .line 1122
    .local v0, "cs":Ljava/lang/CharSequence;
    :goto_0
    invoke-interface {v0, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    .line 1123
    return-object p0

    .end local v0    # "cs":Ljava/lang/CharSequence;
    :cond_0
    move-object v0, p1

    .line 1121
    goto :goto_0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1142
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->append(C)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1079
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1120
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public checkError()Z
    .locals 2

    .prologue
    .line 403
    iget-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    .line 404
    invoke-virtual {p0}, Ljava/io/PrintStream;->flush()V

    .line 405
    :cond_0
    iget-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    instance-of v1, v1, Ljava/io/PrintStream;

    if-eqz v1, :cond_1

    .line 406
    iget-object v0, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    check-cast v0, Ljava/io/PrintStream;

    .line 407
    .local v0, "ps":Ljava/io/PrintStream;
    invoke-virtual {v0}, Ljava/io/PrintStream;->checkError()Z

    move-result v1

    return v1

    .line 409
    .end local v0    # "ps":Ljava/io/PrintStream;
    :cond_1
    iget-boolean v1, p0, Ljava/io/PrintStream;->trouble:Z

    return v1
.end method

.method protected clearError()V
    .locals 1

    .prologue
    .line 435
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/PrintStream;->trouble:Z

    .line 434
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 364
    monitor-enter p0

    .line 365
    :try_start_0
    iget-boolean v1, p0, Ljava/io/PrintStream;->closing:Z

    if-nez v1, :cond_1

    .line 366
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/PrintStream;->closing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    :try_start_1
    iget-object v1, p0, Ljava/io/PrintStream;->textOut:Ljava/io/BufferedWriter;

    if-eqz v1, :cond_0

    .line 370
    iget-object v1, p0, Ljava/io/PrintStream;->textOut:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 372
    :cond_0
    iget-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 377
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Ljava/io/PrintStream;->textOut:Ljava/io/BufferedWriter;

    .line 378
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/io/PrintStream;->charOut:Ljava/io/OutputStreamWriter;

    .line 379
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit p0

    .line 363
    return-void

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "x":Ljava/io/IOException;
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Ljava/io/PrintStream;->trouble:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 364
    .end local v0    # "x":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 334
    monitor-enter p0

    .line 336
    :try_start_0
    invoke-direct {p0}, Ljava/io/PrintStream;->ensureOpen()V

    .line 337
    iget-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 333
    return-void

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "x":Ljava/io/IOException;
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Ljava/io/PrintStream;->trouble:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 334
    .end local v0    # "x":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .locals 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 983
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 984
    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintStream;->ensureOpen()V

    .line 985
    iget-object v2, p0, Ljava/io/PrintStream;->formatter:Ljava/util/Formatter;

    if-eqz v2, :cond_0

    .line 986
    iget-object v2, p0, Ljava/io/PrintStream;->formatter:Ljava/util/Formatter;

    invoke-virtual {v2}, Ljava/util/Formatter;->locale()Ljava/util/Locale;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 987
    :cond_0
    new-instance v2, Ljava/util/Formatter;

    invoke-direct {v2, p0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v2, p0, Ljava/io/PrintStream;->formatter:Ljava/util/Formatter;

    .line 988
    :cond_1
    iget-object v2, p0, Ljava/io/PrintStream;->formatter:Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3, p1, p2}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    .line 995
    :goto_0
    return-object p0

    .line 983
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 990
    :catch_0
    move-exception v1

    .line 991
    .local v1, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 992
    .end local v1    # "x":Ljava/io/InterruptedIOException;
    :catch_1
    move-exception v0

    .line 993
    .local v0, "x":Ljava/io/IOException;
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/io/PrintStream;->trouble:Z

    goto :goto_0
.end method

.method public varargs format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .locals 3
    .param p1, "l"    # Ljava/util/Locale;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1040
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1041
    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintStream;->ensureOpen()V

    .line 1042
    iget-object v2, p0, Ljava/io/PrintStream;->formatter:Ljava/util/Formatter;

    if-eqz v2, :cond_0

    .line 1043
    iget-object v2, p0, Ljava/io/PrintStream;->formatter:Ljava/util/Formatter;

    invoke-virtual {v2}, Ljava/util/Formatter;->locale()Ljava/util/Locale;

    move-result-object v2

    if-eq v2, p1, :cond_1

    .line 1044
    :cond_0
    new-instance v2, Ljava/util/Formatter;

    invoke-direct {v2, p0, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v2, p0, Ljava/io/PrintStream;->formatter:Ljava/util/Formatter;

    .line 1045
    :cond_1
    iget-object v2, p0, Ljava/io/PrintStream;->formatter:Ljava/util/Formatter;

    invoke-virtual {v2, p1, p2, p3}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    .line 1052
    :goto_0
    return-object p0

    .line 1040
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1047
    :catch_0
    move-exception v1

    .line 1048
    .local v1, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1049
    .end local v1    # "x":Ljava/io/InterruptedIOException;
    :catch_1
    move-exception v0

    .line 1050
    .local v0, "x":Ljava/io/IOException;
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/io/PrintStream;->trouble:Z

    goto :goto_0
.end method

.method public print(C)V
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 601
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    .line 600
    return-void
.end method

.method public print(D)V
    .locals 1
    .param p1, "d"    # D

    .prologue
    .line 657
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    .line 656
    return-void
.end method

.method public print(F)V
    .locals 1
    .param p1, "f"    # F

    .prologue
    .line 643
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    .line 642
    return-void
.end method

.method public print(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 615
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    .line 614
    return-void
.end method

.method public print(J)V
    .locals 1
    .param p1, "l"    # J

    .prologue
    .line 629
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    .line 628
    return-void
.end method

.method public print(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 701
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    .line 700
    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 684
    if-nez p1, :cond_0

    .line 685
    const-string/jumbo p1, "null"

    .line 687
    :cond_0
    invoke-direct {p0, p1}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    .line 683
    return-void
.end method

.method public print(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 589
    if-eqz p1, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-direct {p0, v0}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    .line 588
    return-void

    .line 589
    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method public print([C)V
    .locals 0
    .param p1, "s"    # [C

    .prologue
    .line 671
    invoke-direct {p0, p1}, Ljava/io/PrintStream;->write([C)V

    .line 670
    return-void
.end method

.method public varargs printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 889
    invoke-virtual {p0, p1, p2}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public varargs printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .locals 1
    .param p1, "l"    # Ljava/util/Locale;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 939
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/PrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public println()V
    .locals 0

    .prologue
    .line 714
    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V

    .line 713
    return-void
.end method

.method public println(C)V
    .locals 1
    .param p1, "x"    # C

    .prologue
    .line 739
    monitor-enter p0

    .line 740
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(C)V

    .line 741
    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 738
    return-void

    .line 739
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public println(D)V
    .locals 1
    .param p1, "x"    # D

    .prologue
    .line 795
    monitor-enter p0

    .line 796
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/io/PrintStream;->print(D)V

    .line 797
    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 794
    return-void

    .line 795
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public println(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 781
    monitor-enter p0

    .line 782
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(F)V

    .line 783
    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 780
    return-void

    .line 781
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public println(I)V
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 753
    monitor-enter p0

    .line 754
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(I)V

    .line 755
    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 752
    return-void

    .line 753
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public println(J)V
    .locals 1
    .param p1, "x"    # J

    .prologue
    .line 767
    monitor-enter p0

    .line 768
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/io/PrintStream;->print(J)V

    .line 769
    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 766
    return-void

    .line 767
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public println(Ljava/lang/Object;)V
    .locals 2
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 839
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 840
    .local v0, "s":Ljava/lang/String;
    monitor-enter p0

    .line 841
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 842
    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 838
    return-void

    .line 840
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public println(Ljava/lang/String;)V
    .locals 1
    .param p1, "x"    # Ljava/lang/String;

    .prologue
    .line 823
    monitor-enter p0

    .line 824
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 825
    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 822
    return-void

    .line 823
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public println(Z)V
    .locals 1
    .param p1, "x"    # Z

    .prologue
    .line 725
    monitor-enter p0

    .line 726
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Z)V

    .line 727
    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 724
    return-void

    .line 725
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public println([C)V
    .locals 1
    .param p1, "x"    # [C

    .prologue
    .line 809
    monitor-enter p0

    .line 810
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print([C)V

    .line 811
    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 808
    return-void

    .line 809
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected setError()V
    .locals 1

    .prologue
    .line 422
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/PrintStream;->trouble:Z

    .line 421
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I

    .prologue
    .line 459
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 460
    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintStream;->ensureOpen()V

    .line 461
    iget-object v2, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write(I)V

    .line 462
    const/16 v2, 0xa

    if-ne p1, v2, :cond_0

    iget-boolean v2, p0, Ljava/io/PrintStream;->autoFlush:Z

    if-eqz v2, :cond_0

    .line 463
    iget-object v2, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    monitor-exit p0

    .line 457
    :goto_0
    return-void

    .line 459
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 466
    :catch_0
    move-exception v1

    .line 467
    .local v1, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 469
    .end local v1    # "x":Ljava/io/InterruptedIOException;
    :catch_1
    move-exception v0

    .line 470
    .local v0, "x":Ljava/io/IOException;
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/io/PrintStream;->trouble:Z

    goto :goto_0
.end method

.method public write([BII)V
    .locals 3
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 490
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 491
    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintStream;->ensureOpen()V

    .line 492
    iget-object v2, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 493
    iget-boolean v2, p0, Ljava/io/PrintStream;->autoFlush:Z

    if-eqz v2, :cond_0

    .line 494
    iget-object v2, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    monitor-exit p0

    .line 488
    :goto_0
    return-void

    .line 490
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 497
    :catch_0
    move-exception v1

    .line 498
    .local v1, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 500
    .end local v1    # "x":Ljava/io/InterruptedIOException;
    :catch_1
    move-exception v0

    .line 501
    .local v0, "x":Ljava/io/IOException;
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/io/PrintStream;->trouble:Z

    goto :goto_0
.end method
