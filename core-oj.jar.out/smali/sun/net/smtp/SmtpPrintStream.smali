.class Lsun/net/smtp/SmtpPrintStream;
.super Ljava/io/PrintStream;
.source "SmtpClient.java"


# instance fields
.field private lastc:I

.field private target:Lsun/net/smtp/SmtpClient;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;Lsun/net/smtp/SmtpClient;)V
    .locals 2
    .param p1, "fos"    # Ljava/io/OutputStream;
    .param p2, "cl"    # Lsun/net/smtp/SmtpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-virtual {p2}, Lsun/net/smtp/SmtpClient;->getEncoding()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    .line 215
    const/16 v0, 0xa

    iput v0, p0, Lsun/net/smtp/SmtpPrintStream;->lastc:I

    .line 219
    iput-object p2, p0, Lsun/net/smtp/SmtpPrintStream;->target:Lsun/net/smtp/SmtpClient;

    .line 217
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    const/16 v2, 0xa

    .line 223
    iget-object v1, p0, Lsun/net/smtp/SmtpPrintStream;->target:Lsun/net/smtp/SmtpClient;

    if-nez v1, :cond_0

    .line 224
    return-void

    .line 225
    :cond_0
    iget v1, p0, Lsun/net/smtp/SmtpPrintStream;->lastc:I

    if-eq v1, v2, :cond_1

    .line 226
    invoke-virtual {p0, v2}, Lsun/net/smtp/SmtpPrintStream;->write(I)V

    .line 229
    :cond_1
    :try_start_0
    iget-object v1, p0, Lsun/net/smtp/SmtpPrintStream;->target:Lsun/net/smtp/SmtpClient;

    const-string/jumbo v2, ".\r\n"

    const/16 v3, 0xfa

    invoke-virtual {v1, v2, v3}, Lsun/net/smtp/SmtpClient;->issueCommand(Ljava/lang/String;I)V

    .line 230
    iget-object v1, p0, Lsun/net/smtp/SmtpPrintStream;->target:Lsun/net/smtp/SmtpClient;

    const/4 v2, 0x0

    iput-object v2, v1, Lsun/net/smtp/SmtpClient;->message:Lsun/net/smtp/SmtpPrintStream;

    .line 231
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 232
    const/4 v1, 0x0

    iput-object v1, p0, Lsun/net/smtp/SmtpPrintStream;->target:Lsun/net/smtp/SmtpClient;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public print(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 276
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 277
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 278
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lsun/net/smtp/SmtpPrintStream;->write(I)V

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 275
    :cond_0
    return-void
.end method

.method public write(I)V
    .locals 5
    .param p1, "b"    # I

    .prologue
    const/16 v2, 0x2e

    const/16 v4, 0xd

    const/16 v3, 0xa

    .line 240
    :try_start_0
    iget v1, p0, Lsun/net/smtp/SmtpPrintStream;->lastc:I

    if-ne v1, v3, :cond_0

    if-ne p1, v2, :cond_0

    .line 241
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 245
    :cond_0
    if-ne p1, v3, :cond_1

    iget v1, p0, Lsun/net/smtp/SmtpPrintStream;->lastc:I

    if-eq v1, v4, :cond_1

    .line 246
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 248
    :cond_1
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V

    .line 249
    iput p1, p0, Lsun/net/smtp/SmtpPrintStream;->lastc:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public write([BII)V
    .locals 9
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    const/16 v8, 0x2e

    const/16 v7, 0xd

    const/16 v6, 0xa

    .line 256
    :try_start_0
    iget v2, p0, Lsun/net/smtp/SmtpPrintStream;->lastc:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .local v2, "lc":I
    :goto_0
    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_2

    .line 258
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "off":I
    .local v3, "off":I
    :try_start_1
    aget-byte v0, p1, p2

    .line 261
    .local v0, "c":I
    if-ne v2, v6, :cond_0

    if-ne v0, v8, :cond_0

    .line 262
    iget-object v4, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    .line 265
    :cond_0
    if-ne v0, v6, :cond_1

    if-eq v2, v7, :cond_1

    .line 266
    iget-object v4, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    .line 268
    :cond_1
    iget-object v4, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 269
    move v2, v0

    move p2, v3

    .end local v3    # "off":I
    .restart local p2    # "off":I
    goto :goto_0

    .line 271
    .end local v0    # "c":I
    :cond_2
    :try_start_2
    iput v2, p0, Lsun/net/smtp/SmtpPrintStream;->lastc:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 254
    .end local v2    # "lc":I
    :goto_1
    return-void

    .line 272
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_1

    .end local v1    # "e":Ljava/io/IOException;
    .end local p2    # "off":I
    .restart local v2    # "lc":I
    .restart local v3    # "off":I
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move p2, v3

    .end local v3    # "off":I
    .restart local p2    # "off":I
    goto :goto_1
.end method
