.class public final Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;

# interfaces
.implements Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;",
        "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;",
        ">;",
        "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private chatroomId_:J

.field private deviceId_:J

.field private isAutoAllow_:Z

.field private lastDeliveryAckTimestamp_:J

.field private lastReadAckTimestamp_:J

.field private maxCount_:I

.field private needChatroomMeta_:Z

.field private needDeliveryAck_:Z

.field private needOrderedChatroomMemberList_:Z

.field private needReadAck_:Z

.field private requestId_:J

.field private userId_:J


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method static synthetic access$18800(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->buildParsed()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18900()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->create()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private static create()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;
    .locals 6

    const/4 v0, 0x1

    new-instance v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;-><init>(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$1;)V

    iget v3, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_b

    :goto_0
    iget-wide v4, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->userId_:J

    invoke-static {v2, v4, v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->access$19102(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;J)J

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-wide v4, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->deviceId_:J

    invoke-static {v2, v4, v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->access$19202(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;J)J

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-wide v4, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->requestId_:J

    invoke-static {v2, v4, v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->access$19302(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;J)J

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget-wide v4, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->chatroomId_:J

    invoke-static {v2, v4, v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->access$19402(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;J)J

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget-boolean v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->isAutoAllow_:Z

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->access$19502(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;Z)Z

    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    or-int/lit8 v0, v0, 0x20

    :cond_4
    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->maxCount_:I

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->access$19602(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;I)I

    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    or-int/lit8 v0, v0, 0x40

    :cond_5
    iget-boolean v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->needOrderedChatroomMemberList_:Z

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->access$19702(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;Z)Z

    and-int/lit16 v1, v3, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_6

    or-int/lit16 v0, v0, 0x80

    :cond_6
    iget-boolean v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->needReadAck_:Z

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->access$19802(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;Z)Z

    and-int/lit16 v1, v3, 0x100

    const/16 v4, 0x100

    if-ne v1, v4, :cond_7

    or-int/lit16 v0, v0, 0x100

    :cond_7
    iget-wide v4, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->lastReadAckTimestamp_:J

    invoke-static {v2, v4, v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->access$19902(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;J)J

    and-int/lit16 v1, v3, 0x200

    const/16 v4, 0x200

    if-ne v1, v4, :cond_8

    or-int/lit16 v0, v0, 0x200

    :cond_8
    iget-boolean v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->needChatroomMeta_:Z

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->access$20002(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;Z)Z

    and-int/lit16 v1, v3, 0x400

    const/16 v4, 0x400

    if-ne v1, v4, :cond_9

    or-int/lit16 v0, v0, 0x400

    :cond_9
    iget-boolean v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->needDeliveryAck_:Z

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->access$20102(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;Z)Z

    and-int/lit16 v1, v3, 0x800

    const/16 v3, 0x800

    if-ne v1, v3, :cond_a

    or-int/lit16 v0, v0, 0x800

    :cond_a
    iget-wide v4, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->lastDeliveryAckTimestamp_:J

    invoke-static {v2, v4, v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->access$20202(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;J)J

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->access$20302(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;I)I

    return-object v2

    :cond_b
    move v0, v1

    goto/16 :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->clear()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->clear()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->userId_:J

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->deviceId_:J

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->requestId_:J

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->chatroomId_:J

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    iput-boolean v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->isAutoAllow_:Z

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    iput v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->maxCount_:I

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    iput-boolean v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->needOrderedChatroomMemberList_:Z

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    iput-boolean v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->needReadAck_:Z

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->lastReadAckTimestamp_:J

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    iput-boolean v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->needChatroomMeta_:Z

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    iput-boolean v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->needDeliveryAck_:Z

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->lastDeliveryAckTimestamp_:J

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearChatroomId()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->chatroomId_:J

    return-object p0
.end method

.method public clearDeviceId()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->deviceId_:J

    return-object p0
.end method

.method public clearIsAutoAllow()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->isAutoAllow_:Z

    return-object p0
.end method

.method public clearLastDeliveryAckTimestamp()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->lastDeliveryAckTimestamp_:J

    return-object p0
.end method

.method public clearLastReadAckTimestamp()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->lastReadAckTimestamp_:J

    return-object p0
.end method

.method public clearMaxCount()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->maxCount_:I

    return-object p0
.end method

.method public clearNeedChatroomMeta()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->needChatroomMeta_:Z

    return-object p0
.end method

.method public clearNeedDeliveryAck()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->needDeliveryAck_:Z

    return-object p0
.end method

.method public clearNeedOrderedChatroomMemberList()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->needOrderedChatroomMemberList_:Z

    return-object p0
.end method

.method public clearNeedReadAck()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->needReadAck_:Z

    return-object p0
.end method

.method public clearRequestId()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->requestId_:J

    return-object p0
.end method

.method public clearUserId()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->userId_:J

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->create()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getChatroomId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->chatroomId_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->deviceId_:J

    return-wide v0
.end method

.method public getIsAutoAllow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->isAutoAllow_:Z

    return v0
.end method

.method public getLastDeliveryAckTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->lastDeliveryAckTimestamp_:J

    return-wide v0
.end method

.method public getLastReadAckTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->lastReadAckTimestamp_:J

    return-wide v0
.end method

.method public getMaxCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->maxCount_:I

    return v0
.end method

.method public getNeedChatroomMeta()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->needChatroomMeta_:Z

    return v0
.end method

.method public getNeedDeliveryAck()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->needDeliveryAck_:Z

    return v0
.end method

.method public getNeedOrderedChatroomMemberList()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->needOrderedChatroomMemberList_:Z

    return v0
.end method

.method public getNeedReadAck()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->needReadAck_:Z

    return v0
.end method

.method public getRequestId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->requestId_:J

    return-wide v0
.end method

.method public getUserId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->userId_:J

    return-wide v0
.end method

.method public hasChatroomId()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

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

.method public hasIsAutoAllow()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

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

.method public hasLastDeliveryAckTimestamp()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

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

.method public hasLastReadAckTimestamp()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

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

.method public hasMaxCount()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

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

.method public hasNeedChatroomMeta()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

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

.method public hasNeedDeliveryAck()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

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

.method public hasNeedOrderedChatroomMemberList()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

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

.method public hasNeedReadAck()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

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

.method public hasUserId()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

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

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    check-cast p1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;
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
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->userId_:J

    goto :goto_0

    :sswitch_2
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->deviceId_:J

    goto :goto_0

    :sswitch_3
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->requestId_:J

    goto :goto_0

    :sswitch_4
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->chatroomId_:J

    goto :goto_0

    :sswitch_5
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->isAutoAllow_:Z

    goto :goto_0

    :sswitch_6
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->maxCount_:I

    goto :goto_0

    :sswitch_7
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->needOrderedChatroomMemberList_:Z

    goto :goto_0

    :sswitch_8
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->needReadAck_:Z

    goto :goto_0

    :sswitch_9
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->lastReadAckTimestamp_:J

    goto/16 :goto_0

    :sswitch_a
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->needChatroomMeta_:Z

    goto/16 :goto_0

    :sswitch_b
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->needDeliveryAck_:Z

    goto/16 :goto_0

    :sswitch_c
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->lastDeliveryAckTimestamp_:J

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
        0x90 -> :sswitch_a
        0x98 -> :sswitch_b
        0xa0 -> :sswitch_c
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->hasUserId()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->getUserId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->setUserId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->hasDeviceId()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->getDeviceId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->setDeviceId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->hasRequestId()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->getRequestId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->setRequestId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->hasChatroomId()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->getChatroomId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->setChatroomId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->hasIsAutoAllow()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->getIsAutoAllow()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->setIsAutoAllow(Z)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    :cond_6
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->hasMaxCount()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->getMaxCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->setMaxCount(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    :cond_7
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->hasNeedOrderedChatroomMemberList()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->getNeedOrderedChatroomMemberList()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->setNeedOrderedChatroomMemberList(Z)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    :cond_8
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->hasNeedReadAck()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->getNeedReadAck()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->setNeedReadAck(Z)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    :cond_9
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->hasLastReadAckTimestamp()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->getLastReadAckTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->setLastReadAckTimestamp(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    :cond_a
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->hasNeedChatroomMeta()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->getNeedChatroomMeta()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->setNeedChatroomMeta(Z)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    :cond_b
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->hasNeedDeliveryAck()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->getNeedDeliveryAck()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->setNeedDeliveryAck(Z)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    :cond_c
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->hasLastDeliveryAckTimestamp()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->getLastDeliveryAckTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->setLastDeliveryAckTimestamp(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    goto/16 :goto_0
.end method

.method public setChatroomId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->chatroomId_:J

    return-object p0
.end method

.method public setDeviceId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->deviceId_:J

    return-object p0
.end method

.method public setIsAutoAllow(Z)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    iput-boolean p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->isAutoAllow_:Z

    return-object p0
.end method

.method public setLastDeliveryAckTimestamp(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->lastDeliveryAckTimestamp_:J

    return-object p0
.end method

.method public setLastReadAckTimestamp(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->lastReadAckTimestamp_:J

    return-object p0
.end method

.method public setMaxCount(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    iput p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->maxCount_:I

    return-object p0
.end method

.method public setNeedChatroomMeta(Z)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    iput-boolean p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->needChatroomMeta_:Z

    return-object p0
.end method

.method public setNeedDeliveryAck(Z)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    iput-boolean p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->needDeliveryAck_:Z

    return-object p0
.end method

.method public setNeedOrderedChatroomMemberList(Z)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    iput-boolean p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->needOrderedChatroomMemberList_:Z

    return-object p0
.end method

.method public setNeedReadAck(Z)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    iput-boolean p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->needReadAck_:Z

    return-object p0
.end method

.method public setRequestId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->requestId_:J

    return-object p0
.end method

.method public setUserId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->userId_:J

    return-object p0
.end method
