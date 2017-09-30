.class public final Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;
.super Lcom/google/protobuf/GeneratedMessageLite;

# interfaces
.implements Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/io/SSMGPB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ForwardUnreadMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;
    }
.end annotation


# static fields
.field public static final DEVICEID_FIELD_NUMBER:I = 0x2

.field public static final INBOXENTRIES_FIELD_NUMBER:I = 0xc

.field public static final ISACTIVEFORWARD_FIELD_NUMBER:I = 0xe

.field public static final NEXTPAGINATIONKEY_FIELD_NUMBER:I = 0xd

.field public static final REQUESTID_FIELD_NUMBER:I = 0xb

.field public static final USERID_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;

.field private static final serialVersionUID:J


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

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private nextPaginationKey_:Ljava/lang/Object;

.field private requestId_:J

.field private userId_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;-><init>(Z)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    iput-byte v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->memoizedIsInitialized:B

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->memoizedSerializedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;-><init>(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    iput-byte v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->memoizedIsInitialized:B

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->memoizedSerializedSize:I

    return-void
.end method

.method static synthetic access$26302(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->userId_:J

    return-wide p1
.end method

.method static synthetic access$26402(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->deviceId_:J

    return-wide p1
.end method

.method static synthetic access$26502(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->requestId_:J

    return-wide p1
.end method

.method static synthetic access$26600(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->inboxEntries_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$26602(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->inboxEntries_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$26702(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->nextPaginationKey_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$26802(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->isActiveForward_:Z

    return p1
.end method

.method static synthetic access$26902(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;

    return-object v0
.end method

.method private getNextPaginationKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->nextPaginationKey_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->nextPaginationKey_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private initFields()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->userId_:J

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->deviceId_:J

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->requestId_:J

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->inboxEntries_:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->nextPaginationKey_:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->isActiveForward_:Z

    return-void
.end method

.method public static newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->access$26100()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->access$26000(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->access$26000(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->access$26000(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->access$26000(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->access$26000(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->access$26000(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->access$26000(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->access$26000(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->access$26000(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;->access$26000(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;

    return-object v0
.end method

.method public getDeviceId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->deviceId_:J

    return-wide v0
.end method

.method public getInboxEntries(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->inboxEntries_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    return-object v0
.end method

.method public getInboxEntriesCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->inboxEntries_:Ljava/util/List;

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

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->inboxEntries_:Ljava/util/List;

    return-object v0
.end method

.method public getInboxEntriesOrBuilder(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntryOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->inboxEntries_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntryOrBuilder;

    return-object v0
.end method

.method public getInboxEntriesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntryOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->inboxEntries_:Ljava/util/List;

    return-object v0
.end method

.method public getIsActiveForward()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->isActiveForward_:Z

    return v0
.end method

.method public getNextPaginationKey()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->nextPaginationKey_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->nextPaginationKey_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getRequestId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->requestId_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->memoizedSerializedSize:I

    const/4 v0, -0x1

    if-eq v2, v0, :cond_0

    :goto_0
    return v2

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v4, :cond_6

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->userId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    iget v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_1

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->deviceId_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    iget v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    const/16 v2, 0xb

    iget-wide v4, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->requestId_:J

    invoke-static {v2, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    move v2, v0

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->inboxEntries_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    const/16 v3, 0xc

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->inboxEntries_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    const/16 v0, 0xd

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->getNextPaginationKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_4
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_5

    const/16 v0, 0xe

    iget-boolean v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->isActiveForward_:Z

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v0

    add-int/2addr v2, v0

    :cond_5
    iput v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->memoizedSerializedSize:I

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method public getUserId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->userId_:J

    return-wide v0
.end method

.method public hasDeviceId()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->bitField0_:I

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

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->bitField0_:I

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

.method public hasNextPaginationKey()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->bitField0_:I

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

.method public hasRequestId()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->bitField0_:I

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

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->memoizedIsInitialized:B

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->newBuilderForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->toBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->newBuilder(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->getSerializedSize()I

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->userId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->deviceId_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_1
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const/16 v0, 0xb

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->requestId_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->inboxEntries_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    const/16 v2, 0xc

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->inboxEntries_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    const/16 v0, 0xd

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->getNextPaginationKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_4
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_5

    const/16 v0, 0xe

    iget-boolean v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->isActiveForward_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_5
    return-void
.end method
