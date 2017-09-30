.class public final Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;

# interfaces
.implements Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/io/SSMGPB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CloseGatewayRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;
    }
.end annotation


# static fields
.field public static final DEVICEID_FIELD_NUMBER:I = 0x2

.field public static final REQUESTID_FIELD_NUMBER:I = 0xb

.field public static final USERID_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private deviceId_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private requestId_:J

.field private userId_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;-><init>(Z)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    iput-byte v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->memoizedIsInitialized:B

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->memoizedSerializedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;-><init>(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    iput-byte v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->memoizedIsInitialized:B

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->memoizedSerializedSize:I

    return-void
.end method

.method static synthetic access$60602(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->userId_:J

    return-wide p1
.end method

.method static synthetic access$60702(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->deviceId_:J

    return-wide p1
.end method

.method static synthetic access$60802(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->requestId_:J

    return-wide p1
.end method

.method static synthetic access$60902(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->userId_:J

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->deviceId_:J

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->requestId_:J

    return-void
.end method

.method public static newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;->access$60400()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;->mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;->access$60300(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;->access$60300(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;->access$60300(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;->access$60300(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;->access$60300(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;->access$60300(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;->access$60300(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;->access$60300(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;->access$60300(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;->access$60300(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;

    return-object v0
.end method

.method public getDeviceId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->deviceId_:J

    return-wide v0
.end method

.method public getRequestId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->requestId_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_1

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->userId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v5, :cond_2

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->deviceId_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    const/16 v1, 0xb

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->requestId_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public getUserId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->userId_:J

    return-wide v0
.end method

.method public hasDeviceId()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->bitField0_:I

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

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->bitField0_:I

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

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->bitField0_:I

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

    iget-byte v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->memoizedIsInitialized:B

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->newBuilderForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->toBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->newBuilder(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest$Builder;

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

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->getSerializedSize()I

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->userId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->deviceId_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_1
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const/16 v0, 0xb

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CloseGatewayRequest;->requestId_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_2
    return-void
.end method
