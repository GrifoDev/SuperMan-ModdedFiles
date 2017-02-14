.class public Lcom/samsung/accessory/manager/authentication/msg/Message;
.super Ljava/lang/Object;
.source "Message.java"


# instance fields
.field private final INF_SIZE:I

.field private final RES_ATQS:I

.field private apdu:[B

.field private data:[B

.field private inf:[B


# direct methods
.method public constructor <init>(BBBBB)V
    .locals 2

    const/4 v1, 0x5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->INF_SIZE:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->RES_ATQS:I

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->apdu:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->inf:[B

    invoke-direct/range {p0 .. p5}, Lcom/samsung/accessory/manager/authentication/msg/Message;->setInf(BBBBB)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->data:[B

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/msg/Message;->setApdu()V

    return-void
.end method

.method public constructor <init>(BBBBB[B)V
    .locals 2

    const/4 v1, 0x5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->INF_SIZE:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->RES_ATQS:I

    array-length v0, p6

    add-int/lit8 v0, v0, 0x5

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->apdu:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->inf:[B

    invoke-direct/range {p0 .. p5}, Lcom/samsung/accessory/manager/authentication/msg/Message;->setInf(BBBBB)V

    invoke-virtual {p6}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->data:[B

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/msg/Message;->setApdu()V

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 3

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->INF_SIZE:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->RES_ATQS:I

    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->apdu:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->inf:[B

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->apdu:[B

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->apdu:[B

    array-length v1, v1

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/msg/Message;->parseMessage(I)V

    return-void
.end method

.method private parseMessage(I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->apdu:[B

    array-length v0, v1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    add-int/lit8 v1, v0, -0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->data:[B

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->apdu:[B

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->data:[B

    add-int/lit8 v3, v0, -0x2

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    :goto_0
    return-void

    :cond_0
    add-int/lit8 v1, v0, -0x3

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->data:[B

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->apdu:[B

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->data:[B

    add-int/lit8 v3, v0, -0x3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0
.end method

.method private setApdu()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->inf:[B

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->apdu:[B

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->inf:[B

    array-length v2, v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->data:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->data:[B

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->apdu:[B

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->inf:[B

    array-length v2, v2

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->data:[B

    array-length v3, v3

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_0
    return-void
.end method

.method private setInf(BBBBB)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->inf:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->inf:[B

    const/4 v1, 0x1

    aput-byte p2, v0, v1

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->inf:[B

    const/4 v1, 0x2

    aput-byte p3, v0, v1

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->inf:[B

    const/4 v1, 0x3

    aput-byte p4, v0, v1

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->inf:[B

    const/4 v1, 0x4

    aput-byte p5, v0, v1

    return-void
.end method


# virtual methods
.method public getApdu()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->apdu:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getData()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->data:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getInf(I)B
    .locals 1

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->inf:[B

    aget-byte v0, v0, p1

    return v0
.end method
