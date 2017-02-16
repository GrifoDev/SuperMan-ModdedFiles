.class Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "HttpURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/www/protocol/http/HttpURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StreamingOutputStream"
.end annotation


# instance fields
.field closed:Z

.field error:Z

.field errorExcp:Ljava/io/IOException;

.field expected:J

.field final synthetic this$0:Lsun/net/www/protocol/http/HttpURLConnection;

.field written:J


# direct methods
.method constructor <init>(Lsun/net/www/protocol/http/HttpURLConnection;Ljava/io/OutputStream;J)V
    .locals 3
    .param p1, "this$0"    # Lsun/net/www/protocol/http/HttpURLConnection;
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "expectedLength"    # J

    .prologue
    const/4 v2, 0x0

    .line 3149
    iput-object p1, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->this$0:Lsun/net/www/protocol/http/HttpURLConnection;

    .line 3150
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3151
    iput-wide p3, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->expected:J

    .line 3152
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->written:J

    .line 3153
    iput-boolean v2, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->closed:Z

    .line 3154
    iput-boolean v2, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->error:Z

    .line 3149
    return-void
.end method


# virtual methods
.method checkError()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3184
    iget-boolean v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 3185
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3187
    :cond_0
    iget-boolean v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->error:Z

    if-eqz v0, :cond_1

    .line 3188
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->errorExcp:Ljava/io/IOException;

    throw v0

    .line 3190
    :cond_1
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    check-cast v0, Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->checkError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3191
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Error writing request body to server"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3183
    :cond_2
    return-void
.end method

.method public close()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 3205
    iget-boolean v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->closed:Z

    if-eqz v1, :cond_0

    .line 3206
    return-void

    .line 3208
    :cond_0
    iput-boolean v6, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->closed:Z

    .line 3209
    iget-wide v2, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->expected:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 3211
    iget-wide v2, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->written:J

    iget-wide v4, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->expected:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 3212
    iput-boolean v6, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->error:Z

    .line 3213
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "insufficient data written"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->errorExcp:Ljava/io/IOException;

    .line 3214
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 3215
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->errorExcp:Ljava/io/IOException;

    throw v1

    .line 3217
    :cond_1
    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V

    .line 3204
    :goto_0
    return-void

    .line 3220
    :cond_2
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 3222
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->this$0:Lsun/net/www/protocol/http/HttpURLConnection;

    iget-object v1, v1, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v1}, Lsun/net/www/http/HttpClient;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 3223
    .local v0, "o":Ljava/io/OutputStream;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 3224
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 3225
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    goto :goto_0
.end method

.method public write(I)V
    .locals 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3159
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->checkError()V

    .line 3160
    iget-wide v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->written:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->written:J

    .line 3161
    iget-wide v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->expected:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->written:J

    iget-wide v2, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->expected:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 3162
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "too many bytes written"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3164
    :cond_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 3158
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3169
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->write([BII)V

    .line 3168
    return-void
.end method

.method public write([BII)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3174
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->checkError()V

    .line 3175
    iget-wide v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->written:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->written:J

    .line 3176
    iget-wide v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->expected:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->written:J

    iget-wide v2, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->expected:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 3177
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 3178
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "too many bytes written"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3180
    :cond_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 3173
    return-void
.end method

.method writtenOK()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3200
    iget-boolean v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->closed:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->error:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
