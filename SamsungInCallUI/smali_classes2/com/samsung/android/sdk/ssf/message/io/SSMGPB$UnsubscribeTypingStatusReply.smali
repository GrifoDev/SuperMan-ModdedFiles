.class public final Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;
.super Lcom/google/protobuf/GeneratedMessageLite;

# interfaces
.implements Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReplyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/io/SSMGPB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnsubscribeTypingStatusReply"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;
    }
.end annotation


# static fields
.field public static final CHATROOMID_FIELD_NUMBER:I = 0xc

.field public static final DEVICEID_FIELD_NUMBER:I = 0x2

.field public static final REQUESTID_FIELD_NUMBER:I = 0xb

.field public static final RESULT_FIELD_NUMBER:I = 0xd

.field public static final USERID_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private chatroomId_:J

.field private deviceId_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private requestId_:J

.field private result_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

.field private userId_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;-><init>(Z)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    iput-byte v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->memoizedIsInitialized:B

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->memoizedSerializedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;-><init>(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    iput-byte v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->memoizedIsInitialized:B

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->memoizedSerializedSize:I

    return-void
.end method

.method static synthetic access$42302(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->userId_:J

    return-wide p1
.end method

.method static synthetic access$42402(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->deviceId_:J

    return-wide p1
.end method

.method static synthetic access$42502(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->requestId_:J

    return-wide p1
.end method

.method static synthetic access$42602(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->chatroomId_:J

    return-wide p1
.end method

.method static synthetic access$42702(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->result_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    return-object p1
.end method

.method static synthetic access$42802(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->userId_:J

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->deviceId_:J

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->requestId_:J

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->chatroomId_:J

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->result_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    return-void
.end method

.method public static newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;->access$42100()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;->mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;->access$42000(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;->access$42000(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;->access$42000(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;->access$42000(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;->access$42000(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;->access$42000(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;->access$42000(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;->access$42000(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;->access$42000(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;->access$42000(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getChatroomId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->chatroomId_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;

    return-object v0
.end method

.method public getDeviceId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->deviceId_:J

    return-wide v0
.end method

.method public getRequestId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->requestId_:J

    return-wide v0
.end method

.method public getResult()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->result_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_1

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->userId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v5, :cond_2

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->deviceId_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    const/16 v1, 0xb

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->requestId_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    const/16 v1, 0xc

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->chatroomId_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->result_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public getUserId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->userId_:J

    return-wide v0
.end method

.method public hasChatroomId()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->bitField0_:I

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

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->bitField0_:I

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

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->bitField0_:I

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

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->bitField0_:I

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

.method public hasUserId()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->bitField0_:I

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

    iget-byte v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->memoizedIsInitialized:B

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->newBuilderForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->toBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->newBuilder(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply$Builder;

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

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->getSerializedSize()I

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->userId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->deviceId_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_1
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const/16 v0, 0xb

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->requestId_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_2
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    const/16 v0, 0xc

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->chatroomId_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_3
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    const/16 v0, 0xd

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->result_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_4
    return-void
.end method
