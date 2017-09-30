.class public final Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;
.super Lcom/google/protobuf/GeneratedMessageLite;

# interfaces
.implements Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/io/SSMGPB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroupKeyEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;
    }
.end annotation


# static fields
.field public static final DEVICEID_FIELD_NUMBER:I = 0x1

.field public static final GROUPKEY_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private deviceId_:J

.field private groupKey_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;-><init>(Z)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;->defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;->defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    iput-byte v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;->memoizedIsInitialized:B

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;->memoizedSerializedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;-><init>(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    iput-byte v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;->memoizedIsInitialized:B

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;->memoizedSerializedSize:I

    return-void
.end method

.method static synthetic access$8802(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;->deviceId_:J

    return-wide p1
.end method

.method static synthetic access$8902(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;->groupKey_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$9002(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;->defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;

    return-object v0
.end method

.method private getGroupKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;->groupKey_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;->groupKey_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private initFields()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;->deviceId_:J

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;->groupKey_:Ljava/lang/Object;

    return-void
.end method

.method public static newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;->access$8600()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;->mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;->access$8500(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;->access$8500(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;->access$8500(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;->access$8500(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;->access$8500(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;->access$8500(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;->access$8500(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;->access$8500(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;->access$8500(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;->access$8500(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;->getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;->defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;

    return-object v0
.end method

.method public getDeviceId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;->deviceId_:J

    return-wide v0
.end method

.method public getGroupKey()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;->groupKey_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;->groupKey_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_1

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;->deviceId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v5, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;->getGroupKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public hasDeviceId()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGroupKey()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;->memoizedIsInitialized:B

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;->newBuilderForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;->toBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;->newBuilder(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry$Builder;

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

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;->getSerializedSize()I

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;->deviceId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;->getGroupKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_1
    return-void
.end method
