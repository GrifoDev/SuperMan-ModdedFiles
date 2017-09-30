.class public final Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;

# interfaces
.implements Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;",
        "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;",
        ">;",
        "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private chatMsg_:Ljava/lang/Object;

.field private chatType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

.field private chatroomId_:J

.field private deviceId_:J

.field private isActive_:Z

.field private msgId_:J

.field private msgType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

.field private receiver_:J

.field private requestId_:J

.field private senderName_:Ljava/lang/Object;

.field private sender_:J

.field private sentTime_:J

.field private truncated_:Z

.field private userId_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->SINGLE:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->chatType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->TEXT:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->msgType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->chatMsg_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->senderName_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method static synthetic access$54400(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->buildParsed()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$54500()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->create()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private static create()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;
    .locals 6

    const/4 v0, 0x1

    new-instance v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;-><init>(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$1;)V

    iget v3, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_d

    :goto_0
    iget-wide v4, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->userId_:J

    invoke-static {v2, v4, v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->access$54702(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;J)J

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-wide v4, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->deviceId_:J

    invoke-static {v2, v4, v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->access$54802(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;J)J

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-wide v4, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->requestId_:J

    invoke-static {v2, v4, v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->access$54902(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;J)J

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget-wide v4, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->chatroomId_:J

    invoke-static {v2, v4, v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->access$55002(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;J)J

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->chatType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->access$55102(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    or-int/lit8 v0, v0, 0x20

    :cond_4
    iget-wide v4, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->msgId_:J

    invoke-static {v2, v4, v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->access$55202(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;J)J

    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    or-int/lit8 v0, v0, 0x40

    :cond_5
    iget-wide v4, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->sender_:J

    invoke-static {v2, v4, v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->access$55302(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;J)J

    and-int/lit16 v1, v3, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_6

    or-int/lit16 v0, v0, 0x80

    :cond_6
    iget-wide v4, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->receiver_:J

    invoke-static {v2, v4, v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->access$55402(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;J)J

    and-int/lit16 v1, v3, 0x100

    const/16 v4, 0x100

    if-ne v1, v4, :cond_7

    or-int/lit16 v0, v0, 0x100

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->msgType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->access$55502(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    and-int/lit16 v1, v3, 0x200

    const/16 v4, 0x200

    if-ne v1, v4, :cond_8

    or-int/lit16 v0, v0, 0x200

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->chatMsg_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->access$55602(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x400

    const/16 v4, 0x400

    if-ne v1, v4, :cond_9

    or-int/lit16 v0, v0, 0x400

    :cond_9
    iget-boolean v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->truncated_:Z

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->access$55702(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;Z)Z

    and-int/lit16 v1, v3, 0x800

    const/16 v4, 0x800

    if-ne v1, v4, :cond_a

    or-int/lit16 v0, v0, 0x800

    :cond_a
    iget-wide v4, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->sentTime_:J

    invoke-static {v2, v4, v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->access$55802(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;J)J

    and-int/lit16 v1, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v1, v4, :cond_b

    or-int/lit16 v0, v0, 0x1000

    :cond_b
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->senderName_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->access$55902(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x2000

    const/16 v3, 0x2000

    if-ne v1, v3, :cond_c

    or-int/lit16 v0, v0, 0x2000

    :cond_c
    iget-boolean v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->isActive_:Z

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->access$56002(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;Z)Z

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->access$56102(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;I)I

    return-object v2

    :cond_d
    move v0, v1

    goto/16 :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->clear()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->clear()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;
    .locals 4

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->userId_:J

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->deviceId_:J

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->requestId_:J

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->chatroomId_:J

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->SINGLE:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->chatType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->msgId_:J

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->sender_:J

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->receiver_:J

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->TEXT:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->msgType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->chatMsg_:Ljava/lang/Object;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    iput-boolean v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->truncated_:Z

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->sentTime_:J

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->senderName_:Ljava/lang/Object;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    iput-boolean v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->isActive_:Z

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearChatMsg()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->getChatMsg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->chatMsg_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearChatType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->SINGLE:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->chatType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    return-object p0
.end method

.method public clearChatroomId()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->chatroomId_:J

    return-object p0
.end method

.method public clearDeviceId()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->deviceId_:J

    return-object p0
.end method

.method public clearIsActive()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->isActive_:Z

    return-object p0
.end method

.method public clearMsgId()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->msgId_:J

    return-object p0
.end method

.method public clearMsgType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->TEXT:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->msgType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    return-object p0
.end method

.method public clearReceiver()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->receiver_:J

    return-object p0
.end method

.method public clearRequestId()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->requestId_:J

    return-object p0
.end method

.method public clearSender()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->sender_:J

    return-object p0
.end method

.method public clearSenderName()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->getSenderName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->senderName_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearSentTime()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->sentTime_:J

    return-object p0
.end method

.method public clearTruncated()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->truncated_:Z

    return-object p0
.end method

.method public clearUserId()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->userId_:J

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->create()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getChatMsg()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->chatMsg_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->chatMsg_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getChatType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->chatType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    return-object v0
.end method

.method public getChatroomId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->chatroomId_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->deviceId_:J

    return-wide v0
.end method

.method public getIsActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->isActive_:Z

    return v0
.end method

.method public getMsgId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->msgId_:J

    return-wide v0
.end method

.method public getMsgType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->msgType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    return-object v0
.end method

.method public getReceiver()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->receiver_:J

    return-wide v0
.end method

.method public getRequestId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->requestId_:J

    return-wide v0
.end method

.method public getSender()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->sender_:J

    return-wide v0
.end method

.method public getSenderName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->senderName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->senderName_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getSentTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->sentTime_:J

    return-wide v0
.end method

.method public getTruncated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->truncated_:Z

    return v0
.end method

.method public getUserId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->userId_:J

    return-wide v0
.end method

.method public hasChatMsg()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasChatType()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

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

.method public hasChatroomId()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

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

.method public hasDeviceId()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

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

.method public hasIsActive()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

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

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

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

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasReceiver()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRequestId()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

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

.method public hasSender()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSenderName()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSentTime()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTruncated()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUserId()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

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

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    check-cast p1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;
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
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->userId_:J

    goto :goto_0

    :sswitch_2
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->deviceId_:J

    goto :goto_0

    :sswitch_3
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->requestId_:J

    goto :goto_0

    :sswitch_4
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->chatroomId_:J

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->valueOf(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->chatType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    goto :goto_0

    :sswitch_6
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->msgId_:J

    goto :goto_0

    :sswitch_7
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->sender_:J

    goto :goto_0

    :sswitch_8
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->receiver_:J

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->valueOf(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->msgType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    goto/16 :goto_0

    :sswitch_a
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->chatMsg_:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_b
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->truncated_:Z

    goto/16 :goto_0

    :sswitch_c
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->sentTime_:J

    goto/16 :goto_0

    :sswitch_d
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->senderName_:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_e
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->isActive_:Z

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x58 -> :sswitch_3
        0x60 -> :sswitch_4
        0x68 -> :sswitch_5
        0x70 -> :sswitch_6
        0x78 -> :sswitch_7
        0x80 -> :sswitch_8
        0x88 -> :sswitch_9
        0x92 -> :sswitch_a
        0x98 -> :sswitch_b
        0xa0 -> :sswitch_c
        0xaa -> :sswitch_d
        0xb0 -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->hasUserId()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->getUserId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->setUserId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->hasDeviceId()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->getDeviceId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->setDeviceId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->hasRequestId()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->getRequestId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->setRequestId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;

    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->hasChatroomId()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->getChatroomId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->setChatroomId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;

    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->hasChatType()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->getChatType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->setChatType(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;

    :cond_6
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->hasMsgId()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->getMsgId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->setMsgId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;

    :cond_7
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->hasSender()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->getSender()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->setSender(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;

    :cond_8
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->hasReceiver()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->getReceiver()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->setReceiver(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;

    :cond_9
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->hasMsgType()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->getMsgType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->setMsgType(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;

    :cond_a
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->hasChatMsg()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->getChatMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->setChatMsg(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;

    :cond_b
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->hasTruncated()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->getTruncated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->setTruncated(Z)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;

    :cond_c
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->hasSentTime()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->getSentTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->setSentTime(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;

    :cond_d
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->hasSenderName()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->getSenderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->setSenderName(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;

    :cond_e
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->hasIsActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest;->getIsActive()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->setIsActive(Z)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;

    goto/16 :goto_0
.end method

.method public setChatMsg(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->chatMsg_:Ljava/lang/Object;

    return-object p0
.end method

.method setChatMsg(Lcom/google/protobuf/ByteString;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->chatMsg_:Ljava/lang/Object;

    return-void
.end method

.method public setChatType(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->chatType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    return-object p0
.end method

.method public setChatroomId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->chatroomId_:J

    return-object p0
.end method

.method public setDeviceId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->deviceId_:J

    return-object p0
.end method

.method public setIsActive(Z)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    iput-boolean p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->isActive_:Z

    return-object p0
.end method

.method public setMsgId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->msgId_:J

    return-object p0
.end method

.method public setMsgType(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->msgType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    return-object p0
.end method

.method public setReceiver(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->receiver_:J

    return-object p0
.end method

.method public setRequestId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->requestId_:J

    return-object p0
.end method

.method public setSender(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->sender_:J

    return-object p0
.end method

.method public setSenderName(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->senderName_:Ljava/lang/Object;

    return-object p0
.end method

.method setSenderName(Lcom/google/protobuf/ByteString;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->senderName_:Ljava/lang/Object;

    return-void
.end method

.method public setSentTime(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->sentTime_:J

    return-object p0
.end method

.method public setTruncated(Z)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    iput-boolean p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->truncated_:Z

    return-object p0
.end method

.method public setUserId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AlternativePushRequest$Builder;->userId_:J

    return-object p0
.end method
