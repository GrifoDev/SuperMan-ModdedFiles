.class public final Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;

# interfaces
.implements Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReplyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;",
        "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;",
        ">;",
        "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReplyOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private chatroomId_:J

.field private deliveryAckEntries_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry;",
            ">;"
        }
    .end annotation
.end field

.field private deviceId_:J

.field private lastDeliveryAckTimestamp_:J

.field private lastReadAckTimestamp_:J

.field private msgTtl_:I

.field private orderedChatroomMemberList_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;",
            ">;"
        }
    .end annotation
.end field

.field private ownerUserId_:J

.field private profileUrl_:Ljava/lang/Object;

.field private readAckEntries_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry;",
            ">;"
        }
    .end annotation
.end field

.field private requestId_:J

.field private result_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

.field private title_:Ljava/lang/Object;

.field private userId_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->result_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->orderedChatroomMemberList_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->readAckEntries_:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->title_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->profileUrl_:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->deliveryAckEntries_:Ljava/util/List;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method static synthetic access$20400(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->buildParsed()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$20500()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->create()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private static create()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;-><init>()V

    return-object v0
.end method

.method private ensureDeliveryAckEntriesIsMutable()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->deliveryAckEntries_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->deliveryAckEntries_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureOrderedChatroomMemberListIsMutable()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->orderedChatroomMemberList_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->orderedChatroomMemberList_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureReadAckEntriesIsMutable()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->readAckEntries_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->readAckEntries_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    return-void
.end method


# virtual methods
.method public addAllDeliveryAckEntries(Ljava/lang/Iterable;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry;",
            ">;)",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->ensureDeliveryAckEntriesIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->deliveryAckEntries_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllOrderedChatroomMemberList(Ljava/lang/Iterable;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;",
            ">;)",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->ensureOrderedChatroomMemberListIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->orderedChatroomMemberList_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllReadAckEntries(Ljava/lang/Iterable;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry;",
            ">;)",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->ensureReadAckEntriesIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->readAckEntries_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addDeliveryAckEntries(ILcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->ensureDeliveryAckEntriesIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->deliveryAckEntries_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public addDeliveryAckEntries(ILcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->ensureDeliveryAckEntriesIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->deliveryAckEntries_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public addDeliveryAckEntries(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->ensureDeliveryAckEntriesIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->deliveryAckEntries_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addDeliveryAckEntries(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->ensureDeliveryAckEntriesIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->deliveryAckEntries_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addOrderedChatroomMemberList(ILcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->ensureOrderedChatroomMemberListIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->orderedChatroomMemberList_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public addOrderedChatroomMemberList(ILcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->ensureOrderedChatroomMemberListIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->orderedChatroomMemberList_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public addOrderedChatroomMemberList(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->ensureOrderedChatroomMemberListIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->orderedChatroomMemberList_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addOrderedChatroomMemberList(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->ensureOrderedChatroomMemberListIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->orderedChatroomMemberList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addReadAckEntries(ILcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->ensureReadAckEntriesIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->readAckEntries_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public addReadAckEntries(ILcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->ensureReadAckEntriesIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->readAckEntries_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public addReadAckEntries(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->ensureReadAckEntriesIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->readAckEntries_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addReadAckEntries(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->ensureReadAckEntriesIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->readAckEntries_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;
    .locals 6

    const/4 v0, 0x1

    new-instance v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;-><init>(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$1;)V

    iget v3, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_d

    :goto_0
    iget-wide v4, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->userId_:J

    invoke-static {v2, v4, v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->access$20702(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;J)J

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-wide v4, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->deviceId_:J

    invoke-static {v2, v4, v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->access$20802(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;J)J

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-wide v4, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->requestId_:J

    invoke-static {v2, v4, v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->access$20902(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;J)J

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget-wide v4, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->chatroomId_:J

    invoke-static {v2, v4, v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->access$21002(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;J)J

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->result_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->access$21102(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    or-int/lit8 v0, v0, 0x20

    :cond_4
    iget-wide v4, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->lastReadAckTimestamp_:J

    invoke-static {v2, v4, v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->access$21202(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;J)J

    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    or-int/lit8 v0, v0, 0x40

    :cond_5
    iget-wide v4, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->ownerUserId_:J

    invoke-static {v2, v4, v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->access$21302(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;J)J

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_6

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->orderedChatroomMemberList_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->orderedChatroomMemberList_:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x81

    iput v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->orderedChatroomMemberList_:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->access$21402(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;Ljava/util/List;)Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v4, 0x100

    if-ne v1, v4, :cond_7

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->readAckEntries_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->readAckEntries_:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->readAckEntries_:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->access$21502(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;Ljava/util/List;)Ljava/util/List;

    and-int/lit16 v1, v3, 0x200

    const/16 v4, 0x200

    if-ne v1, v4, :cond_8

    or-int/lit16 v0, v0, 0x80

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->title_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->access$21602(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x400

    const/16 v4, 0x400

    if-ne v1, v4, :cond_9

    or-int/lit16 v0, v0, 0x100

    :cond_9
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->profileUrl_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->access$21702(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    const/16 v4, 0x800

    if-ne v1, v4, :cond_a

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->deliveryAckEntries_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->deliveryAckEntries_:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x801

    iput v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->deliveryAckEntries_:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->access$21802(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;Ljava/util/List;)Ljava/util/List;

    and-int/lit16 v1, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v1, v4, :cond_b

    or-int/lit16 v0, v0, 0x200

    :cond_b
    iget-wide v4, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->lastDeliveryAckTimestamp_:J

    invoke-static {v2, v4, v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->access$21902(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;J)J

    and-int/lit16 v1, v3, 0x2000

    const/16 v3, 0x2000

    if-ne v1, v3, :cond_c

    or-int/lit16 v0, v0, 0x400

    :cond_c
    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->msgTtl_:I

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->access$22002(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;I)I

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->access$22102(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;I)I

    return-object v2

    :cond_d
    move v0, v1

    goto/16 :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->clear()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->clear()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 4

    const-wide/16 v2, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->userId_:J

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->deviceId_:J

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->requestId_:J

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->chatroomId_:J

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->result_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->lastReadAckTimestamp_:J

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->ownerUserId_:J

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->orderedChatroomMemberList_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->readAckEntries_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->title_:Ljava/lang/Object;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->profileUrl_:Ljava/lang/Object;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->deliveryAckEntries_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->lastDeliveryAckTimestamp_:J

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->msgTtl_:I

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearChatroomId()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->chatroomId_:J

    return-object p0
.end method

.method public clearDeliveryAckEntries()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->deliveryAckEntries_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearDeviceId()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->deviceId_:J

    return-object p0
.end method

.method public clearLastDeliveryAckTimestamp()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->lastDeliveryAckTimestamp_:J

    return-object p0
.end method

.method public clearLastReadAckTimestamp()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->lastReadAckTimestamp_:J

    return-object p0
.end method

.method public clearMsgTtl()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->msgTtl_:I

    return-object p0
.end method

.method public clearOrderedChatroomMemberList()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->orderedChatroomMemberList_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearOwnerUserId()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->ownerUserId_:J

    return-object p0
.end method

.method public clearProfileUrl()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->getProfileUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->profileUrl_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearReadAckEntries()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->readAckEntries_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearRequestId()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->requestId_:J

    return-object p0
.end method

.method public clearResult()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->result_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearTitle()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->title_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearUserId()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->userId_:J

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->create()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getChatroomId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->chatroomId_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;

    move-result-object v0

    return-object v0
.end method

.method public getDeliveryAckEntries(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->deliveryAckEntries_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry;

    return-object v0
.end method

.method public getDeliveryAckEntriesCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->deliveryAckEntries_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDeliveryAckEntriesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->deliveryAckEntries_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->deviceId_:J

    return-wide v0
.end method

.method public getLastDeliveryAckTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->lastDeliveryAckTimestamp_:J

    return-wide v0
.end method

.method public getLastReadAckTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->lastReadAckTimestamp_:J

    return-wide v0
.end method

.method public getMsgTtl()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->msgTtl_:I

    return v0
.end method

.method public getOrderedChatroomMemberList(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->orderedChatroomMemberList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;

    return-object v0
.end method

.method public getOrderedChatroomMemberListCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->orderedChatroomMemberList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOrderedChatroomMemberListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->orderedChatroomMemberList_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerUserId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->ownerUserId_:J

    return-wide v0
.end method

.method public getProfileUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->profileUrl_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->profileUrl_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getReadAckEntries(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->readAckEntries_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry;

    return-object v0
.end method

.method public getReadAckEntriesCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->readAckEntries_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getReadAckEntriesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->readAckEntries_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRequestId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->requestId_:J

    return-wide v0
.end method

.method public getResult()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->result_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->title_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->title_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getUserId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->userId_:J

    return-wide v0
.end method

.method public hasChatroomId()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

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

.method public hasLastDeliveryAckTimestamp()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

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

.method public hasLastReadAckTimestamp()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

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

.method public hasMsgTtl()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

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

.method public hasOwnerUserId()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

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

.method public hasProfileUrl()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

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

.method public hasRequestId()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

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

.method public hasResult()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

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

.method public hasTitle()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

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

.method public hasUserId()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

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

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    check-cast p1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
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
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->userId_:J

    goto :goto_0

    :sswitch_2
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->deviceId_:J

    goto :goto_0

    :sswitch_3
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->requestId_:J

    goto :goto_0

    :sswitch_4
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->chatroomId_:J

    goto :goto_0

    :sswitch_5
    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->hasResult()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->getResult()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;

    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->setResult(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;

    goto :goto_0

    :sswitch_6
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->lastReadAckTimestamp_:J

    goto :goto_0

    :sswitch_7
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->ownerUserId_:J

    goto :goto_0

    :sswitch_8
    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->addOrderedChatroomMemberList(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;

    goto/16 :goto_0

    :sswitch_9
    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry$Builder;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->addReadAckEntries(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;

    goto/16 :goto_0

    :sswitch_a
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->title_:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_b
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->profileUrl_:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_c
    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry$Builder;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->addDeliveryAckEntries(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;

    goto/16 :goto_0

    :sswitch_d
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->lastDeliveryAckTimestamp_:J

    goto/16 :goto_0

    :sswitch_e
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->msgTtl_:I

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x58 -> :sswitch_3
        0x60 -> :sswitch_4
        0x6a -> :sswitch_5
        0x70 -> :sswitch_6
        0x78 -> :sswitch_7
        0x82 -> :sswitch_8
        0x8a -> :sswitch_9
        0x92 -> :sswitch_a
        0x9a -> :sswitch_b
        0xa2 -> :sswitch_c
        0xa8 -> :sswitch_d
        0xb0 -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->hasUserId()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->getUserId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->setUserId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->hasDeviceId()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->getDeviceId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->setDeviceId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->hasRequestId()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->getRequestId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->setRequestId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;

    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->hasChatroomId()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->getChatroomId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->setChatroomId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;

    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->getResult()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->mergeResult(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;

    :cond_6
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->hasLastReadAckTimestamp()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->getLastReadAckTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->setLastReadAckTimestamp(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;

    :cond_7
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->hasOwnerUserId()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->getOwnerUserId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->setOwnerUserId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;

    :cond_8
    invoke-static {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->access$21400(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->orderedChatroomMemberList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->access$21400(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->orderedChatroomMemberList_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    :cond_9
    :goto_1
    invoke-static {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->access$21500(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->readAckEntries_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->access$21500(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->readAckEntries_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    :cond_a
    :goto_2
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->setTitle(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;

    :cond_b
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->hasProfileUrl()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->getProfileUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->setProfileUrl(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;

    :cond_c
    invoke-static {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->access$21800(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->deliveryAckEntries_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->access$21800(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->deliveryAckEntries_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    :cond_d
    :goto_3
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->hasLastDeliveryAckTimestamp()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->getLastDeliveryAckTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->setLastDeliveryAckTimestamp(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;

    :cond_e
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->hasMsgTtl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->getMsgTtl()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->setMsgTtl(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;

    goto/16 :goto_0

    :cond_f
    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->ensureOrderedChatroomMemberListIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->orderedChatroomMemberList_:Ljava/util/List;

    invoke-static {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->access$21400(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_10
    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->ensureReadAckEntriesIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->readAckEntries_:Ljava/util/List;

    invoke-static {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->access$21500(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_11
    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->ensureDeliveryAckEntriesIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->deliveryAckEntries_:Ljava/util/List;

    invoke-static {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->access$21800(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3
.end method

.method public mergeResult(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->result_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->result_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->newBuilder(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->result_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    :goto_0
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->result_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    goto :goto_0
.end method

.method public removeDeliveryAckEntries(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->ensureDeliveryAckEntriesIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->deliveryAckEntries_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0
.end method

.method public removeOrderedChatroomMemberList(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->ensureOrderedChatroomMemberListIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->orderedChatroomMemberList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0
.end method

.method public removeReadAckEntries(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->ensureReadAckEntriesIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->readAckEntries_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0
.end method

.method public setChatroomId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->chatroomId_:J

    return-object p0
.end method

.method public setDeliveryAckEntries(ILcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->ensureDeliveryAckEntriesIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->deliveryAckEntries_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setDeliveryAckEntries(ILcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->ensureDeliveryAckEntriesIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->deliveryAckEntries_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setDeviceId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->deviceId_:J

    return-object p0
.end method

.method public setLastDeliveryAckTimestamp(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->lastDeliveryAckTimestamp_:J

    return-object p0
.end method

.method public setLastReadAckTimestamp(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->lastReadAckTimestamp_:J

    return-object p0
.end method

.method public setMsgTtl(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    iput p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->msgTtl_:I

    return-object p0
.end method

.method public setOrderedChatroomMemberList(ILcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->ensureOrderedChatroomMemberListIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->orderedChatroomMemberList_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setOrderedChatroomMemberList(ILcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->ensureOrderedChatroomMemberListIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->orderedChatroomMemberList_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setOwnerUserId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->ownerUserId_:J

    return-object p0
.end method

.method public setProfileUrl(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->profileUrl_:Ljava/lang/Object;

    return-object p0
.end method

.method setProfileUrl(Lcom/google/protobuf/ByteString;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->profileUrl_:Ljava/lang/Object;

    return-void
.end method

.method public setReadAckEntries(ILcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->ensureReadAckEntriesIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->readAckEntries_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setReadAckEntries(ILcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->ensureReadAckEntriesIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->readAckEntries_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setRequestId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->requestId_:J

    return-object p0
.end method

.method public setResult(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->result_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    return-object p0
.end method

.method public setResult(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->result_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->title_:Ljava/lang/Object;

    return-object p0
.end method

.method setTitle(Lcom/google/protobuf/ByteString;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->title_:Ljava/lang/Object;

    return-void
.end method

.method public setUserId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply$Builder;->userId_:J

    return-object p0
.end method
