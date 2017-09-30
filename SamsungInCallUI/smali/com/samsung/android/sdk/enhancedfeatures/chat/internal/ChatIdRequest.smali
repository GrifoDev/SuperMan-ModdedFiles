.class public Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;
.super Ljava/lang/Object;


# static fields
.field public static final REQ_CHANGE_MSG_ROOM_OWNER:I = 0x67

.field public static final REQ_CREATE_GROUP_MSG_ROOM:I = 0x66

.field public static final REQ_CREATE_MSG_ROOM:I = 0x65

.field public static final REQ_EXPEL_MSG_ROOM_MEMBER:I = 0x69

.field public static final REQ_INVITE_USERS_TO_MSG_ROOM:I = 0x68

.field public static final REQ_READ_MESSAGE_UPTO:I = 0x6a

.field public static final REQ_READ_TIMED_MESSAGE:I = 0x6b

.field public static final RES_CHANGE_MSG_ROOM_OWNER:I = 0xc9


# instance fields
.field public allUsersList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public clientData:Landroid/os/Bundle;

.field public lastMsgId:J

.field public lastMsgSentTimeInMillis:J

.field public lastMsgType:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;

.field public mRequestType:I

.field public msgId:J

.field public msgMediaType:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$Type;

.field public msgRoomId:J

.field public msgRoomTitle:Ljava/lang/String;

.field public reqId:J

.field public timeoutInSecs:I


# direct methods
.method public constructor <init>(IJJILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->mRequestType:I

    iput-wide p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->reqId:J

    iput-wide p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->msgRoomId:J

    iput p6, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->timeoutInSecs:I

    iput-object p7, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->clientData:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(IJJJLcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$Type;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->mRequestType:I

    iput-wide p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->reqId:J

    iput-wide p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->msgRoomId:J

    iput-wide p6, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->msgId:J

    iput-object p8, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->msgMediaType:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$Type;

    iput p9, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->timeoutInSecs:I

    iput-object p10, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->clientData:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(IJJJLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;JILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->mRequestType:I

    iput-wide p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->reqId:J

    iput-wide p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->msgRoomId:J

    iput-wide p6, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->lastMsgId:J

    iput-object p8, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->lastMsgType:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;

    iput-wide p9, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->lastMsgSentTimeInMillis:J

    iput p11, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->timeoutInSecs:I

    iput-object p12, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->clientData:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;ILjava/util/HashSet;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->mRequestType:I

    iput-wide p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->reqId:J

    iput-object p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->msgRoomTitle:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->timeoutInSecs:I

    iput-object p6, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->allUsersList:Ljava/util/HashSet;

    iput-object p7, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->clientData:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getAllUsersList()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->allUsersList:Ljava/util/HashSet;

    return-object v0
.end method

.method public getmRequestType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->mRequestType:I

    return v0
.end method
