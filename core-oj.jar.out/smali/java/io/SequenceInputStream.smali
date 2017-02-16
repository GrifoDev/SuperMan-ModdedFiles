.class public Ljava/io/SequenceInputStream;
.super Ljava/io/InputStream;
.source "SequenceInputStream.java"


# instance fields
.field e:Ljava/util/Enumeration;

.field in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/InputStream;)V
    .locals 4
    .param p1, "s1"    # Ljava/io/InputStream;
    .param p2, "s2"    # Ljava/io/InputStream;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 88
    new-instance v1, Ljava/util/Vector;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    .line 90
    .local v1, "v":Ljava/util/Vector;
    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 91
    invoke-virtual {v1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 92
    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    iput-object v2, p0, Ljava/io/SequenceInputStream;->e:Ljava/util/Enumeration;

    .line 94
    :try_start_0
    invoke-virtual {p0}, Ljava/io/SequenceInputStream;->nextStream()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 97
    .local v0, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/lang/Error;

    const-string/jumbo v3, "panic"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(Ljava/util/Enumeration;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration",
            "<+",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/io/InputStream;>;"
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 67
    iput-object p1, p0, Ljava/io/SequenceInputStream;->e:Ljava/util/Enumeration;

    .line 69
    :try_start_0
    invoke-virtual {p0}, Ljava/io/SequenceInputStream;->nextStream()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 72
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/Error;

    const-string/jumbo v2, "panic"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x0

    return v0

    .line 141
    :cond_0
    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    :cond_0
    invoke-virtual {p0}, Ljava/io/SequenceInputStream;->nextStream()V

    .line 233
    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 230
    return-void
.end method

.method final nextStream()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 105
    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 109
    :cond_0
    iget-object v0, p0, Ljava/io/SequenceInputStream;->e:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Ljava/io/SequenceInputStream;->e:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    iput-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    .line 111
    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_2

    .line 112
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 114
    :cond_1
    iput-object v1, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    .line 104
    :cond_2
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 163
    iget-object v1, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    if-nez v1, :cond_0

    .line 164
    return v2

    .line 166
    :cond_0
    iget-object v1, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 167
    .local v0, "c":I
    if-ne v0, v2, :cond_1

    .line 168
    invoke-virtual {p0}, Ljava/io/SequenceInputStream;->nextStream()V

    .line 169
    invoke-virtual {p0}, Ljava/io/SequenceInputStream;->read()I

    move-result v1

    return v1

    .line 171
    :cond_1
    return v0
.end method

.method public read([BII)I
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
    const/4 v2, 0x0

    .line 198
    iget-object v1, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    if-nez v1, :cond_0

    .line 199
    const/4 v1, -0x1

    return v1

    .line 200
    :cond_0
    if-nez p1, :cond_1

    .line 201
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 202
    :cond_1
    if-ltz p2, :cond_2

    if-gez p3, :cond_3

    .line 203
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 202
    :cond_3
    array-length v1, p1

    sub-int/2addr v1, p2

    if-gt p3, v1, :cond_2

    .line 204
    if-nez p3, :cond_4

    .line 205
    return v2

    .line 208
    :cond_4
    iget-object v1, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 209
    .local v0, "n":I
    if-gtz v0, :cond_5

    .line 210
    invoke-virtual {p0}, Ljava/io/SequenceInputStream;->nextStream()V

    .line 211
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/SequenceInputStream;->read([BII)I

    move-result v1

    return v1

    .line 213
    :cond_5
    return v0
.end method
