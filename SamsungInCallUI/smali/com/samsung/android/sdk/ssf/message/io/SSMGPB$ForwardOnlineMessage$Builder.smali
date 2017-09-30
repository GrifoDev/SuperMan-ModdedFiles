.class public final Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;

# interfaces
.implements Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;",
        "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;",
        ">;",
        "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessageOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private chatType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

.field private chatroomId_:J

.field private currentTimestamp_:J

.field private deviceId_:J

.field private inboxEntry_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

.field private isActiveForward_:Z

.field private requestId_:J

.field private userId_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->SINGLE:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->chatType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->inboxEntry_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method static synthetic access$23800(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->buildParsed()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$23900()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->create()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private static create()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;
    .locals 6

    const/4 v0, 0x1

    new-instance v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;-><init>(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$1;)V

    iget v3, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_7

    :goto_0
    iget-wide v4, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->userId_:J

    invoke-static {v2, v4, v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->access$24102(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;J)J

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-wide v4, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->deviceId_:J

    invoke-static {v2, v4, v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->access$24202(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;J)J

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-wide v4, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->requestId_:J

    invoke-static {v2, v4, v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->access$24302(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;J)J

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget-wide v4, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->chatroomId_:J

    invoke-static {v2, v4, v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->access$24402(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;J)J

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->chatType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->access$24502(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    or-int/lit8 v0, v0, 0x20

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->inboxEntry_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->access$24602(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    or-int/lit8 v0, v0, 0x40

    :cond_5
    iget-boolean v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->isActiveForward_:Z

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->access$24702(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;Z)Z

    and-int/lit16 v1, v3, 0x80

    const/16 v3, 0x80

    if-ne v1, v3, :cond_6

    or-int/lit16 v0, v0, 0x80

    :cond_6
    iget-wide v4, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->currentTimestamp_:J

    invoke-static {v2, v4, v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->access$24802(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;J)J

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->access$24902(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;I)I

    return-object v2

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->clear()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->clear()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;
    .locals 4

    const-wide/16 v2, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->userId_:J

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->deviceId_:J

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->requestId_:J

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->chatroomId_:J

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->SINGLE:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->chatType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->inboxEntry_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->isActiveForward_:Z

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->currentTimestamp_:J

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearChatType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->SINGLE:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->chatType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    return-object p0
.end method

.method public clearChatroomId()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->chatroomId_:J

    return-object p0
.end method

.method public clearCurrentTimestamp()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->currentTimestamp_:J

    return-object p0
.end method

.method public clearDeviceId()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->deviceId_:J

    return-object p0
.end method

.method public clearInboxEntry()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->inboxEntry_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearIsActiveForward()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->isActiveForward_:Z

    return-object p0
.end method

.method public clearRequestId()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->requestId_:J

    return-object p0
.end method

.method public clearUserId()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->userId_:J

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->create()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getChatType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->chatType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    return-object v0
.end method

.method public getChatroomId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->chatroomId_:J

    return-wide v0
.end method

.method public getCurrentTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->currentTimestamp_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->deviceId_:J

    return-wide v0
.end method

.method public getInboxEntry()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->inboxEntry_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    return-object v0
.end method

.method public getIsActiveForward()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->isActiveForward_:Z

    return v0
.end method

.method public getRequestId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->requestId_:J

    return-wide v0
.end method

.method public getUserId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->userId_:J

    return-wide v0
.end method

.method public hasChatType()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

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

.method public hasCurrentTimestamp()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

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

.method public hasDeviceId()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

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

.method public hasInboxEntry()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

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

.method public hasIsActiveForward()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

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

.method public hasRequestId()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

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

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

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

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    check-cast p1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;
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
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->userId_:J

    goto :goto_0

    :sswitch_2
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->deviceId_:J

    goto :goto_0

    :sswitch_3
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->requestId_:J

    goto :goto_0

    :sswitch_4
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->chatroomId_:J

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->valueOf(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->chatType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    goto :goto_0

    :sswitch_6
    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->hasInboxEntry()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->getInboxEntry()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;->mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;

    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->setInboxEntry(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;

    goto :goto_0

    :sswitch_7
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->isActiveForward_:Z

    goto :goto_0

    :sswitch_8
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->currentTimestamp_:J

    goto/16 :goto_0

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

.method public mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->hasUserId()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->getUserId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->setUserId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->hasDeviceId()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->getDeviceId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->setDeviceId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->hasRequestId()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->getRequestId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->setRequestId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;

    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->hasChatroomId()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->getChatroomId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->setChatroomId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;

    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->hasChatType()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->getChatType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->setChatType(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;

    :cond_6
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->hasInboxEntry()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->getInboxEntry()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->mergeInboxEntry(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;

    :cond_7
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->hasIsActiveForward()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->getIsActiveForward()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->setIsActiveForward(Z)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;

    :cond_8
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->hasCurrentTimestamp()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->getCurrentTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->setCurrentTimestamp(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;

    goto :goto_0
.end method

.method public mergeInboxEntry(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->inboxEntry_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->inboxEntry_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->newBuilder(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;->mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->inboxEntry_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    :goto_0
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->inboxEntry_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    goto :goto_0
.end method

.method public setChatType(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->chatType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    return-object p0
.end method

.method public setChatroomId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->chatroomId_:J

    return-object p0
.end method

.method public setCurrentTimestamp(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->currentTimestamp_:J

    return-object p0
.end method

.method public setDeviceId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->deviceId_:J

    return-object p0
.end method

.method public setInboxEntry(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->inboxEntry_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public setInboxEntry(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->inboxEntry_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public setIsActiveForward(Z)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    iput-boolean p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->isActiveForward_:Z

    return-object p0
.end method

.method public setRequestId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->requestId_:J

    return-object p0
.end method

.method public setUserId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->userId_:J

    return-object p0
.end method
