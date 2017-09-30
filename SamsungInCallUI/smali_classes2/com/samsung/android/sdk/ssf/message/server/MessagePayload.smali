.class public Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final TCP_BODY_MAX_BYTES:I = 0xf4240

.field public static final TCP_HEADER_BODYSIZE_BYTES:I = 0x4

.field public static final TCP_HEADER_BYTES:I = 0x6

.field public static final TCP_HEADER_TYPE_BYTES:I = 0x1

.field public static final TCP_HEADER_VERSION_BYTES:I = 0x1


# instance fields
.field private final encryptedBody:[B

.field private final protocolVersion:I

.field private final type:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;->protocolVersion:I

    iput-object p2, p0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;->type:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    iput-object p3, p0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;->encryptedBody:[B

    return-void
.end method

.method public static buildFrom(Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;Lcom/samsung/android/sdk/ssf/message/util/AesCipher;)Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string v1, "buildFrom. Invalid channelMsg."

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    const-string v1, "buildFrom. Invalid cipher."

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getType()Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getGpbMsg()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getProtocolVersion()I

    move-result v3

    if-nez v1, :cond_2

    const-string v1, "buildFrom. Invalid type."

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    const-string v1, "buildFrom. Invalid gpbMsg."

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite;->toByteArray()[B

    move-result-object v2

    if-eqz v2, :cond_4

    array-length v4, v2

    if-nez v4, :cond_5

    :cond_4
    const-string v1, "buildFrom. Invalid body."

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v2}, Lcom/samsung/android/sdk/ssf/message/util/AesCipher;->encrypt([B)[B

    move-result-object v2

    if-eqz v2, :cond_6

    array-length v4, v2

    if-nez v4, :cond_7

    :cond_6
    const-string v1, "buildFrom. Invalid encryptedBody."

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;-><init>(ILcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;[B)V

    goto :goto_0
.end method

.method public static parse(Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;Lcom/samsung/android/sdk/ssf/message/util/AesCipher;)Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_1

    const-string v1, "parse. Invalid payload."

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-nez p1, :cond_2

    const-string v1, "parse. Invalid cipher."

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;->getProtocolVersion()I

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;->getType()Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;->getEncryptedBody()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/ssf/message/util/AesCipher;->decrypt([B)[B

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$1;->$SwitchMap$com$samsung$android$sdk$ssf$message$server$MessagePayload$Type:[I

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    const-string v1, "parse. Unknown payload."

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object v1, v0

    :goto_2
    move-object v0, v1

    goto :goto_0

    :pswitch_0
    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChannelAuthReply;->parseFrom([B)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChannelAuthReply;

    move-result-object v5

    new-instance v1, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChannelAuthReply;->getRequestId()J

    move-result-wide v2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;-><init>(JLcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Lcom/google/protobuf/GeneratedMessageLite;I)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    :try_start_1
    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ClientEcho;->parseFrom([B)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ClientEcho;

    move-result-object v5

    new-instance v1, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ClientEcho;->getRequestId()J

    move-result-wide v2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;-><init>(JLcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Lcom/google/protobuf/GeneratedMessageLite;I)V

    goto :goto_2

    :pswitch_2
    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CreateChatroomReply;->parseFrom([B)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CreateChatroomReply;

    move-result-object v5

    new-instance v1, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CreateChatroomReply;->getRequestId()J

    move-result-wide v2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;-><init>(JLcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Lcom/google/protobuf/GeneratedMessageLite;I)V

    goto :goto_2

    :pswitch_3
    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatReply;->parseFrom([B)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatReply;

    move-result-object v5

    new-instance v1, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatReply;->getRequestId()J

    move-result-wide v2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;-><init>(JLcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Lcom/google/protobuf/GeneratedMessageLite;I)V

    goto :goto_2

    :pswitch_4
    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->parseFrom([B)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;

    move-result-object v5

    new-instance v1, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReply;->getRequestId()J

    move-result-wide v2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;-><init>(JLcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Lcom/google/protobuf/GeneratedMessageLite;I)V

    goto :goto_2

    :pswitch_5
    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageReply;->parseFrom([B)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageReply;

    move-result-object v5

    new-instance v1, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GetAllUnreadMessageReply;->getRequestId()J

    move-result-wide v2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;-><init>(JLcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Lcom/google/protobuf/GeneratedMessageLite;I)V

    goto :goto_2

    :pswitch_6
    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ReadMessageReply;->parseFrom([B)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ReadMessageReply;

    move-result-object v5

    new-instance v1, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ReadMessageReply;->getRequestId()J

    move-result-wide v2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;-><init>(JLcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Lcom/google/protobuf/GeneratedMessageLite;I)V

    goto :goto_2

    :pswitch_7
    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatReply;->parseFrom([B)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatReply;

    move-result-object v5

    new-instance v1, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatReply;->getRequestId()J

    move-result-wide v2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;-><init>(JLcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Lcom/google/protobuf/GeneratedMessageLite;I)V

    goto/16 :goto_2

    :pswitch_8
    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InviteReply;->parseFrom([B)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InviteReply;

    move-result-object v5

    new-instance v1, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InviteReply;->getRequestId()J

    move-result-wide v2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;-><init>(JLcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Lcom/google/protobuf/GeneratedMessageLite;I)V

    goto/16 :goto_2

    :pswitch_9
    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RemoveMemberReply;->parseFrom([B)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RemoveMemberReply;

    move-result-object v5

    new-instance v1, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RemoveMemberReply;->getRequestId()J

    move-result-wide v2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;-><init>(JLcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Lcom/google/protobuf/GeneratedMessageLite;I)V

    goto/16 :goto_2

    :pswitch_a
    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeOwnerReply;->parseFrom([B)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeOwnerReply;

    move-result-object v5

    new-instance v1, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeOwnerReply;->getRequestId()J

    move-result-wide v2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;-><init>(JLcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Lcom/google/protobuf/GeneratedMessageLite;I)V

    goto/16 :goto_2

    :pswitch_b
    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeChatroomMetaReply;->parseFrom([B)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeChatroomMetaReply;

    move-result-object v5

    new-instance v1, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChangeChatroomMetaReply;->getRequestId()J

    move-result-wide v2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;-><init>(JLcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Lcom/google/protobuf/GeneratedMessageLite;I)V

    goto/16 :goto_2

    :pswitch_c
    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SubscribeTypingStatusReply;->parseFrom([B)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SubscribeTypingStatusReply;

    move-result-object v5

    new-instance v1, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SubscribeTypingStatusReply;->getRequestId()J

    move-result-wide v2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;-><init>(JLcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Lcom/google/protobuf/GeneratedMessageLite;I)V

    goto/16 :goto_2

    :pswitch_d
    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->parseFrom([B)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;

    move-result-object v5

    new-instance v1, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsubscribeTypingStatusReply;->getRequestId()J

    move-result-wide v2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;-><init>(JLcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Lcom/google/protobuf/GeneratedMessageLite;I)V

    goto/16 :goto_2

    :pswitch_e
    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;->parseFrom([B)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;

    move-result-object v5

    new-instance v1, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$TypingUpdated;->getRequestId()J

    move-result-wide v2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;-><init>(JLcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Lcom/google/protobuf/GeneratedMessageLite;I)V

    goto/16 :goto_2

    :pswitch_f
    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DestroyChatroomReply;->parseFrom([B)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DestroyChatroomReply;

    move-result-object v5

    new-instance v1, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DestroyChatroomReply;->getRequestId()J

    move-result-wide v2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;-><init>(JLcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Lcom/google/protobuf/GeneratedMessageLite;I)V

    goto/16 :goto_2

    :pswitch_10
    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsealMessageReply;->parseFrom([B)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsealMessageReply;

    move-result-object v5

    new-instance v1, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$UnsealMessageReply;->getRequestId()J

    move-result-wide v2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;-><init>(JLcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Lcom/google/protobuf/GeneratedMessageLite;I)V

    goto/16 :goto_2

    :pswitch_11
    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RecallMessageReply;->parseFrom([B)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RecallMessageReply;

    move-result-object v5

    new-instance v1, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$RecallMessageReply;->getRequestId()J

    move-result-wide v2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;-><init>(JLcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Lcom/google/protobuf/GeneratedMessageLite;I)V

    goto/16 :goto_2

    :pswitch_12
    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->parseFrom([B)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;

    move-result-object v5

    new-instance v1, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->getRequestId()J

    move-result-wide v2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;-><init>(JLcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Lcom/google/protobuf/GeneratedMessageLite;I)V

    goto/16 :goto_2

    :pswitch_13
    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->parseFrom([B)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;

    move-result-object v5

    new-instance v1, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessage;->getRequestId()J

    move-result-wide v2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;-><init>(JLcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Lcom/google/protobuf/GeneratedMessageLite;I)V
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method


# virtual methods
.method public getEncryptedBody()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;->encryptedBody:[B

    return-object v0
.end method

.method public getProtocolVersion()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;->protocolVersion:I

    return v0
.end method

.method public getType()Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;->type:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    return-object v0
.end method
