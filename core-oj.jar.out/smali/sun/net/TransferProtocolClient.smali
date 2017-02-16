.class public Lsun/net/TransferProtocolClient;
.super Lsun/net/NetworkClient;
.source "TransferProtocolClient.java"


# static fields
.field static final debug:Z


# instance fields
.field protected lastReplyCode:I

.field protected serverResponse:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 140
    invoke-direct {p0}, Lsun/net/NetworkClient;-><init>()V

    .line 47
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lsun/net/TransferProtocolClient;->serverResponse:Ljava/util/Vector;

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-direct {p0, p1, p2}, Lsun/net/NetworkClient;-><init>(Ljava/lang/String;I)V

    .line 47
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lsun/net/TransferProtocolClient;->serverResponse:Ljava/util/Vector;

    .line 135
    return-void
.end method


# virtual methods
.method public getResponseString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lsun/net/TransferProtocolClient;->serverResponse:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getResponseStrings()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lsun/net/TransferProtocolClient;->serverResponse:Ljava/util/Vector;

    return-object v0
.end method

.method public readServerResponse()I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v13, 0xa

    const/4 v12, 0x4

    const/4 v11, -0x1

    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 58
    new-instance v5, Ljava/lang/StringBuffer;

    const/16 v7, 0x20

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 60
    .local v5, "replyBuf":Ljava/lang/StringBuffer;
    const/4 v2, -0x1

    .line 64
    .local v2, "continuingCode":I
    iget-object v7, p0, Lsun/net/TransferProtocolClient;->serverResponse:Ljava/util/Vector;

    invoke-virtual {v7, v9}, Ljava/util/Vector;->setSize(I)V

    .line 66
    :cond_0
    :goto_0
    iget-object v7, p0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, "c":I
    if-eq v0, v11, :cond_2

    .line 67
    const/16 v7, 0xd

    if-ne v0, v7, :cond_1

    .line 68
    iget-object v7, p0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v0

    if-eq v0, v13, :cond_1

    .line 69
    const/16 v7, 0xd

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 71
    :cond_1
    int-to-char v7, v0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 72
    if-ne v0, v13, :cond_0

    .line 75
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 76
    .local v6, "response":Ljava/lang/String;
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 81
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_5

    .line 82
    const/4 v1, -0x1

    .line 94
    .local v1, "code":I
    :goto_1
    iget-object v7, p0, Lsun/net/TransferProtocolClient;->serverResponse:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 95
    if-eq v2, v11, :cond_6

    .line 97
    if-ne v1, v2, :cond_0

    .line 98
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v12, :cond_3

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2d

    if-eq v7, v8, :cond_0

    .line 102
    :cond_3
    const/4 v2, -0x1

    .line 113
    :cond_4
    iput v1, p0, Lsun/net/TransferProtocolClient;->lastReplyCode:I

    return v1

    .line 85
    .end local v1    # "code":I
    :cond_5
    const/4 v7, 0x0

    const/4 v8, 0x3

    :try_start_0
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .restart local v1    # "code":I
    goto :goto_1

    .line 86
    .end local v1    # "code":I
    :catch_0
    move-exception v3

    .line 87
    .local v3, "e":Ljava/lang/NumberFormatException;
    const/4 v1, -0x1

    .restart local v1    # "code":I
    goto :goto_1

    .line 105
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v12, :cond_4

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2d

    if-ne v7, v8, :cond_4

    .line 106
    move v2, v1

    .line 107
    goto :goto_0

    .line 88
    .end local v1    # "code":I
    :catch_1
    move-exception v4

    .local v4, "e":Ljava/lang/StringIndexOutOfBoundsException;
    goto :goto_0
.end method

.method public sendServer(Ljava/lang/String;)V
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 118
    iget-object v0, p0, Lsun/net/NetworkClient;->serverOutput:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 117
    return-void
.end method
