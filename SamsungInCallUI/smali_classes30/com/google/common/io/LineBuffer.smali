.class abstract Lcom/google/common/io/LineBuffer;
.super Ljava/lang/Object;
.source "LineBuffer.java"


# instance fields
.field private line:Ljava/lang/StringBuilder;

.field private sawReturn:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/common/io/LineBuffer;->line:Ljava/lang/StringBuilder;

    return-void
.end method

.method private finishLine(Z)Z
    .locals 2
    .param p1, "sawNewline"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/common/io/LineBuffer;->line:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/common/io/LineBuffer;->sawReturn:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const-string v0, "\r\n"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/common/io/LineBuffer;->handleLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/common/io/LineBuffer;->line:Ljava/lang/StringBuilder;

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/io/LineBuffer;->sawReturn:Z

    .line 93
    return p1

    .line 88
    :cond_0
    const-string v0, "\r"

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "\n"

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method protected add([CII)V
    .locals 8
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xa

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 51
    move v1, p2

    .line 52
    .local v1, "pos":I
    iget-boolean v3, p0, Lcom/google/common/io/LineBuffer;->sawReturn:Z

    if-eqz v3, :cond_0

    if-lez p3, :cond_0

    .line 54
    aget-char v3, p1, v1

    if-ne v3, v7, :cond_1

    move v3, v4

    :goto_0
    invoke-direct {p0, v3}, Lcom/google/common/io/LineBuffer;->finishLine(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    add-int/lit8 v1, v1, 0x1

    .line 59
    :cond_0
    move v2, v1

    .line 60
    .local v2, "start":I
    add-int v0, p2, p3

    .local v0, "end":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 61
    aget-char v3, p1, v1

    packed-switch v3, :pswitch_data_0

    .line 60
    :goto_2
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "end":I
    .end local v2    # "start":I
    :cond_1
    move v3, v5

    .line 54
    goto :goto_0

    .line 63
    .restart local v0    # "end":I
    .restart local v2    # "start":I
    :pswitch_1
    iget-object v3, p0, Lcom/google/common/io/LineBuffer;->line:Ljava/lang/StringBuilder;

    sub-int v6, v1, v2

    invoke-virtual {v3, p1, v2, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 64
    iput-boolean v4, p0, Lcom/google/common/io/LineBuffer;->sawReturn:Z

    .line 65
    add-int/lit8 v3, v1, 0x1

    if-ge v3, v0, :cond_2

    .line 66
    add-int/lit8 v3, v1, 0x1

    aget-char v3, p1, v3

    if-ne v3, v7, :cond_3

    move v3, v4

    :goto_3
    invoke-direct {p0, v3}, Lcom/google/common/io/LineBuffer;->finishLine(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 67
    add-int/lit8 v1, v1, 0x1

    .line 70
    :cond_2
    add-int/lit8 v2, v1, 0x1

    .line 71
    goto :goto_2

    :cond_3
    move v3, v5

    .line 66
    goto :goto_3

    .line 74
    :pswitch_2
    iget-object v3, p0, Lcom/google/common/io/LineBuffer;->line:Ljava/lang/StringBuilder;

    sub-int v6, v1, v2

    invoke-virtual {v3, p1, v2, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 75
    invoke-direct {p0, v4}, Lcom/google/common/io/LineBuffer;->finishLine(Z)Z

    .line 76
    add-int/lit8 v2, v1, 0x1

    .line 77
    goto :goto_2

    .line 83
    :cond_4
    iget-object v3, p0, Lcom/google/common/io/LineBuffer;->line:Ljava/lang/StringBuilder;

    add-int v4, p2, p3

    sub-int/2addr v4, v2

    invoke-virtual {v3, p1, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 84
    return-void

    .line 61
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected finish()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/google/common/io/LineBuffer;->sawReturn:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/io/LineBuffer;->line:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 105
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/io/LineBuffer;->finishLine(Z)Z

    .line 107
    :cond_1
    return-void
.end method

.method protected abstract handleLine(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
