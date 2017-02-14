.class public Lmf/org/apache/xml/serialize/Printer;
.super Ljava/lang/Object;
.source "Printer.java"


# static fields
.field private static final BufferSize:I = 0x1000


# instance fields
.field private final _buffer:[C

.field protected _docWriter:Ljava/io/Writer;

.field protected _dtdWriter:Ljava/io/StringWriter;

.field protected _exception:Ljava/io/IOException;

.field protected final _format:Lmf/org/apache/xml/serialize/OutputFormat;

.field private _pos:I

.field protected _writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    new-array v0, v0, [C

    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    iput v2, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    iput-object p1, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iput-object p2, p0, Lmf/org/apache/xml/serialize/Printer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    iput-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    iput-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_dtdWriter:Ljava/io/StringWriter;

    iput-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_docWriter:Ljava/io/Writer;

    iput v2, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    return-void
.end method


# virtual methods
.method public breakLine()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget v0, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    iget v1, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    const/16 v2, 0xa

    aput-char v2, v0, v1

    iget v0, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write([C)V

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-eqz v1, :cond_1

    :goto_1
    throw v0

    :cond_1
    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    goto :goto_1
.end method

.method public breakLine(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    return-void
.end method

.method public enterDTD()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_dtdWriter:Ljava/io/StringWriter;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/Printer;->flushLine(Z)V

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_dtdWriter:Ljava/io/StringWriter;

    iget-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_docWriter:Ljava/io/Writer;

    iget-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_dtdWriter:Ljava/io/StringWriter;

    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    goto :goto_0
.end method

.method public flush()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/Writer;->write([CII)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iput v4, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-eqz v1, :cond_0

    :goto_0
    throw v0

    :cond_0
    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    goto :goto_0
.end method

.method public flushLine(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iput v4, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-nez v1, :cond_0

    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    goto :goto_0
.end method

.method public getException()Ljava/io/IOException;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    return-object v0
.end method

.method public getNextIndent()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public indent()V
    .locals 0

    return-void
.end method

.method public leaveDTD()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_dtdWriter:Ljava/io/StringWriter;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/Printer;->flushLine(Z)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_docWriter:Ljava/io/Writer;

    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_dtdWriter:Ljava/io/StringWriter;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public printSpace()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget v0, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    iget v1, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    const/16 v2, 0x20

    aput-char v2, v0, v1

    iget v0, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write([C)V

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-eqz v1, :cond_1

    :goto_1
    throw v0

    :cond_1
    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    goto :goto_1
.end method

.method public printText(C)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget v0, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    iget v1, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    int-to-char v2, p1

    aput-char v2, v0, v1

    iget v0, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write([C)V

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-eqz v1, :cond_1

    :goto_1
    throw v0

    :cond_1
    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    goto :goto_1
.end method

.method public printText(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    iget v2, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    const/16 v3, 0x1000

    if-eq v2, v3, :cond_0

    :goto_1
    iget-object v2, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    iget v3, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-char v4, v4

    aput-char v4, v2, v3

    iget v2, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v3, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write([C)V

    const/4 v2, 0x0

    iput v2, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-eqz v1, :cond_1

    :goto_2
    throw v0

    :cond_1
    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    goto :goto_2

    :cond_2
    return-void
.end method

.method public printText(Ljava/lang/StringBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    iget v2, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    const/16 v3, 0x1000

    if-eq v2, v3, :cond_0

    :goto_1
    iget-object v2, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    iget v3, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    int-to-char v4, v4

    aput-char v4, v2, v3

    iget v2, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v3, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write([C)V

    const/4 v2, 0x0

    iput v2, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-eqz v1, :cond_1

    :goto_2
    throw v0

    :cond_1
    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    goto :goto_2

    :cond_2
    return-void
.end method

.method public printText([CII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    add-int/lit8 v0, p3, -0x1

    if-lez p3, :cond_2

    :try_start_0
    iget v1, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    const/16 v2, 0x1000

    if-eq v1, v2, :cond_0

    :goto_1
    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    iget v2, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    aget-char v3, p1, p2

    int-to-char v3, v3

    aput-char v3, v1, v2

    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    move p3, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v2, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write([C)V

    const/4 v1, 0x0

    iput v1, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-eqz v1, :cond_1

    :goto_2
    throw v0

    :cond_1
    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    goto :goto_2

    :cond_2
    return-void
.end method

.method public setNextIndent(I)V
    .locals 0

    return-void
.end method

.method public setThisIndent(I)V
    .locals 0

    return-void
.end method

.method public unindent()V
    .locals 0

    return-void
.end method
