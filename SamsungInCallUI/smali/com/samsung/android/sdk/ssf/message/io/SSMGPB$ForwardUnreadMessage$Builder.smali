.class public final Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;

# interfaces
.implements Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;",
        "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;",
        ">;",
        "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessageOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private deviceId_:J

.field private inboxEntries_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;",
            ">;"
        }
    .end annotation
.end field

.field private isActiveForward_:Z

.field private nextPaginationKey_:Ljava/lang/Object;

.field private requestId_:J

.field private userId_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->inboxEntries_:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->nextPaginationKey_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method static synthetic access$26000(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->buildParsed()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$26100()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->create()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private static create()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;-><init>()V

    return-object v0
.end method

.method private ensureInboxEntriesIsMutable()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->inboxEntries_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->inboxEntries_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    return-void
.end method


# virtual methods
.method public addAllInboxEntries(Ljava/lang/Iterable;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;",
            ">;)",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->ensureInboxEntriesIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->inboxEntries_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addInboxEntries(ILcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->ensureInboxEntriesIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->inboxEntries_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public addInboxEntries(ILcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->ensureInboxEntriesIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->inboxEntries_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public addInboxEntries(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->ensureInboxEntriesIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->inboxEntries_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addInboxEntries(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->ensureInboxEntriesIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->inboxEntries_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;
    .locals 6

    const/4 v0, 0x1

    new-instance v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;-><init>(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$1;)V

    iget v3, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_5

    :goto_0
    iget-wide v4, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->userId_:J

    invoke-static {v2, v4, v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->access$26302(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;J)J

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-wide v4, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->deviceId_:J

    invoke-static {v2, v4, v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->access$26402(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;J)J

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-wide v4, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->requestId_:J

    invoke-static {v2, v4, v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->access$26502(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;J)J

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->inboxEntries_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->inboxEntries_:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->inboxEntries_:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->access$26602(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;Ljava/util/List;)Ljava/util/List;

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x8

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->nextPaginationKey_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->access$26702(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x20

    const/16 v3, 0x20

    if-ne v1, v3, :cond_4

    or-int/lit8 v0, v0, 0x10

    :cond_4
    iget-boolean v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->isActiveForward_:Z

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->access$26802(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;Z)Z

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->access$26902(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;I)I

    return-object v2

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->clear()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->clear()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;
    .locals 4

    const-wide/16 v2, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->userId_:J

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->deviceId_:J

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->requestId_:J

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->inboxEntries_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->nextPaginationKey_:Ljava/lang/Object;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->isActiveForward_:Z

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearDeviceId()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->deviceId_:J

    return-object p0
.end method

.method public clearInboxEntries()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->inboxEntries_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearIsActiveForward()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->isActiveForward_:Z

    return-object p0
.end method

.method public clearNextPaginationKey()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->getNextPaginationKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->nextPaginationKey_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearRequestId()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->requestId_:J

    return-object p0
.end method

.method public clearUserId()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->userId_:J

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->create()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->deviceId_:J

    return-wide v0
.end method

.method public getInboxEntries(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->inboxEntries_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    return-object v0
.end method

.method public getInboxEntriesCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->inboxEntries_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getInboxEntriesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->inboxEntries_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIsActiveForward()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->isActiveForward_:Z

    return v0
.end method

.method public getNextPaginationKey()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->nextPaginationKey_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->nextPaginationKey_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getRequestId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->requestId_:J

    return-wide v0
.end method

.method public getUserId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->userId_:J

    return-wide v0
.end method

.method public hasDeviceId()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

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

.method public hasIsActiveForward()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

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

.method public hasNextPaginationKey()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

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

.method public hasRequestId()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

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

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

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

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    check-cast p1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;
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
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->userId_:J

    goto :goto_0

    :sswitch_2
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->deviceId_:J

    goto :goto_0

    :sswitch_3
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->requestId_:J

    goto :goto_0

    :sswitch_4
    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->addInboxEntries(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;

    goto :goto_0

    :sswitch_5
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->nextPaginationKey_:Ljava/lang/Object;

    goto :goto_0

    :sswitch_6
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->isActiveForward_:Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x58 -> :sswitch_3
        0x62 -> :sswitch_4
        0x6a -> :sswitch_5
        0x70 -> :sswitch_6
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->hasUserId()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->getUserId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->setUserId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->hasDeviceId()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->getDeviceId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->setDeviceId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->hasRequestId()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->getRequestId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->setRequestId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;

    :cond_4
    invoke-static {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->access$26600(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->inboxEntries_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->access$26600(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->inboxEntries_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->hasNextPaginationKey()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->getNextPaginationKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->setNextPaginationKey(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;

    :cond_6
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->hasIsActiveForward()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->getIsActiveForward()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->setIsActiveForward(Z)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->ensureInboxEntriesIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->inboxEntries_:Ljava/util/List;

    invoke-static {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->access$26600(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public removeInboxEntries(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->ensureInboxEntriesIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->inboxEntries_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0
.end method

.method public setDeviceId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->deviceId_:J

    return-object p0
.end method

.method public setInboxEntries(ILcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->ensureInboxEntriesIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->inboxEntries_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setInboxEntries(ILcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->ensureInboxEntriesIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->inboxEntries_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setIsActiveForward(Z)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    iput-boolean p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->isActiveForward_:Z

    return-object p0
.end method

.method public setNextPaginationKey(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->nextPaginationKey_:Ljava/lang/Object;

    return-object p0
.end method

.method setNextPaginationKey(Lcom/google/protobuf/ByteString;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->nextPaginationKey_:Ljava/lang/Object;

    return-void
.end method

.method public setRequestId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->requestId_:J

    return-object p0
.end method

.method public setUserId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->userId_:J

    return-object p0
.end method
