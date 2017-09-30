.class public Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;
.super Ljava/lang/Object;


# static fields
.field public static final RES_CHANGE_MSG_ROOM_OWNER:I = 0xc9

.field public static final RES_EXPEL_MESSAGE_ROOM_MEMBER:I = 0xce

.field public static final RES_EXPEL_MESSAGE_ROOM_NON_MEMBER:I = 0xcf

.field public static final RES_READ_MSG_UPTO:I = 0xca

.field public static final RES_RECEIVE_MESSAGE:I = 0xcc

.field public static final RES_RECEIVE_MESSAGE_DELIVERED:I = 0xd0

.field public static final RES_RECEIVE_MESSAGE_NOTIFY:I = 0xd3

.field public static final RES_RECEIVE_MESSAGE_READ:I = 0xd1

.field public static final RES_RECEIVE_TIMED_MESSAGE:I = 0xcd

.field public static final RES_RECEIVE_TIME_MESSAGE_DELIVERED:I = 0xd2

.field public static final RES_SEND_MESSAGE:I = 0xcb


# instance fields
.field public clientData:Landroid/os/Bundle;

.field public lastMsgId:J

.field public lastMsgType:Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;

.field public mRequestType:I

.field public memberUserMsisdnList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public messageACKList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/MessageAck;",
            ">;"
        }
    .end annotation
.end field

.field public msgId:J

.field public msgInfo:Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;

.field public msgLifeTimeInSecs:I

.field public msgResult:Lcom/samsung/android/sdk/ssf/message/io/MessageResult;

.field public msgRoomId:J

.field public msgRoomType:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;

.field public nonMemberUserChatIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public reqId:J

.field public sentTimeInMillis:J


# direct methods
.method public constructor <init>(IJJJJLjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJJJ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/MessageAck;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->mRequestType:I

    iput-wide p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->reqId:J

    iput-wide p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgRoomId:J

    iput-wide p6, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgId:J

    iput-wide p8, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->sentTimeInMillis:J

    iput-object p10, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->messageACKList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(IJJJLcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;JLcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->mRequestType:I

    iput-wide p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->reqId:J

    iput-wide p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgRoomId:J

    iput-wide p6, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->lastMsgId:J

    iput-object p8, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->lastMsgType:Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;

    iput-wide p9, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->sentTimeInMillis:J

    iput-object p11, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgResult:Lcom/samsung/android/sdk/ssf/message/io/MessageResult;

    iput-object p12, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->clientData:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(IJJJLcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->mRequestType:I

    iput-wide p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->reqId:J

    iput-wide p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgRoomId:J

    iput-wide p6, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->sentTimeInMillis:J

    iput-object p9, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->clientData:Landroid/os/Bundle;

    iput-object p8, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgResult:Lcom/samsung/android/sdk/ssf/message/io/MessageResult;

    return-void
.end method

.method public constructor <init>(IJJLcom/samsung/android/sdk/ssf/message/io/MessageInfo;Lcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->mRequestType:I

    iput-wide p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->reqId:J

    iput-wide p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgRoomId:J

    iput-object p6, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgInfo:Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;

    iput-object p7, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgResult:Lcom/samsung/android/sdk/ssf/message/io/MessageResult;

    iput-object p8, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->clientData:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(IJJLcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->mRequestType:I

    iput-wide p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->reqId:J

    iput-wide p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgRoomId:J

    iput-object p7, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgInfo:Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;

    iput-object p6, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgRoomType:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;

    iput p8, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgLifeTimeInSecs:I

    return-void
.end method

.method public constructor <init>(IJJLjava/util/ArrayList;Ljava/util/ArrayList;Lcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/samsung/android/sdk/ssf/message/io/MessageResult;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->mRequestType:I

    iput-wide p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->reqId:J

    iput-wide p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgRoomId:J

    iput-object p6, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->memberUserMsisdnList:Ljava/util/ArrayList;

    iput-object p7, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->nonMemberUserChatIdList:Ljava/util/ArrayList;

    iput-object p8, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgResult:Lcom/samsung/android/sdk/ssf/message/io/MessageResult;

    iput-object p9, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->clientData:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getMsgResult()Lcom/samsung/android/sdk/ssf/message/io/MessageResult;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->msgResult:Lcom/samsung/android/sdk/ssf/message/io/MessageResult;

    return-object v0
.end method

.method public getmRequestType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdResponse;->mRequestType:I

    return v0
.end method
