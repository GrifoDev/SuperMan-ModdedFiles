.class public final Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;

# interfaces
.implements Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParamOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;",
        "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;",
        ">;",
        "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParamOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private chatMsg_:Ljava/lang/Object;

.field private msgId_:J

.field private msgTtl_:I

.field private msgType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

.field private secureChatMsg_:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->TEXT:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->msgType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->chatMsg_:Ljava/lang/Object;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->secureChatMsg_:Lcom/google/protobuf/ByteString;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method static synthetic access$4000(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->buildParsed()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4100()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->create()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private static create()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;
    .locals 6

    const/4 v0, 0x1

    new-instance v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;-><init>(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$1;)V

    iget v3, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_4

    :goto_0
    iget-wide v4, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->msgId_:J

    invoke-static {v2, v4, v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;->access$4302(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;J)J

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->msgType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;->access$4402(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->chatMsg_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;->access$4502(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->msgTtl_:I

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;->access$4602(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;I)I

    and-int/lit8 v1, v3, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->secureChatMsg_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;->access$4702(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;->access$4802(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;I)I

    return-object v2

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->clear()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->clear()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;
    .locals 2

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->msgId_:J

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->bitField0_:I

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->TEXT:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->msgType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->chatMsg_:Ljava/lang/Object;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->msgTtl_:I

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->bitField0_:I

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->secureChatMsg_:Lcom/google/protobuf/ByteString;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearChatMsg()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->bitField0_:I

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;->getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;->getChatMsg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->chatMsg_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearMsgId()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->msgId_:J

    return-object p0
.end method

.method public clearMsgTtl()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->msgTtl_:I

    return-object p0
.end method

.method public clearMsgType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->bitField0_:I

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->TEXT:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->msgType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    return-object p0
.end method

.method public clearSecureChatMsg()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->bitField0_:I

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;->getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;->getSecureChatMsg()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->secureChatMsg_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->create()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getChatMsg()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->chatMsg_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->chatMsg_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;->getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;

    move-result-object v0

    return-object v0
.end method

.method public getMsgId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->msgId_:J

    return-wide v0
.end method

.method public getMsgTtl()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->msgTtl_:I

    return v0
.end method

.method public getMsgType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->msgType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    return-object v0
.end method

.method public getSecureChatMsg()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->secureChatMsg_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasChatMsg()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMsgId()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMsgTtl()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMsgType()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSecureChatMsg()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    check-cast p1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->msgId_:J

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->valueOf(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->bitField0_:I

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->msgType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    goto :goto_0

    :sswitch_3
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->chatMsg_:Ljava/lang/Object;

    goto :goto_0

    :sswitch_4
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->msgTtl_:I

    goto :goto_0

    :sswitch_5
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->secureChatMsg_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x52 -> :sswitch_5
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;->getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;->hasMsgId()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;->getMsgId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->setMsgId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;->hasMsgType()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;->getMsgType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->setMsgType(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;->hasChatMsg()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;->getChatMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->setChatMsg(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;

    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;->hasMsgTtl()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;->getMsgTtl()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->setMsgTtl(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;

    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;->hasSecureChatMsg()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam;->getSecureChatMsg()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->setSecureChatMsg(Lcom/google/protobuf/ByteString;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;

    goto :goto_0
.end method

.method public setChatMsg(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->chatMsg_:Ljava/lang/Object;

    return-object p0
.end method

.method setChatMsg(Lcom/google/protobuf/ByteString;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->chatMsg_:Ljava/lang/Object;

    return-void
.end method

.method public setMsgId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->msgId_:J

    return-object p0
.end method

.method public setMsgTtl(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->bitField0_:I

    iput p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->msgTtl_:I

    return-object p0
.end method

.method public setMsgType(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->msgType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    return-object p0
.end method

.method public setSecureChatMsg(Lcom/google/protobuf/ByteString;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParam$Builder;->secureChatMsg_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method
