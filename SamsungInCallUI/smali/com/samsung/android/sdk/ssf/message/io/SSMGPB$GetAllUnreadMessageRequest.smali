.class public final Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;

# interfaces
.implements Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/io/SSMGPB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetAllUnreadMessageRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;
    }
.end annotation


# static fields
.field public static final DEVICEID_FIELD_NUMBER:I = 0x2

.field public static final MAXCOUNT_FIELD_NUMBER:I = 0xc

.field public static final REQUESTID_FIELD_NUMBER:I = 0xb

.field public static final USERID_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private deviceId_:J

.field private maxCount_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private requestId_:J

.field private userId_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;-><init>(Z)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    iput-byte v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->memoizedIsInitialized:B

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->memoizedSerializedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;-><init>(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    iput-byte v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->memoizedIsInitialized:B

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->memoizedSerializedSize:I

    return-void
.end method

.method static synthetic access$22502(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->userId_:J

    return-wide p1
.end method

.method static synthetic access$22602(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->deviceId_:J

    return-wide p1
.end method

.method static synthetic access$22702(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->requestId_:J

    return-wide p1
.end method

.method static synthetic access$22802(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->maxCount_:I

    return p1
.end method

.method static synthetic access$22902(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->userId_:J

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->deviceId_:J

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->requestId_:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->maxCount_:I

    return-void
.end method

.method public static newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;->access$22300()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;->mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;->access$22200(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;->access$22200(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;->access$22200(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;->access$22200(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;->access$22200(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;->access$22200(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;->access$22200(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;->access$22200(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;->access$22200(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;->access$22200(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;

    return-object v0
.end method

.method public getDeviceId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->deviceId_:J

    return-wide v0
.end method

.method public getMaxCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->maxCount_:I

    return v0
.end method

.method public getRequestId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->requestId_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_1

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->userId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v5, :cond_2

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->deviceId_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    const/16 v1, 0xb

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->requestId_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    const/16 v1, 0xc

    iget v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->maxCount_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public getUserId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->userId_:J

    return-wide v0
.end method

.method public hasDeviceId()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->bitField0_:I

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

.method public hasMaxCount()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->bitField0_:I

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

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->bitField0_:I

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

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->bitField0_:I

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

    iget-byte v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->memoizedIsInitialized:B

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->newBuilderForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->toBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->newBuilder(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest$Builder;

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

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->getSerializedSize()I

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->userId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->deviceId_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_1
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const/16 v0, 0xb

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->requestId_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_2
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    const/16 v0, 0xc

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageRequest;->maxCount_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_3
    return-void
.end method
