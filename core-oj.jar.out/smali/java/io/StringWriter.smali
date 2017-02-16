.class public Ljava/io/StringWriter;
.super Ljava/io/Writer;
.source "StringWriter.java"


# instance fields
.field private buf:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljava/io/StringWriter;->buf:Ljava/lang/StringBuffer;

    .line 51
    iget-object v0, p0, Ljava/io/StringWriter;->buf:Ljava/lang/StringBuffer;

    iput-object v0, p0, Ljava/io/StringWriter;->lock:Ljava/lang/Object;

    .line 49
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialSize"    # I

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 66
    if-gez p1, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Negative buffer size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Ljava/io/StringWriter;->buf:Ljava/lang/StringBuffer;

    .line 70
    iget-object v0, p0, Ljava/io/StringWriter;->buf:Ljava/lang/StringBuffer;

    iput-object v0, p0, Ljava/io/StringWriter;->lock:Ljava/lang/Object;

    .line 65
    return-void
.end method


# virtual methods
.method public append(C)Ljava/io/StringWriter;
    .locals 0
    .param p1, "c"    # C

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Ljava/io/StringWriter;->write(I)V

    .line 203
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;

    .prologue
    .line 140
    if-nez p1, :cond_0

    .line 141
    const-string/jumbo v0, "null"

    invoke-virtual {p0, v0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 144
    :goto_0
    return-object p0

    .line 143
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/StringWriter;
    .locals 2
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 180
    if-nez p1, :cond_0

    const-string/jumbo v0, "null"

    .line 181
    .local v0, "cs":Ljava/lang/CharSequence;
    :goto_0
    invoke-interface {v0, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 182
    return-object p0

    .end local v0    # "cs":Ljava/lang/CharSequence;
    :cond_0
    move-object v0, p1

    .line 180
    goto :goto_0
.end method

.method public bridge synthetic append(C)Ljava/io/Writer;
    .locals 1
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-virtual {p0, p1}, Ljava/io/StringWriter;->append(C)Ljava/io/StringWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
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
    .line 179
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/StringWriter;

    move-result-object v0

    return-object v0
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
    .line 201
    invoke-virtual {p0, p1}, Ljava/io/StringWriter;->append(C)Ljava/io/StringWriter;

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
    .line 139
    invoke-virtual {p0, p1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

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
    .line 179
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/StringWriter;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 225
    return-void
.end method

.method public getBuffer()Ljava/lang/StringBuffer;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Ljava/io/StringWriter;->buf:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Ljava/io/StringWriter;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 2
    .param p1, "c"    # I

    .prologue
    .line 77
    iget-object v0, p0, Ljava/io/StringWriter;->buf:Ljava/lang/StringBuffer;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 76
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 101
    iget-object v0, p0, Ljava/io/StringWriter;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 112
    iget-object v0, p0, Ljava/io/StringWriter;->buf:Ljava/lang/StringBuffer;

    add-int v1, p2, p3

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    return-void
.end method

.method public write([CII)V
    .locals 2
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 88
    if-ltz p2, :cond_0

    array-length v0, p1

    if-le p2, v0, :cond_1

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 88
    :cond_1
    if-ltz p3, :cond_0

    .line 89
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_0

    add-int v0, p2, p3

    if-ltz v0, :cond_0

    .line 91
    if-nez p3, :cond_2

    .line 92
    return-void

    .line 94
    :cond_2
    iget-object v0, p0, Ljava/io/StringWriter;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 87
    return-void
.end method
