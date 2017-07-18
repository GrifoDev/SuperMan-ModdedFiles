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

    invoke-direct {p0}, Lsun/net/NetworkClient;-><init>()V

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lsun/net/TransferProtocolClient;->serverResponse:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lsun/net/NetworkClient;-><init>(Ljava/lang/String;I)V

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lsun/net/TransferProtocolClient;->serverResponse:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public getResponseString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lsun/net/TransferProtocolClient;->serverResponse:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getResponseStrings()Ljava/util/Vector;
    .locals 1

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

    const/16 v13, 0xa

    const/4 v12, 0x4

    const/4 v11, -0x1

    const/4 v10, 0x3

    const/4 v9, 0x0

    new-instance v5, Ljava/lang/StringBuffer;

    const/16 v7, 0x20

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, -0x1

    iget-object v7, p0, Lsun/net/TransferProtocolClient;->serverResponse:Ljava/util/Vector;

    invoke-virtual {v7, v9}, Ljava/util/Vector;->setSize(I)V

    :cond_0
    :goto_0
    iget-object v7, p0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v0

    if-eq v0, v11, :cond_2

    const/16 v7, 0xd

    if-ne v0, v7, :cond_1

    iget-object v7, p0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v0

    if-eq v0, v13, :cond_1

    const/16 v7, 0xd

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    int-to-char v7, v0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-ne v0, v13, :cond_0

    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_5

    const/4 v1, -0x1

    :goto_1
    iget-object v7, p0, Lsun/net/TransferProtocolClient;->serverResponse:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    if-eq v2, v11, :cond_6

    if-ne v1, v2, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v12, :cond_3

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2d

    if-eq v7, v8, :cond_0

    :cond_3
    const/4 v2, -0x1

    :cond_4
    iput v1, p0, Lsun/net/TransferProtocolClient;->lastReplyCode:I

    return v1

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

    goto :goto_1

    :catch_0
    move-exception v3

    const/4 v1, -0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v12, :cond_4

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2d

    if-ne v7, v8, :cond_4

    move v2, v1

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public sendServer(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lsun/net/NetworkClient;->serverOutput:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method
