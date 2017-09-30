.class public final Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;

# interfaces
.implements Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatusOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;",
        "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;",
        ">;",
        "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatusOrBuilder;"
    }
.end annotation


# instance fields
.field private available_:Z

.field private bitField0_:I

.field private isAccepted_:Z

.field private name_:Ljava/lang/Object;

.field private secureChatDevice_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;",
            ">;"
        }
    .end annotation
.end field

.field private userId_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->name_:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->secureChatDevice_:Ljava/util/List;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method static synthetic access$6900(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->buildParsed()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7000()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->create()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private static create()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;-><init>()V

    return-object v0
.end method

.method private ensureSecureChatDeviceIsMutable()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->secureChatDevice_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->secureChatDevice_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    return-void
.end method


# virtual methods
.method public addAllSecureChatDevice(Ljava/lang/Iterable;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;",
            ">;)",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->ensureSecureChatDeviceIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->secureChatDevice_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addSecureChatDevice(ILcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->ensureSecureChatDeviceIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->secureChatDevice_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public addSecureChatDevice(ILcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->ensureSecureChatDeviceIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->secureChatDevice_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public addSecureChatDevice(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->ensureSecureChatDeviceIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->secureChatDevice_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addSecureChatDevice(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->ensureSecureChatDeviceIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->secureChatDevice_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;
    .locals 6

    const/4 v0, 0x1

    new-instance v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;-><init>(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$1;)V

    iget v3, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_4

    :goto_0
    iget-wide v4, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->userId_:J

    invoke-static {v2, v4, v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;->access$7202(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;J)J

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->available_:Z

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;->access$7302(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;Z)Z

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->name_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;->access$7402(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->isAccepted_:Z

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;->access$7502(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;Z)Z

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->secureChatDevice_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->secureChatDevice_:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->secureChatDevice_:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;->access$7602(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;Ljava/util/List;)Ljava/util/List;

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;->access$7702(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;I)I

    return-object v2

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->clear()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->clear()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->userId_:J

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

    iput-boolean v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->available_:Z

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->name_:Ljava/lang/Object;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

    iput-boolean v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->isAccepted_:Z

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->secureChatDevice_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearAvailable()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->available_:Z

    return-object p0
.end method

.method public clearIsAccepted()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->isAccepted_:Z

    return-object p0
.end method

.method public clearName()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;->getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearSecureChatDevice()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->secureChatDevice_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearUserId()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->userId_:J

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->create()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->available_:Z

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;->getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;

    move-result-object v0

    return-object v0
.end method

.method public getIsAccepted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->isAccepted_:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->name_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->name_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getSecureChatDevice(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->secureChatDevice_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;

    return-object v0
.end method

.method public getSecureChatDeviceCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->secureChatDevice_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSecureChatDeviceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->secureChatDevice_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->userId_:J

    return-wide v0
.end method

.method public hasAvailable()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

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

.method public hasIsAccepted()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

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

.method public hasName()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

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

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

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

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    check-cast p1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;
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
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->userId_:J

    goto :goto_0

    :sswitch_2
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->available_:Z

    goto :goto_0

    :sswitch_3
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    :sswitch_4
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->isAccepted_:Z

    goto :goto_0

    :sswitch_5
    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->addSecureChatDevice(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x50 -> :sswitch_4
        0x5a -> :sswitch_5
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;->getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;->hasUserId()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;->getUserId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->setUserId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;->hasAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;->getAvailable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->setAvailable(Z)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;->hasName()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->setName(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;

    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;->hasIsAccepted()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;->getIsAccepted()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->setIsAccepted(Z)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;

    :cond_5
    invoke-static {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;->access$7600(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->secureChatDevice_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;->access$7600(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->secureChatDevice_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->ensureSecureChatDeviceIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->secureChatDevice_:Ljava/util/List;

    invoke-static {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;->access$7600(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public removeSecureChatDevice(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->ensureSecureChatDeviceIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->secureChatDevice_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0
.end method

.method public setAvailable(Z)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

    iput-boolean p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->available_:Z

    return-object p0
.end method

.method public setIsAccepted(Z)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

    iput-boolean p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->isAccepted_:Z

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method setName(Lcom/google/protobuf/ByteString;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->name_:Ljava/lang/Object;

    return-void
.end method

.method public setSecureChatDevice(ILcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->ensureSecureChatDeviceIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->secureChatDevice_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setSecureChatDevice(ILcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->ensureSecureChatDeviceIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->secureChatDevice_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setUserId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus$Builder;->userId_:J

    return-object p0
.end method
