.class public final Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;

# interfaces
.implements Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdatedOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;",
        "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;",
        ">;",
        "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdatedOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private chatroomId_:J

.field private contentType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

.field private deviceId_:J

.field private refresh_:I

.field private requestId_:J

.field private sender_:J

.field private state_:Ljava/lang/Object;

.field private userId_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->state_:Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;->CONTENT_TEXT:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->contentType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method static synthetic access$44000(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->buildParsed()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$44100()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->create()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private static create()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;
    .locals 6

    const/4 v0, 0x1

    new-instance v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;-><init>(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$1;)V

    iget v3, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_7

    :goto_0
    iget-wide v4, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->userId_:J

    invoke-static {v2, v4, v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;->access$44302(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;J)J

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-wide v4, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->deviceId_:J

    invoke-static {v2, v4, v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;->access$44402(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;J)J

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-wide v4, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->requestId_:J

    invoke-static {v2, v4, v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;->access$44502(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;J)J

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget-wide v4, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->chatroomId_:J

    invoke-static {v2, v4, v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;->access$44602(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;J)J

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget-wide v4, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->sender_:J

    invoke-static {v2, v4, v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;->access$44702(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;J)J

    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    or-int/lit8 v0, v0, 0x20

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->state_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;->access$44802(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    or-int/lit8 v0, v0, 0x40

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->contentType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;->access$44902(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

    and-int/lit16 v1, v3, 0x80

    const/16 v3, 0x80

    if-ne v1, v3, :cond_6

    or-int/lit16 v0, v0, 0x80

    :cond_6
    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->refresh_:I

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;->access$45002(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;I)I

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;->access$45102(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;I)I

    return-object v2

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->clear()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->clear()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;
    .locals 4

    const-wide/16 v2, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->userId_:J

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->deviceId_:J

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->requestId_:J

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->chatroomId_:J

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->sender_:J

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->state_:Ljava/lang/Object;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;->CONTENT_TEXT:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->contentType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->refresh_:I

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearChatroomId()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->chatroomId_:J

    return-object p0
.end method

.method public clearContentType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;->CONTENT_TEXT:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->contentType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

    return-object p0
.end method

.method public clearDeviceId()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->deviceId_:J

    return-object p0
.end method

.method public clearRefresh()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->refresh_:I

    return-object p0
.end method

.method public clearRequestId()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->requestId_:J

    return-object p0
.end method

.method public clearSender()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->sender_:J

    return-object p0
.end method

.method public clearState()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;->getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;->getState()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->state_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearUserId()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->userId_:J

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->create()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getChatroomId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->chatroomId_:J

    return-wide v0
.end method

.method public getContentType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->contentType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;->getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->deviceId_:J

    return-wide v0
.end method

.method public getRefresh()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->refresh_:I

    return v0
.end method

.method public getRequestId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->requestId_:J

    return-wide v0
.end method

.method public getSender()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->sender_:J

    return-wide v0
.end method

.method public getState()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->state_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->state_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getUserId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->userId_:J

    return-wide v0
.end method

.method public hasChatroomId()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

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

.method public hasContentType()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

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

.method public hasDeviceId()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

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

.method public hasRefresh()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

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

.method public hasState()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

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

.method public hasUserId()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

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

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    check-cast p1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;
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
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->userId_:J

    goto :goto_0

    :sswitch_2
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->deviceId_:J

    goto :goto_0

    :sswitch_3
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->requestId_:J

    goto :goto_0

    :sswitch_4
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->chatroomId_:J

    goto :goto_0

    :sswitch_5
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->sender_:J

    goto :goto_0

    :sswitch_6
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->state_:Ljava/lang/Object;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;->valueOf(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->contentType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

    goto :goto_0

    :sswitch_8
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->refresh_:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x58 -> :sswitch_3
        0x60 -> :sswitch_4
        0x68 -> :sswitch_5
        0x72 -> :sswitch_6
        0x78 -> :sswitch_7
        0x80 -> :sswitch_8
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;->getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;->hasUserId()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;->getUserId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->setUserId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;->hasDeviceId()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;->getDeviceId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->setDeviceId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;->hasRequestId()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;->getRequestId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->setRequestId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;

    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;->hasChatroomId()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;->getChatroomId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->setChatroomId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;

    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;->hasSender()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;->getSender()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->setSender(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;

    :cond_6
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;->hasState()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->setState(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;

    :cond_7
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;->hasContentType()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;->getContentType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->setContentType(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;

    :cond_8
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;->hasRefresh()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;->getRefresh()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->setRefresh(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;

    goto :goto_0
.end method

.method public setChatroomId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->chatroomId_:J

    return-object p0
.end method

.method public setContentType(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->contentType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

    return-object p0
.end method

.method public setDeviceId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->deviceId_:J

    return-object p0
.end method

.method public setRefresh(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    iput p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->refresh_:I

    return-object p0
.end method

.method public setRequestId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->requestId_:J

    return-object p0
.end method

.method public setSender(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->sender_:J

    return-object p0
.end method

.method public setState(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->state_:Ljava/lang/Object;

    return-object p0
.end method

.method setState(Lcom/google/protobuf/ByteString;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->state_:Ljava/lang/Object;

    return-void
.end method

.method public setUserId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated$Builder;->userId_:J

    return-object p0
.end method
