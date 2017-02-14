.class public Ljavax/crypto/CipherOutputStream;
.super Ljava/io/FilterOutputStream;
.source "CipherOutputStream.java"


# instance fields
.field private cipher:Ljavax/crypto/Cipher;

.field private ibuffer:[B

.field private obuffer:[B

.field private output:Ljava/io/OutputStream;


# direct methods
.method protected constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/crypto/CipherOutputStream;->ibuffer:[B

    iput-object p1, p0, Ljavax/crypto/CipherOutputStream;->output:Ljava/io/OutputStream;

    new-instance v0, Ljavax/crypto/NullCipher;

    invoke-direct {v0}, Ljavax/crypto/NullCipher;-><init>()V

    iput-object v0, p0, Ljavax/crypto/CipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/crypto/CipherOutputStream;->ibuffer:[B

    iput-object p1, p0, Ljavax/crypto/CipherOutputStream;->output:Ljava/io/OutputStream;

    iput-object p2, p0, Ljavax/crypto/CipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    :try_start_0
    iget-object v3, p0, Ljavax/crypto/CipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v3}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v3

    iput-object v3, p0, Ljavax/crypto/CipherOutputStream;->obuffer:[B
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljavax/crypto/CipherOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    iget-object v3, p0, Ljavax/crypto/CipherOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    return-void

    :catch_0
    move-exception v0

    iput-object v4, p0, Ljavax/crypto/CipherOutputStream;->obuffer:[B

    goto :goto_0

    :catch_1
    move-exception v1

    iput-object v4, p0, Ljavax/crypto/CipherOutputStream;->obuffer:[B

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method public flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Ljavax/crypto/CipherOutputStream;->obuffer:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/crypto/CipherOutputStream;->output:Ljava/io/OutputStream;

    iget-object v1, p0, Ljavax/crypto/CipherOutputStream;->obuffer:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iput-object v2, p0, Ljavax/crypto/CipherOutputStream;->obuffer:[B

    :cond_0
    iget-object v0, p0, Ljavax/crypto/CipherOutputStream;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Ljavax/crypto/CipherOutputStream;->ibuffer:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v3

    iget-object v0, p0, Ljavax/crypto/CipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    iget-object v1, p0, Ljavax/crypto/CipherOutputStream;->ibuffer:[B

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v0

    iput-object v0, p0, Ljavax/crypto/CipherOutputStream;->obuffer:[B

    iget-object v0, p0, Ljavax/crypto/CipherOutputStream;->obuffer:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/crypto/CipherOutputStream;->output:Ljava/io/OutputStream;

    iget-object v1, p0, Ljavax/crypto/CipherOutputStream;->obuffer:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iput-object v4, p0, Ljavax/crypto/CipherOutputStream;->obuffer:[B

    :cond_0
    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljavax/crypto/CipherOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Ljavax/crypto/CipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v0

    iput-object v0, p0, Ljavax/crypto/CipherOutputStream;->obuffer:[B

    iget-object v0, p0, Ljavax/crypto/CipherOutputStream;->obuffer:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/crypto/CipherOutputStream;->output:Ljava/io/OutputStream;

    iget-object v1, p0, Ljavax/crypto/CipherOutputStream;->obuffer:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iput-object v2, p0, Ljavax/crypto/CipherOutputStream;->obuffer:[B

    :cond_0
    return-void
.end method
