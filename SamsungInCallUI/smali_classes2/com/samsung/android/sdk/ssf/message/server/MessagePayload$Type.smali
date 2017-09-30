.class public final enum Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

.field public static final enum AllowChatReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

.field public static final enum AllowChatRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

.field public static final enum ChangeChatroomMetaReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

.field public static final enum ChangeChatroomMetaRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

.field public static final enum ChangeOwnerReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

.field public static final enum ChangeOwnerRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

.field public static final enum ChannelAuthReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

.field public static final enum ChannelAuthRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

.field public static final enum ChatReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

.field public static final enum ChatRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

.field public static final enum ClientEcho:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

.field public static final enum ClientEchoReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

.field public static final enum CreateChatroomReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

.field public static final enum CreateChatroomRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

.field public static final enum CurrentTimeReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

.field public static final enum CurrentTimeRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

.field public static final enum DestroyChatroomReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

.field public static final enum DestroyChatroomRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

.field public static final enum EndChatReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

.field public static final enum EndChatRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

.field public static final enum ForwardOnlineMessage:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

.field public static final enum ForwardOnlineMessageReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

.field public static final enum ForwardUnreadMessage:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

.field public static final enum ForwardUnreadMessageReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

.field public static final enum GetAllUnreadMessageReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

.field public static final enum GetAllUnreadMessageRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

.field public static final enum InviteReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

.field public static final enum InviteRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

.field public static final enum IsTyping:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

.field public static final enum ReadMessageReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

.field public static final enum ReadMessageRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

.field public static final enum RecallMessageReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

.field public static final enum RecallMessageRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

.field public static final enum RemoveMemberReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

.field public static final enum RemoveMemberRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

.field public static final enum SubscribeTypingStatus:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

.field public static final enum SubscribeTypingStatusReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

.field public static final enum TypingUpdated:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

.field public static final enum UnsealMessageReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

.field public static final enum UnsealMessageRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

.field public static final enum UnsubscribeTypingStatus:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

.field public static final enum UnsubscribeTypingStatusReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x6

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const-string v1, "ChannelAuthRequest"

    invoke-direct {v0, v1, v4, v4}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ChannelAuthRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const-string v1, "ChannelAuthReply"

    invoke-direct {v0, v1, v5, v5}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ChannelAuthReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const-string v1, "ClientEcho"

    invoke-direct {v0, v1, v6, v6}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ClientEcho:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const-string v1, "ClientEchoReply"

    invoke-direct {v0, v1, v7, v7}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ClientEchoReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const-string v1, "CurrentTimeRequest"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v8}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->CurrentTimeRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const-string v1, "CurrentTimeReply"

    const/4 v2, 0x5

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->CurrentTimeReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const-string v1, "CreateChatroomRequest"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v8, v2}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->CreateChatroomRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const-string v1, "CreateChatroomReply"

    const/4 v2, 0x7

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->CreateChatroomReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const-string v1, "ChatRequest"

    const/16 v2, 0x8

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ChatRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const-string v1, "ChatReply"

    const/16 v2, 0x9

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ChatReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const-string v1, "AllowChatRequest"

    const/16 v2, 0xa

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->AllowChatRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const-string v1, "AllowChatReply"

    const/16 v2, 0xb

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->AllowChatReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const-string v1, "GetAllUnreadMessageRequest"

    const/16 v2, 0xc

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->GetAllUnreadMessageRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const-string v1, "GetAllUnreadMessageReply"

    const/16 v2, 0xd

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->GetAllUnreadMessageReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const-string v1, "ForwardOnlineMessage"

    const/16 v2, 0xe

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ForwardOnlineMessage:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const-string v1, "ForwardOnlineMessageReply"

    const/16 v2, 0xf

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ForwardOnlineMessageReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const-string v1, "ForwardUnreadMessage"

    const/16 v2, 0x10

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ForwardUnreadMessage:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const-string v1, "ForwardUnreadMessageReply"

    const/16 v2, 0x11

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ForwardUnreadMessageReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const-string v1, "ReadMessageRequest"

    const/16 v2, 0x12

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ReadMessageRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const-string v1, "ReadMessageReply"

    const/16 v2, 0x13

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ReadMessageReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const-string v1, "EndChatRequest"

    const/16 v2, 0x14

    const/16 v3, 0x16

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->EndChatRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const-string v1, "EndChatReply"

    const/16 v2, 0x15

    const/16 v3, 0x17

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->EndChatReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const-string v1, "InviteRequest"

    const/16 v2, 0x16

    const/16 v3, 0x18

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->InviteRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const-string v1, "InviteReply"

    const/16 v2, 0x17

    const/16 v3, 0x19

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->InviteReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const-string v1, "RemoveMemberRequest"

    const/16 v2, 0x18

    const/16 v3, 0x1a

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->RemoveMemberRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const-string v1, "RemoveMemberReply"

    const/16 v2, 0x19

    const/16 v3, 0x1b

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->RemoveMemberReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const-string v1, "ChangeOwnerRequest"

    const/16 v2, 0x1a

    const/16 v3, 0x1c

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ChangeOwnerRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const-string v1, "ChangeOwnerReply"

    const/16 v2, 0x1b

    const/16 v3, 0x1d

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ChangeOwnerReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const-string v1, "ChangeChatroomMetaRequest"

    const/16 v2, 0x1c

    const/16 v3, 0x1e

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ChangeChatroomMetaRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const-string v1, "ChangeChatroomMetaReply"

    const/16 v2, 0x1d

    const/16 v3, 0x1f

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ChangeChatroomMetaReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const-string v1, "SubscribeTypingStatus"

    const/16 v2, 0x1e

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->SubscribeTypingStatus:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const-string v1, "SubscribeTypingStatusReply"

    const/16 v2, 0x1f

    const/16 v3, 0x21

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->SubscribeTypingStatusReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const-string v1, "UnsubscribeTypingStatus"

    const/16 v2, 0x20

    const/16 v3, 0x22

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->UnsubscribeTypingStatus:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const-string v1, "UnsubscribeTypingStatusReply"

    const/16 v2, 0x21

    const/16 v3, 0x23

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->UnsubscribeTypingStatusReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const-string v1, "IsTyping"

    const/16 v2, 0x22

    const/16 v3, 0x24

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->IsTyping:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const-string v1, "TypingUpdated"

    const/16 v2, 0x23

    const/16 v3, 0x25

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->TypingUpdated:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const-string v1, "RecallMessageRequest"

    const/16 v2, 0x24

    const/16 v3, 0x26

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->RecallMessageRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const-string v1, "RecallMessageReply"

    const/16 v2, 0x25

    const/16 v3, 0x27

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->RecallMessageReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const-string v1, "DestroyChatroomRequest"

    const/16 v2, 0x26

    const/16 v3, 0x28

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->DestroyChatroomRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const-string v1, "DestroyChatroomReply"

    const/16 v2, 0x27

    const/16 v3, 0x29

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->DestroyChatroomReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const-string v1, "UnsealMessageRequest"

    const/16 v2, 0x28

    const/16 v3, 0x2e

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->UnsealMessageRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const-string v1, "UnsealMessageReply"

    const/16 v2, 0x29

    const/16 v3, 0x2f

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->UnsealMessageReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    const/16 v0, 0x2a

    new-array v0, v0, [Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ChannelAuthRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ChannelAuthReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ClientEcho:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ClientEchoReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x4

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->CurrentTimeRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->CurrentTimeReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    aput-object v2, v0, v1

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->CreateChatroomRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    aput-object v1, v0, v8

    const/4 v1, 0x7

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->CreateChatroomReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ChatRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ChatReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->AllowChatRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->AllowChatReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->GetAllUnreadMessageRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->GetAllUnreadMessageReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ForwardOnlineMessage:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ForwardOnlineMessageReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ForwardUnreadMessage:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ForwardUnreadMessageReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ReadMessageRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ReadMessageReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->EndChatRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->EndChatReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->InviteRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->InviteReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->RemoveMemberRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->RemoveMemberReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ChangeOwnerRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ChangeOwnerReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ChangeChatroomMetaRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ChangeChatroomMetaReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->SubscribeTypingStatus:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->SubscribeTypingStatusReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->UnsubscribeTypingStatus:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->UnsubscribeTypingStatusReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->IsTyping:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->TypingUpdated:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->RecallMessageRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->RecallMessageReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->DestroyChatroomRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->DestroyChatroomReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->UnsealMessageRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->UnsealMessageReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->$VALUES:[Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ChannelAuthRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ChannelAuthReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ClientEcho:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ClientEchoReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->CurrentTimeRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->CurrentTimeReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->CreateChatroomRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->CreateChatroomReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    goto :goto_0

    :pswitch_9
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ChatRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    goto :goto_0

    :pswitch_a
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ChatReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    goto :goto_0

    :pswitch_b
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->AllowChatRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    goto :goto_0

    :pswitch_c
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->AllowChatReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    goto :goto_0

    :pswitch_d
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->GetAllUnreadMessageRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    goto :goto_0

    :pswitch_e
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->GetAllUnreadMessageReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    goto :goto_0

    :pswitch_f
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ForwardOnlineMessage:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    goto :goto_0

    :pswitch_10
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ForwardOnlineMessageReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    goto :goto_0

    :pswitch_11
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ForwardUnreadMessage:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    goto :goto_0

    :pswitch_12
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ForwardUnreadMessageReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    goto :goto_0

    :pswitch_13
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ReadMessageRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    goto :goto_0

    :pswitch_14
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ReadMessageReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    goto :goto_0

    :pswitch_15
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->EndChatRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    goto :goto_0

    :pswitch_16
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->EndChatReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    goto :goto_0

    :pswitch_17
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->InviteRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    goto :goto_0

    :pswitch_18
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->InviteReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    goto :goto_0

    :pswitch_19
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->RemoveMemberRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    goto :goto_0

    :pswitch_1a
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->RemoveMemberReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    goto :goto_0

    :pswitch_1b
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ChangeOwnerRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    goto :goto_0

    :pswitch_1c
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ChangeOwnerReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    goto :goto_0

    :pswitch_1d
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ChangeChatroomMetaRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    goto :goto_0

    :pswitch_1e
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->ChangeChatroomMetaReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    goto :goto_0

    :pswitch_1f
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->SubscribeTypingStatus:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    goto :goto_0

    :pswitch_20
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->SubscribeTypingStatusReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    goto :goto_0

    :pswitch_21
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->UnsubscribeTypingStatus:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    goto :goto_0

    :pswitch_22
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->UnsubscribeTypingStatusReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    goto :goto_0

    :pswitch_23
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->IsTyping:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    goto :goto_0

    :pswitch_24
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->TypingUpdated:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    goto :goto_0

    :pswitch_25
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->RecallMessageRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    goto :goto_0

    :pswitch_26
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->RecallMessageReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    goto :goto_0

    :pswitch_27
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->DestroyChatroomRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    goto :goto_0

    :pswitch_28
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->DestroyChatroomReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    goto :goto_0

    :pswitch_29
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->UnsealMessageRequest:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    goto :goto_0

    :pswitch_2a
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->UnsealMessageReply:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
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
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_29
        :pswitch_2a
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->$VALUES:[Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->value:I

    return v0
.end method
