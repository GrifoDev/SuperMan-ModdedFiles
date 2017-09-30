.class public final Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;

# interfaces
.implements Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/io/SSMGPB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AllowChatRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;
    }
.end annotation


# static fields
.field public static final CHATROOMID_FIELD_NUMBER:I = 0xc

.field public static final DEVICEID_FIELD_NUMBER:I = 0x2

.field public static final ISAUTOALLOW_FIELD_NUMBER:I = 0xd

.field public static final LASTDELIVERYACKTIMESTAMP_FIELD_NUMBER:I = 0x14

.field public static final LASTREADACKTIMESTAMP_FIELD_NUMBER:I = 0x11

.field public static final MAXCOUNT_FIELD_NUMBER:I = 0xe

.field public static final NEEDCHATROOMMETA_FIELD_NUMBER:I = 0x12

.field public static final NEEDDELIVERYACK_FIELD_NUMBER:I = 0x13

.field public static final NEEDORDEREDCHATROOMMEMBERLIST_FIELD_NUMBER:I = 0xf

.field public static final NEEDREADACK_FIELD_NUMBER:I = 0x10

.field public static final REQUESTID_FIELD_NUMBER:I = 0xb

.field public static final USERID_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private chatroomId_:J

.field private deviceId_:J

.field private isAutoAllow_:Z

.field private lastDeliveryAckTimestamp_:J

.field private lastReadAckTimestamp_:J

.field private maxCount_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private needChatroomMeta_:Z

.field private needDeliveryAck_:Z

.field private needOrderedChatroomMemberList_:Z

.field private needReadAck_:Z

.field private requestId_:J

.field private userId_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;-><init>(Z)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    iput-byte v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->memoizedIsInitialized:B

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->memoizedSerializedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;-><init>(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    iput-byte v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->memoizedIsInitialized:B

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->memoizedSerializedSize:I

    return-void
.end method

.method static synthetic access$19102(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->userId_:J

    return-wide p1
.end method

.method static synthetic access$19202(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->deviceId_:J

    return-wide p1
.end method

.method static synthetic access$19302(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->requestId_:J

    return-wide p1
.end method

.method static synthetic access$19402(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->chatroomId_:J

    return-wide p1
.end method

.method static synthetic access$19502(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->isAutoAllow_:Z

    return p1
.end method

.method static synthetic access$19602(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->maxCount_:I

    return p1
.end method

.method static synthetic access$19702(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->needOrderedChatroomMemberList_:Z

    return p1
.end method

.method static synthetic access$19802(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->needReadAck_:Z

    return p1
.end method

.method static synthetic access$19902(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->lastReadAckTimestamp_:J

    return-wide p1
.end method

.method static synthetic access$20002(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->needChatroomMeta_:Z

    return p1
.end method

.method static synthetic access$20102(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->needDeliveryAck_:Z

    return p1
.end method

.method static synthetic access$20202(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->lastDeliveryAckTimestamp_:J

    return-wide p1
.end method

.method static synthetic access$20302(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;

    return-object v0
.end method

.method private initFields()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->userId_:J

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->deviceId_:J

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->requestId_:J

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->chatroomId_:J

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->isAutoAllow_:Z

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->maxCount_:I

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->needOrderedChatroomMemberList_:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->needReadAck_:Z

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->lastReadAckTimestamp_:J

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->needChatroomMeta_:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->needDeliveryAck_:Z

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->lastDeliveryAckTimestamp_:J

    return-void
.end method

.method public static newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->access$18900()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->access$18800(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->access$18800(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->access$18800(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->access$18800(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->access$18800(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->access$18800(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->access$18800(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->access$18800(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->access$18800(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;->access$18800(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getChatroomId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->chatroomId_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;

    return-object v0
.end method

.method public getDeviceId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->deviceId_:J

    return-wide v0
.end method

.method public getIsAutoAllow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->isAutoAllow_:Z

    return v0
.end method

.method public getLastDeliveryAckTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->lastDeliveryAckTimestamp_:J

    return-wide v0
.end method

.method public getLastReadAckTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->lastReadAckTimestamp_:J

    return-wide v0
.end method

.method public getMaxCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->maxCount_:I

    return v0
.end method

.method public getNeedChatroomMeta()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->needChatroomMeta_:Z

    return v0
.end method

.method public getNeedDeliveryAck()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->needDeliveryAck_:Z

    return v0
.end method

.method public getNeedOrderedChatroomMemberList()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->needOrderedChatroomMemberList_:Z

    return v0
.end method

.method public getNeedReadAck()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->needReadAck_:Z

    return v0
.end method

.method public getRequestId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->requestId_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 7

    const/16 v6, 0x10

    const/4 v5, 0x2

    const/4 v4, 0x1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_1

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->userId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v5, :cond_2

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->deviceId_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    const/16 v1, 0xb

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->requestId_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    const/16 v1, 0xc

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->chatroomId_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-ne v1, v6, :cond_5

    const/16 v1, 0xd

    iget-boolean v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->isAutoAllow_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    const/16 v1, 0xe

    iget v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->maxCount_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    const/16 v1, 0xf

    iget-boolean v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->needOrderedChatroomMemberList_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    iget-boolean v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->needReadAck_:Z

    invoke-static {v6, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_9

    const/16 v1, 0x11

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->lastReadAckTimestamp_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_a

    const/16 v1, 0x12

    iget-boolean v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->needChatroomMeta_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_b

    const/16 v1, 0x13

    iget-boolean v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->needDeliveryAck_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_c

    const/16 v1, 0x14

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->lastDeliveryAckTimestamp_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->memoizedSerializedSize:I

    goto/16 :goto_0
.end method

.method public getUserId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->userId_:J

    return-wide v0
.end method

.method public hasChatroomId()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->bitField0_:I

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

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->bitField0_:I

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

.method public hasIsAutoAllow()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->bitField0_:I

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

.method public hasLastDeliveryAckTimestamp()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

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

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

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

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->bitField0_:I

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

.method public hasNeedChatroomMeta()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->bitField0_:I

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

.method public hasNeedDeliveryAck()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->bitField0_:I

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

.method public hasNeedOrderedChatroomMemberList()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->bitField0_:I

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

.method public hasNeedReadAck()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->bitField0_:I

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

.method public hasRequestId()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->bitField0_:I

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

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->bitField0_:I

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

    iget-byte v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->memoizedIsInitialized:B

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->newBuilderForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->toBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->newBuilder(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest$Builder;

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
    .locals 5

    const/16 v4, 0x10

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->getSerializedSize()I

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->userId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->deviceId_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_1
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const/16 v0, 0xb

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->requestId_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_2
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    const/16 v0, 0xc

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->chatroomId_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_3
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-ne v0, v4, :cond_4

    const/16 v0, 0xd

    iget-boolean v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->isAutoAllow_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_4
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    const/16 v0, 0xe

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->maxCount_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_5
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    const/16 v0, 0xf

    iget-boolean v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->needOrderedChatroomMemberList_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_6
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    iget-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->needReadAck_:Z

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_7
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    const/16 v0, 0x11

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->lastReadAckTimestamp_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_8
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    const/16 v0, 0x12

    iget-boolean v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->needChatroomMeta_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_9
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    const/16 v0, 0x13

    iget-boolean v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->needDeliveryAck_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_a
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_b

    const/16 v0, 0x14

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatRequest;->lastDeliveryAckTimestamp_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_b
    return-void
.end method
