.class public final Landroid/nfc/tech/NdefFormatable;
.super Landroid/nfc/tech/BasicTagTechnology;
.source "NdefFormatable.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NFC"


# direct methods
.method public constructor <init>(Landroid/nfc/Tag;)V
    .locals 1
    .param p1, "tag"    # Landroid/nfc/Tag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Landroid/nfc/tech/BasicTagTechnology;-><init>(Landroid/nfc/Tag;I)V

    .line 71
    return-void
.end method

.method public static get(Landroid/nfc/Tag;)Landroid/nfc/tech/NdefFormatable;
    .locals 3
    .param p0, "tag"    # Landroid/nfc/Tag;

    .prologue
    const/4 v2, 0x0

    .line 59
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Landroid/nfc/Tag;->hasTech(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v2

    .line 61
    :cond_0
    :try_start_0
    new-instance v1, Landroid/nfc/tech/NdefFormatable;

    invoke-direct {v1, p0}, Landroid/nfc/tech/NdefFormatable;-><init>(Landroid/nfc/Tag;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 62
    :catch_0
    move-exception v0

    .line 63
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

.method public format(Landroid/nfc/NdefMessage;)V
    .locals 1
    .param p1, "firstMessage"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/nfc/FormatException;
        }
    .end annotation

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/nfc/tech/NdefFormatable;->format(Landroid/nfc/NdefMessage;Z)V

    .line 93
    return-void
.end method

.method format(Landroid/nfc/NdefMessage;Z)V
    .locals 6
    .param p1, "firstMessage"    # Landroid/nfc/NdefMessage;
    .param p2, "makeReadOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/nfc/FormatException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-virtual {p0}, Landroid/nfc/tech/BasicTagTechnology;->checkConnected()V

    .line 124
    :try_start_0
    iget-object v4, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v4}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v2

    .line 125
    .local v2, "serviceHandle":I
    iget-object v4, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v4}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v3

    .line 126
    .local v3, "tagService":Landroid/nfc/INfcTag;
    sget-object v4, Landroid/nfc/tech/MifareClassic;->KEY_DEFAULT:[B

    invoke-interface {v3, v2, v4}, Landroid/nfc/INfcTag;->formatNdef(I[B)I

    move-result v1

    .line 127
    .local v1, "errorCode":I
    sparse-switch v1, :sswitch_data_0

    .line 136
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v1    # "errorCode":I
    .end local v2    # "serviceHandle":I
    .end local v3    # "tagService":Landroid/nfc/INfcTag;
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "NFC"

    const-string/jumbo v5, "NFC service dead"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :sswitch_0
    return-void

    .line 131
    .restart local v1    # "errorCode":I
    .restart local v2    # "serviceHandle":I
    .restart local v3    # "tagService":Landroid/nfc/INfcTag;
    :sswitch_1
    :try_start_1
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 133
    :sswitch_2
    new-instance v4, Landroid/nfc/FormatException;

    invoke-direct {v4}, Landroid/nfc/FormatException;-><init>()V

    throw v4

    .line 139
    :sswitch_3
    invoke-interface {v3, v2}, Landroid/nfc/INfcTag;->isNdef(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 140
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 145
    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_3

    .line 150
    :cond_2
    if-eqz p1, :cond_4

    .line 151
    invoke-interface {v3, v2, p1}, Landroid/nfc/INfcTag;->ndefWrite(ILandroid/nfc/NdefMessage;)I

    move-result v1

    .line 152
    sparse-switch v1, :sswitch_data_1

    .line 161
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 146
    :cond_3
    return-void

    .line 156
    :sswitch_4
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 158
    :sswitch_5
    new-instance v4, Landroid/nfc/FormatException;

    invoke-direct {v4}, Landroid/nfc/FormatException;-><init>()V

    throw v4

    .line 166
    :cond_4
    :sswitch_6
    if-eqz p2, :cond_0

    .line 167
    invoke-interface {v3, v2}, Landroid/nfc/INfcTag;->ndefMakeReadOnly(I)I

    move-result v1

    .line 168
    sparse-switch v1, :sswitch_data_2

    .line 177
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 172
    :sswitch_7
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 174
    :sswitch_8
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 127
    :sswitch_data_0
    .sparse-switch
        -0x8 -> :sswitch_2
        -0x1 -> :sswitch_1
        0x0 -> :sswitch_3
    .end sparse-switch

    .line 152
    :sswitch_data_1
    .sparse-switch
        -0x8 -> :sswitch_5
        -0x1 -> :sswitch_4
        0x0 -> :sswitch_6
    .end sparse-switch

    .line 168
    :sswitch_data_2
    .sparse-switch
        -0x8 -> :sswitch_8
        -0x1 -> :sswitch_7
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method public formatReadOnly(Landroid/nfc/NdefMessage;)V
    .locals 1
    .param p1, "firstMessage"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/nfc/FormatException;
        }
    .end annotation

    .prologue
    .line 116
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/nfc/tech/NdefFormatable;->format(Landroid/nfc/NdefMessage;Z)V

    .line 115
    return-void
.end method

.method public bridge synthetic getTag()Landroid/nfc/Tag;
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->getTag()Landroid/nfc/Tag;

    move-result-object v0

    return-object v0
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
