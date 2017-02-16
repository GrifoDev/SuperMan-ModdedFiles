.class public final Landroid/nfc/tech/NfcA;
.super Landroid/nfc/tech/BasicTagTechnology;
.source "NfcA.java"


# static fields
.field public static final EXTRA_ATQA:Ljava/lang/String; = "atqa"

.field public static final EXTRA_SAK:Ljava/lang/String; = "sak"

.field private static final TAG:Ljava/lang/String; = "NFC"


# instance fields
.field private mAtqa:[B

.field private mSak:S


# direct methods
.method public constructor <init>(Landroid/nfc/Tag;)V
    .locals 4
    .param p1, "tag"    # Landroid/nfc/Tag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    .line 71
    invoke-direct {p0, p1, v1}, Landroid/nfc/tech/BasicTagTechnology;-><init>(Landroid/nfc/Tag;I)V

    .line 75
    invoke-virtual {p1, v1}, Landroid/nfc/Tag;->getTechExtras(I)Landroid/os/Bundle;

    move-result-object v0

    .line 76
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "sak"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, p0, Landroid/nfc/tech/NfcA;->mSak:S

    .line 77
    const-string/jumbo v1, "atqa"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Landroid/nfc/tech/NfcA;->mAtqa:[B

    .line 79
    const-string/jumbo v1, "NXP_PN547C2"

    const-string/jumbo v2, "S3FWRN5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    const-string/jumbo v1, "NXP_PN548C2"

    const-string/jumbo v2, "S3FWRN5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 79
    if-eqz v1, :cond_1

    .line 82
    :cond_0
    invoke-virtual {p1, v3}, Landroid/nfc/Tag;->hasTech(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    invoke-virtual {p1, v3}, Landroid/nfc/Tag;->getTechExtras(I)Landroid/os/Bundle;

    move-result-object v0

    .line 85
    iget-short v1, p0, Landroid/nfc/tech/NfcA;->mSak:S

    const-string/jumbo v2, "sak"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v2

    or-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, p0, Landroid/nfc/tech/NfcA;->mSak:S

    .line 86
    const-string/jumbo v1, "atqa"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Landroid/nfc/tech/NfcA;->mAtqa:[B

    .line 70
    :cond_1
    return-void
.end method

.method public static get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcA;
    .locals 3
    .param p0, "tag"    # Landroid/nfc/Tag;

    .prologue
    const/4 v2, 0x0

    .line 61
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/nfc/Tag;->hasTech(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v2

    .line 63
    :cond_0
    :try_start_0
    new-instance v1, Landroid/nfc/tech/NfcA;

    invoke-direct {v1, p0}, Landroid/nfc/tech/NfcA;-><init>(Landroid/nfc/Tag;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Landroid/os/RemoteException;
    return-object v2
.end method


# virtual methods
.method public bridge synthetic close()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->close()V

    return-void
.end method

.method public bridge synthetic connect()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->connect()V

    return-void
.end method

.method public getAtqa()[B
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Landroid/nfc/tech/NfcA;->mAtqa:[B

    return-object v0
.end method

.method public getMaxTransceiveLength()I
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Landroid/nfc/tech/BasicTagTechnology;->getMaxTransceiveLengthInternal()I

    move-result v0

    return v0
.end method

.method public getSak()S
    .locals 1

    .prologue
    .line 110
    iget-short v0, p0, Landroid/nfc/tech/NfcA;->mSak:S

    return v0
.end method

.method public bridge synthetic getTag()Landroid/nfc/Tag;
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->getTag()Landroid/nfc/Tag;

    move-result-object v0

    return-object v0
.end method

.method public getTimeout()I
    .locals 3

    .prologue
    .line 182
    :try_start_0
    iget-object v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v1}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/nfc/INfcTag;->getTimeout(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "NFC"

    const-string/jumbo v2, "NFC service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    const/4 v1, 0x0

    return v1
.end method

.method public bridge synthetic isConnected()Z
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->isConnected()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic reconnect()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->reconnect()V

    return-void
.end method

.method public setTimeout(I)V
    .locals 4
    .param p1, "timeout"    # I

    .prologue
    .line 164
    :try_start_0
    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v2}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcTag;->setTimeout(II)I

    move-result v1

    .line 165
    .local v1, "err":I
    if-eqz v1, :cond_0

    .line 166
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "The supplied timeout is not valid"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .end local v1    # "err":I
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "NFC"

    const-string/jumbo v3, "NFC service dead"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public transceive([B)[B
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/nfc/tech/BasicTagTechnology;->transceive([BZ)[B

    move-result-object v0

    return-object v0
.end method
