.class public final Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;
.super Lcom/google/protobuf/GeneratedMessageLite;

# interfaces
.implements Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/io/SSMGPB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InboxEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;
    }
.end annotation


# static fields
.field public static final CHATMSG_FIELD_NUMBER:I = 0x6

.field public static final CHATROOMID_FIELD_NUMBER:I = 0xa

.field public static final CHATTYPE_FIELD_NUMBER:I = 0xb

.field public static final MSGID_FIELD_NUMBER:I = 0x1

.field public static final MSGTTL_FIELD_NUMBER:I = 0x7

.field public static final MSGTYPE_FIELD_NUMBER:I = 0x2

.field public static final RECEIVER_FIELD_NUMBER:I = 0x4

.field public static final SECURECHATMSG_FIELD_NUMBER:I = 0x14

.field public static final SENDER_FIELD_NUMBER:I = 0x3

.field public static final SENTTIME_FIELD_NUMBER:I = 0x5

.field private static final defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private chatMsg_:Ljava/lang/Object;

.field private chatType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

.field private chatroomId_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private msgId_:J

.field private msgTtl_:I

.field private msgType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

.field private receiver_:J

.field private secureChatMsg_:Lcom/google/protobuf/ByteString;

.field private sender_:J

.field private sentTime_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;-><init>(Z)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    iput-byte v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->memoizedIsInitialized:B

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->memoizedSerializedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;-><init>(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    iput-byte v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->memoizedIsInitialized:B

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->memoizedSerializedSize:I

    return-void
.end method

.method static synthetic access$2902(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->msgId_:J

    return-wide p1
.end method

.method static synthetic access$3002(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->msgType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->sender_:J

    return-wide p1
.end method

.method static synthetic access$3202(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->receiver_:J

    return-wide p1
.end method

.method static synthetic access$3302(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->sentTime_:J

    return-wide p1
.end method

.method static synthetic access$3402(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->chatMsg_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3502(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->msgTtl_:I

    return p1
.end method

.method static synthetic access$3602(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->chatroomId_:J

    return-wide p1
.end method

.method static synthetic access$3702(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->chatType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    return-object p1
.end method

.method static synthetic access$3802(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->secureChatMsg_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$3902(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->bitField0_:I

    return p1
.end method

.method private getChatMsgBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->chatMsg_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->chatMsg_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public static getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    return-object v0
.end method

.method private initFields()V
    .locals 4

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->msgId_:J

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->TEXT:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->msgType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->sender_:J

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->receiver_:J

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->sentTime_:J

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->chatMsg_:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->msgTtl_:I

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->chatroomId_:J

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->SINGLE:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->chatType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->secureChatMsg_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;->access$2700()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;->mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;->access$2600(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;->access$2600(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;->access$2600(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;->access$2600(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;->access$2600(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;->access$2600(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;->access$2600(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;->access$2600(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;->access$2600(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;->access$2600(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getChatMsg()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->chatMsg_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->chatMsg_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getChatType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->chatType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    return-object v0
.end method

.method public getChatroomId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->chatroomId_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    return-object v0
.end method

.method public getMsgId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->msgId_:J

    return-wide v0
.end method

.method public getMsgTtl()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->msgTtl_:I

    return v0
.end method

.method public getMsgType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->msgType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    return-object v0
.end method

.method public getReceiver()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->receiver_:J

    return-wide v0
.end method

.method public getSecureChatMsg()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->secureChatMsg_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSender()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->sender_:J

    return-wide v0
.end method

.method public getSentTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->sentTime_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_1

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->msgId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v5, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->msgType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->getNumber()I

    move-result v1

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v6, :cond_3

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->sender_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->receiver_:J

    invoke-static {v6, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->sentTime_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getChatMsgBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    const/4 v1, 0x7

    iget v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->msgTtl_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    const/16 v1, 0xa

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->chatroomId_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_9

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->chatType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_a

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->secureChatMsg_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->memoizedSerializedSize:I

    goto/16 :goto_0
.end method

.method public hasChatMsg()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->bitField0_:I

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

.method public hasChatType()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->bitField0_:I

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

.method public hasChatroomId()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->bitField0_:I

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

.method public hasMsgId()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMsgTtl()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->bitField0_:I

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

.method public hasMsgType()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->bitField0_:I

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

.method public hasReceiver()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->bitField0_:I

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

.method public hasSecureChatMsg()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->bitField0_:I

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

.method public hasSender()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->bitField0_:I

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

.method public hasSentTime()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->memoizedIsInitialized:B

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->newBuilderForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->toBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->newBuilder(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry$Builder;

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

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getSerializedSize()I

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->msgId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->msgType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_1
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->sender_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_2
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->receiver_:J

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_3
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->sentTime_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_4
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getChatMsgBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_5
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->msgTtl_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_6
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    const/16 v0, 0xa

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->chatroomId_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_7
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    const/16 v0, 0xb

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->chatType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_8
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    const/16 v0, 0x14

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->secureChatMsg_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_9
    return-void
.end method
