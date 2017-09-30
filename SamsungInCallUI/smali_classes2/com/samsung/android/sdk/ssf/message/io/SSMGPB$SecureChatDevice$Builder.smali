.class public final Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;

# interfaces
.implements Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDeviceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;",
        "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;",
        ">;",
        "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDeviceOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private deviceId_:J

.field private publicKey_:Ljava/lang/Object;

.field private signKey_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->publicKey_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->signKey_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method static synthetic access$6200(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->buildParsed()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6300()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->create()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private static create()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;
    .locals 6

    const/4 v0, 0x1

    new-instance v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;-><init>(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$1;)V

    iget v3, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2

    :goto_0
    iget-wide v4, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->deviceId_:J

    invoke-static {v2, v4, v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;->access$6502(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;J)J

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->publicKey_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;->access$6602(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->signKey_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;->access$6702(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;->access$6802(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;I)I

    return-object v2

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->clear()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->clear()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;
    .locals 2

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->deviceId_:J

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->publicKey_:Ljava/lang/Object;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->signKey_:Ljava/lang/Object;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearDeviceId()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->deviceId_:J

    return-object p0
.end method

.method public clearPublicKey()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->bitField0_:I

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;->getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;->getPublicKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->publicKey_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearSignKey()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->bitField0_:I

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;->getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;->getSignKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->signKey_:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->create()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;->getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->deviceId_:J

    return-wide v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->publicKey_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->publicKey_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getSignKey()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->signKey_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->signKey_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public hasDeviceId()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPublicKey()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->bitField0_:I

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

.method public hasSignKey()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    check-cast p1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;
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
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->deviceId_:J

    goto :goto_0

    :sswitch_2
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->publicKey_:Ljava/lang/Object;

    goto :goto_0

    :sswitch_3
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->signKey_:Ljava/lang/Object;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;->getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;->hasDeviceId()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;->getDeviceId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->setDeviceId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;->hasPublicKey()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;->getPublicKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->setPublicKey(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;->hasSignKey()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;->getSignKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->setSignKey(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;

    goto :goto_0
.end method

.method public setDeviceId(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->deviceId_:J

    return-object p0
.end method

.method public setPublicKey(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->publicKey_:Ljava/lang/Object;

    return-object p0
.end method

.method setPublicKey(Lcom/google/protobuf/ByteString;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->publicKey_:Ljava/lang/Object;

    return-void
.end method

.method public setSignKey(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->signKey_:Ljava/lang/Object;

    return-object p0
.end method

.method setSignKey(Lcom/google/protobuf/ByteString;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice$Builder;->signKey_:Ljava/lang/Object;

    return-void
.end method
