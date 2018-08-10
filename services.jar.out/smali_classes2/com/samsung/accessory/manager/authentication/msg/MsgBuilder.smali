.class public Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;
.super Ljava/lang/Object;
.source "MsgBuilder.java"


# instance fields
.field private mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

.field private mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

.field private randNum:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->randNum:[B

    return-void
.end method


# virtual methods
.method public getDataVerification()[B
    .locals 7

    const/4 v1, 0x0

    new-instance v0, Lcom/samsung/accessory/manager/authentication/msg/Message;

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->randNum:[B

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    const/16 v2, 0x76

    const/16 v5, 0x10

    move v3, v1

    move v4, v1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(BBBBB[B)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getApdu()[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getKeyChange()[B
    .locals 7

    const/16 v2, 0x42

    const/4 v1, 0x0

    const/4 v0, 0x3

    new-array v6, v0, [B

    aput-byte v1, v6, v1

    const/4 v0, 0x1

    aput-byte v1, v6, v0

    const/4 v0, 0x2

    aput-byte v2, v6, v0

    new-instance v0, Lcom/samsung/accessory/manager/authentication/msg/Message;

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(BBBBB)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getApdu()[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getRandNum()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->randNum:[B

    return-object v0
.end method

.method public getReadCoverId()[B
    .locals 6

    new-instance v0, Lcom/samsung/accessory/manager/authentication/msg/Message;

    const/16 v1, 0x54

    const/16 v2, 0x22

    const/16 v3, 0x1f

    const/4 v4, 0x0

    const/16 v5, 0x12

    invoke-direct/range {v0 .. v5}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(BBBBB)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getApdu()[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getReqExtra()[B
    .locals 6

    const/4 v4, 0x0

    new-instance v0, Lcom/samsung/accessory/manager/authentication/msg/Message;

    const/16 v1, 0x54

    const/16 v2, 0x22

    const/16 v3, 0x11

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(BBBBB)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getApdu()[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getReqFirmwareVersion()[B
    .locals 6

    const/4 v1, 0x0

    new-instance v0, Lcom/samsung/accessory/manager/authentication/msg/Message;

    const/16 v2, 0x10

    const/16 v5, 0x8

    move v3, v1

    move v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(BBBBB)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getApdu()[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getReqPubKey()[B
    .locals 6

    const/4 v1, 0x0

    new-instance v0, Lcom/samsung/accessory/manager/authentication/msg/Message;

    const/16 v2, 0x16

    const/16 v5, 0x52

    move v3, v1

    move v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(BBBBB)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getApdu()[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getReqUnified3rd()[B
    .locals 6

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/accessory/manager/authentication/msg/Message;

    const/16 v1, 0x54

    const/16 v2, 0x24

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(BBBBB)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getApdu()[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getReqUrl()[B
    .locals 6

    const/4 v4, 0x0

    new-instance v0, Lcom/samsung/accessory/manager/authentication/msg/Message;

    const/16 v1, 0x54

    const/16 v2, 0x22

    const/16 v3, 0x10

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(BBBBB)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getApdu()[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getStopAuthentication()[B
    .locals 6

    const/4 v1, 0x0

    new-instance v0, Lcom/samsung/accessory/manager/authentication/msg/Message;

    const/16 v2, -0x22

    const/16 v3, -0x53

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(BBBBB)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getApdu()[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getWriteCoverId([B)[B
    .locals 7

    new-instance v0, Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    const/16 v1, 0x54

    const/16 v2, 0x20

    const/16 v3, 0x1f

    const/4 v4, 0x0

    const/16 v5, 0x12

    invoke-direct/range {v0 .. v6}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(BBBBB[B)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getApdu()[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public makeRandomNumber()[B
    .locals 2

    const/16 v1, 0x10

    new-array v0, v1, [B

    new-instance v1, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-direct {v1}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;-><init>()V

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->genRandom()[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->randNum:[B

    return-object v0
.end method
