.class public final Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;

# interfaces
.implements Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;",
        "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;",
        ">;",
        "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private chatroomId_:J

.field private deviceId_:J

.field private requestId_:J

.field private userId_:J


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method static synthetic access$41200(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->buildParsed()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$41300()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->create()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private static create()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;
    .locals 6

    const/4 v0, 0x1

    new-instance v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;-><init>(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$1;)V

    iget v3, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_3

    :goto_0
    iget-wide v4, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->userId_:J

    invoke-static {v2, v4, v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;->access$41502(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;J)J

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-wide v4, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->deviceId_:J

    invoke-static {v2, v4, v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;->access$41602(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;J)J

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-wide v4, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->requestId_:J

    invoke-static {v2, v4, v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;->access$41702(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;J)J

    and-int/lit8 v1, v3, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget-wide v4, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->chatroomId_:J

    invoke-static {v2, v4, v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;->access$41802(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;J)J

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;->access$41902(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;I)I

    return-object v2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->clear()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->clear()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;
    .locals 4

    const-wide/16 v2, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->userId_:J

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->bitField0_:I

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->deviceId_:J

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->bitField0_:I

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->requestId_:J

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->bitField0_:I

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->chatroomId_:J

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearChatroomId()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->chatroomId_:J

    return-object p0
.end method

.method public clearDeviceId()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->deviceId_:J

    return-object p0
.end method

.method public clearRequestId()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->requestId_:J

    return-object p0
.end method

.method public clearUserId()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->userId_:J

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->create()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getChatroomId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->chatroomId_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;->getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->deviceId_:J

    return-wide v0
.end method

.method public getRequestId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->requestId_:J

    return-wide v0
.end method

.method public getUserId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->userId_:J

    return-wide v0
.end method

.method public hasChatroomId()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->bitField0_:I

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

.method public hasRequestId()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->bitField0_:I

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

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->bitField0_:I

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

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    check-cast p1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;
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
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->userId_:J

    goto :goto_0

    :sswitch_2
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->deviceId_:J

    goto :goto_0

    :sswitch_3
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->requestId_:J

    goto :goto_0

    :sswitch_4
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->chatroomId_:J

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x58 -> :sswitch_3
        0x60 -> :sswitch_4
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;->getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;->hasUserId()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;->getUserId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->setUserId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;->hasDeviceId()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;->getDeviceId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->setDeviceId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;->hasRequestId()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;->getRequestId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->setRequestId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;

    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;->hasChatroomId()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus;->getChatroomId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->setChatroomId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;

    goto :goto_0
.end method

.method public setChatroomId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->chatroomId_:J

    return-object p0
.end method

.method public setDeviceId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->deviceId_:J

    return-object p0
.end method

.method public setRequestId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->requestId_:J

    return-object p0
.end method

.method public setUserId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatus$Builder;->userId_:J

    return-object p0
.end method
