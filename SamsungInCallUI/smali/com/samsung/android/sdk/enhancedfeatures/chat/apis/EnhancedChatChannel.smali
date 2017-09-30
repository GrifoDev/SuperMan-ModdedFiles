.class public final Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final appId:Ljava/lang/String;

.field public chatIdMsisdnListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;

.field private enhancedChat:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;

.field private listener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

.field private messageChannel:Lcom/samsung/android/sdk/ssf/message/MessageChannel;

.field private messageChannelListener:Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/message/io/KeySet;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;Lcom/samsung/android/sdk/ssf/account/AuthorizationListener;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->messageChannelListener:Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel$2;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->chatIdMsisdnListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;

    iput-object p5, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->listener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->enhancedChat:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;

    iput-object p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->appId:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/MessageChannel;

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->messageChannelListener:Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/message/MessageChannel;-><init>(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/message/io/KeySet;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;Lcom/samsung/android/sdk/ssf/account/AuthorizationListener;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->messageChannel:Lcom/samsung/android/sdk/ssf/message/MessageChannel;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->listener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Lcom/samsung/android/sdk/ssf/message/io/MessageRoom;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->convertMessageRoom(Lcom/samsung/android/sdk/ssf/message/io/MessageRoom;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->createMessageRoomRequest(Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->createGroupMessageRoomRequest(Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->changeMessageRoomOwnerRequest(Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->inviteUsersToMessageRoomRequest(Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->expelMessageRoomMemberRequest(Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->readMessageUptoRequest(Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->readTimeMessageRequest(Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->convertMessageInfo(Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->getMessageInfoType(Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->convertMessageAckArray(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->convertDuplicatedMessageUsers(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->enhancedChat:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->convertMessageUsers(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->convertMessageRoom_Member(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->getMessageRoomType(Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->convertMemberStatus(Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->verifyChatDbMemberChanged(Ljava/util/ArrayList;)V

    return-void
.end method

.method private changeMessageRoomOwnerRequest(Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeMessageRoomOwnerRequest:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->reqId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", msisdn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;->getMsisdn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", chatid; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;->getChatId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeMessageRoomOwnerRequest:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;->getMsisdn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", chatid; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;->getChatId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->messageChannel:Lcom/samsung/android/sdk/ssf/message/MessageChannel;

    iget-wide v2, p1, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->reqId:J

    iget-wide v4, p1, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->msgRoomId:J

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;->getChatId()J

    move-result-wide v6

    iget v8, p1, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->timeoutInSecs:I

    iget-object v9, p1, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->clientData:Landroid/os/Bundle;

    invoke-virtual/range {v1 .. v9}, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->changeMessageRoomOwner(JJJILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeMessageRoomOwnerRequest error:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private convertDuplicatedMessageUsers(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/MessageRoomResult$DuplicatedMessageUsers;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomResult$DuplicatedMessageUsers;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoomResult$DuplicatedMessageUsers;

    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomResult$DuplicatedMessageUsers;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoomResult$DuplicatedMessageUsers;->getUserList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->convertMessageUsers(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomResult$DuplicatedMessageUsers;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method private convertMemberStatus(Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;->DEREGISTERED:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;->DEREGISTERED:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;->DISABLED:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;->DISABLED:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;->ENABLED:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;->ENABLED:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;->ENTERED:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;

    if-ne p1, v0, :cond_3

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;->ENTERED:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;->EXPELLED:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;

    if-ne p1, v0, :cond_4

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;->EXPELLED:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;->LEFT:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;

    if-ne p1, v0, :cond_5

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;->LEFT:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;->MEMBER:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;

    if-ne p1, v0, :cond_6

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;->MEMBER:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;->OWNER:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;

    if-ne p1, v0, :cond_7

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;->OWNER:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;->OWNER_BY_SYSTEM:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;

    if-ne p1, v0, :cond_8

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;->OWNER_BY_SYSTEM:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private convertMessageAck(Lcom/samsung/android/sdk/ssf/message/io/MessageAck;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatAck;
    .locals 6

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatAck;

    iget-wide v1, p1, Lcom/samsung/android/sdk/ssf/message/io/MessageAck;->msgId:J

    iget-object v3, p1, Lcom/samsung/android/sdk/ssf/message/io/MessageAck;->receiverChatid:Ljava/lang/String;

    iget-wide v4, p1, Lcom/samsung/android/sdk/ssf/message/io/MessageAck;->sentTime:J

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatAck;-><init>(JLjava/lang/String;J)V

    return-object v0
.end method

.method private convertMessageAckArray(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/MessageAck;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatAck;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;->getChatId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/MessageAck;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->convertMessageAck(Lcom/samsung/android/sdk/ssf/message/io/MessageAck;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatAck;

    move-result-object v4

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/message/io/MessageAck;->receiverChatid:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatAck;->setReceiverMsisdn(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_2
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method

.method private convertMessageInfo(Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo;
    .locals 10

    if-eqz p1, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;->getMsgId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;->getMsgType()Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->getMessageInfoType(Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;->getMsgText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;->getMsgMedia()Lcom/samsung/android/sdk/ssf/message/io/MessageMedia;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->convertMessageMedia(Lcom/samsung/android/sdk/ssf/message/io/MessageMedia;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;->getSenderChatId()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;->getSentTimeInMillis()J

    move-result-wide v8

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo;-><init>(JLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia;JJ)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private convertMessageMedia(Lcom/samsung/android/sdk/ssf/message/io/MessageMedia;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia;
    .locals 7

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia;->getType()Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->getMessageMediaType(Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$Type;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia;->getFileContents()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->convertMessageMediaFileContent(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia;->getShopContentIds()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia;->getLatitude()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia;->getLongitude()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$Type;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private convertMessageMedia(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia;)Lcom/samsung/android/sdk/ssf/message/io/MessageMedia;
    .locals 8

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia;->getFileContents()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia;->getFileContents()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$FileContent;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$FileContent;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$FileContent;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$FileContent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$FileContent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$FileContent;->getSize()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$FileContent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v2, v6

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia;->getType()Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$Type;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->getMediaMsgType(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$Type;)Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia;->getShopContentIds()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia;->getLatitude()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia;->getLongitude()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia;-><init>(Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v0

    :cond_2
    move-object v0, v2

    goto :goto_1
.end method

.method private convertMessageMediaFileContent(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$FileContent;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$FileContent;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$FileContent;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$FileContent;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$FileContent;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$FileContent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$FileContent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$FileContent;->getSize()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$FileContent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v0, v6

    :cond_1
    return-object v0
.end method

.method private convertMessageRoom(Lcom/samsung/android/sdk/ssf/message/io/MessageRoom;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom;
    .locals 8

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom;->getMsgRoomMemberList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom;->getMsgRoomMemberList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;->getChatId()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;->getMsisdn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;->getStatus()Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->convertMemberStatus(Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    move-result-object v0

    invoke-direct {v2, v6, v7, v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member;-><init>(JLjava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;)V

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom;->getMsgRoomId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom;->getMsgRoomType()Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->getMessageRoomType(Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom;->getMsgRoomTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom;->getMsgTtl()I

    move-result v7

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom;-><init>(JLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;Ljava/util/ArrayList;Ljava/lang/String;I)V

    :goto_1
    return-object v1

    :cond_1
    move-object v1, v5

    goto :goto_1
.end method

.method private convertMessageRoom_Member(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;

    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;->getChatId()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;->getMsisdn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;->getStatus()Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->convertMemberStatus(Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    move-result-object v0

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member;-><init>(JLjava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method private convertMessageUsers(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/User;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/User;

    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/User;->getChatId()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/User;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v5, v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;-><init>(JLjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method private createGroupMessageRoomRequest(Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createGroupMessageRoomRequest:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p1, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->reqId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msgRoomTitle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->msgRoomTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;

    new-instance v3, Lcom/samsung/android/sdk/ssf/message/io/User;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;->getChatId()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;->getMsisdn()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v6, v7, v5}, Lcom/samsung/android/sdk/ssf/message/io/User;-><init>(JLjava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    const-string v3, "+"

    const-string v5, ""

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->getAllUsersList()Ljava/util/HashSet;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invited users:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", validUsers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inValidUsers:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", validUsers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;

    const-wide/16 v6, -0x1

    invoke-direct {v3, v6, v7, v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;-><init>(JLjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inValidUsers:  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p1, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->clientData:Landroid/os/Bundle;

    if-nez v7, :cond_2

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    :cond_2
    const-string v0, "InvalidArray"

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->messageChannel:Lcom/samsung/android/sdk/ssf/message/MessageChannel;

    iget-wide v2, p1, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->reqId:J

    iget-object v5, p1, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->msgRoomTitle:Ljava/lang/String;

    iget v6, p1, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->timeoutInSecs:I

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->createMessageRoom(JLjava/util/ArrayList;Ljava/lang/String;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createGroupMessageRoomRequest error:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private createMessageRoomRequest(Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createMessageRoomRequest:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->reqId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", chatuser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v4, Lcom/samsung/android/sdk/ssf/message/io/User;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;->getChatId()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v2, v3, v0}, Lcom/samsung/android/sdk/ssf/message/io/User;-><init>(JLjava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->messageChannel:Lcom/samsung/android/sdk/ssf/message/MessageChannel;

    iget-wide v2, p1, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->reqId:J

    iget v5, p1, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->timeoutInSecs:I

    iget-object v6, p1, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->clientData:Landroid/os/Bundle;

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->createMessageRoom(JLcom/samsung/android/sdk/ssf/message/io/User;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createMessageRoomRequest error:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private expelMessageRoomMemberRequest(Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;",
            ">;)V"
        }
    .end annotation

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;->getChatId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expelMessageRoomMemberRequest:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p1, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->reqId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->messageChannel:Lcom/samsung/android/sdk/ssf/message/MessageChannel;

    iget-wide v2, p1, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->reqId:J

    iget-wide v4, p1, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->msgRoomId:J

    iget v7, p1, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->timeoutInSecs:I

    iget-object v8, p1, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->clientData:Landroid/os/Bundle;

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->expelMessageRoomMember(JJLjava/util/ArrayList;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expelMessageRoomMemberRequest error:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getMediaMsgType(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$Type;)Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$Type;->FILE:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$Type;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;->FILE:Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$Type;->LOCATION:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$Type;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;->LOCATION:Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$Type;->STICKER:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$Type;

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;->STICKER:Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMessageInfoType(Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;->TEXT:Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;->TEXT:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;->MEDIA:Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;->MEDIA:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;->CUSTOM:Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;->CUSTOM:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMessageMediaType(Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$Type;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;->FILE:Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$Type;->FILE:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$Type;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;->LOCATION:Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$Type;->LOCATION:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$Type;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;->STICKER:Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$Type;->STICKER:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$Type;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMessageRoomType(Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;->SINGLE:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;->SINGLE:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;->GROUP:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;->GROUP:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMsgType(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;)Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;->TEXT:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;->TEXT:Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;->MEDIA:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;->MEDIA:Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;->CUSTOM:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;->CUSTOM:Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMsisdnList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    const-string v3, "+"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private inviteUsersToMessageRoomRequest(Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;",
            ">;)V"
        }
    .end annotation

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;

    new-instance v2, Lcom/samsung/android/sdk/ssf/message/io/User;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;->getChatId()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v4, v5, v0}, Lcom/samsung/android/sdk/ssf/message/io/User;-><init>(JLjava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inviteUsersToMessageRoomRequest:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", chatid; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p1, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->reqId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->messageChannel:Lcom/samsung/android/sdk/ssf/message/MessageChannel;

    iget-wide v2, p1, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->reqId:J

    iget-wide v4, p1, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->msgRoomId:J

    iget v7, p1, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->timeoutInSecs:I

    iget-object v8, p1, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->clientData:Landroid/os/Bundle;

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->inviteUsersToMessageRoom(JJLjava/util/ArrayList;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inviteUsersToMessageRoomRequest error:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private readMessageUptoRequest(Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;Ljava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readMessageUptoRequest:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->reqId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msisdn:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;->getMsisdn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", chatid; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;->getChatId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->messageChannel:Lcom/samsung/android/sdk/ssf/message/MessageChannel;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->reqId:J

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->msgRoomId:J

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->lastMsgId:J

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->lastMsgType:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->getMsgType(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;)Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;

    move-result-object v10

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;->getChatId()J

    move-result-wide v11

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->lastMsgSentTimeInMillis:J

    move-object/from16 v0, p1

    iget v15, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->timeoutInSecs:I

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->clientData:Landroid/os/Bundle;

    move-object/from16 v16, v0

    invoke-virtual/range {v3 .. v16}, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->readMessageUpto(JJJLcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;JJILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readMessageUptoRequest error:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private readTimeMessageRequest(Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readTimeMessageRequest:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;->getMsisdn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", chatid; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;->getChatId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->reqId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->messageChannel:Lcom/samsung/android/sdk/ssf/message/MessageChannel;

    iget-wide v2, p1, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->reqId:J

    iget-wide v4, p1, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->msgRoomId:J

    iget-wide v6, p1, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->msgId:J

    iget-object v8, p1, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->msgMediaType:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$Type;

    invoke-direct {p0, v8}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->getMediaMsgType(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$Type;)Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;

    move-result-object v8

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;->getChatId()J

    move-result-wide v9

    iget v11, p1, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->timeoutInSecs:I

    iget-object v12, p1, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;->clientData:Landroid/os/Bundle;

    invoke-virtual/range {v1 .. v12}, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->readTimedMessage(JJJLcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;JILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readTimeMessageRequest error:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private verifyChatDbMemberChanged(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;->getStatus()Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;->DISABLED:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;->getStatus()Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;->DEREGISTERED:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;

    if-ne v2, v3, :cond_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Chat Member: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;->getStatus()Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",deleting from db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;->getChatId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/db/MessageChatIdTable;->delete(J)J

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final changeMessageRoomMsgLifeTime(JJIILandroid/os/Bundle;)V
    .locals 9

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->messageChannel:Lcom/samsung/android/sdk/ssf/message/MessageChannel;

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->changeMessageRoomMsgLifeTime(JJIILandroid/os/Bundle;)V

    return-void
.end method

.method public final changeMessageRoomOwner(JJLjava/lang/String;ILandroid/os/Bundle;)V
    .locals 13

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Request ID is Invalid."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-gtz v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Message ID is Invalid."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    if-eqz p5, :cond_2

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "New Owner DUID is Invalid."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeMessageRoomOwner, reqId  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;

    const/16 v3, 0x67

    move-wide v4, p1

    move-wide/from16 v6, p3

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;-><init>(IJJILandroid/os/Bundle;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "+"

    const-string v4, ""

    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->enhancedChat:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->chatIdMsisdnListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;

    move-wide v4, v10

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->getChatIdForMsisdn(JLjava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;Ljava/lang/Object;)V

    return-void
.end method

.method public final changeMessageRoomTitle(JJLjava/lang/String;ILandroid/os/Bundle;)V
    .locals 9

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->messageChannel:Lcom/samsung/android/sdk/ssf/message/MessageChannel;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->changeMessageRoomTitle(JJLjava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method

.method public final close()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->messageChannel:Lcom/samsung/android/sdk/ssf/message/MessageChannel;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->close()Z

    move-result v0

    return v0
.end method

.method public final createMessageRoom(JLcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;ILandroid/os/Bundle;)V
    .locals 11

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No Message User is invited"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request ID is Invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createMessageRoom, tempReqId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reqId  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;

    const/16 v1, 0x65

    const-string v4, ""

    const/4 v6, 0x0

    move-wide v2, p1

    move v5, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;-><init>(IJLjava/lang/String;ILjava/util/HashSet;Landroid/os/Bundle;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    const-string v2, "+"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->enhancedChat:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->chatIdMsisdnListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;

    move-wide v2, v8

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->getChatIdForMsisdn(JLjava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;Ljava/lang/Object;)V

    return-void
.end method

.method public final createMessageRoom(JLjava/util/ArrayList;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request ID is Invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty Title has been given for Chat Room"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {p3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->getMsisdnList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v10

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createMessageRoom group, tempReqId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reqId  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msgRoomTitle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;

    const/16 v1, 0x66

    move-wide v2, p1

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;-><init>(IJLjava/lang/String;ILjava/util/HashSet;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->enhancedChat:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->chatIdMsisdnListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;

    move-wide v2, v8

    move-object v4, v10

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->getChatIdForMsisdn(JLjava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;Ljava/lang/Object;)V

    return-void
.end method

.method public final createMonoMessageRoom(JILandroid/os/Bundle;)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request ID is Invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->messageChannel:Lcom/samsung/android/sdk/ssf/message/MessageChannel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->createMonoGroup(JILandroid/os/Bundle;)V

    return-void
.end method

.method public final destroyMessageRoom(JJILandroid/os/Bundle;)V
    .locals 9

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->messageChannel:Lcom/samsung/android/sdk/ssf/message/MessageChannel;

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->destroyMessageRoom(JJILandroid/os/Bundle;)V

    return-void
.end method

.method public final enterMessageRoom(JJZILandroid/os/Bundle;)V
    .locals 9

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->messageChannel:Lcom/samsung/android/sdk/ssf/message/MessageChannel;

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->enterMessageRoom(JJZILandroid/os/Bundle;)V

    return-void
.end method

.method public final expelMessageRoomMember(JJLjava/util/ArrayList;ILandroid/os/Bundle;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request ID is Invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    cmp-long v0, p3, v2

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message ID is Invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p5, :cond_2

    invoke-virtual {p5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No member exists with valid MSISDN"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expelMessageRoomMember, reqId  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;

    const/16 v1, 0x69

    move-wide v2, p1

    move-wide v4, p3

    move v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;-><init>(IJJILandroid/os/Bundle;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "+"

    const-string v5, ""

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->enhancedChat:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->chatIdMsisdnListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->getChatIdForMsisdn(JLjava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;Ljava/lang/Object;)V

    return-void
.end method

.method public final getAllUnreadMessages(JII)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request ID is Invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gtz p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxCount is Invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->messageChannel:Lcom/samsung/android/sdk/ssf/message/MessageChannel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->getAllUnreadMessages(JII)V

    return-void
.end method

.method public final inviteUsersToMessageRoom(JJLjava/util/ArrayList;ILandroid/os/Bundle;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request ID is Invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    cmp-long v0, p3, v2

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message ID is Invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p5, :cond_2

    invoke-virtual {p5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No User has been invited to Chat Room"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inviteUsersToMessageRoom, reqId  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;

    const/16 v1, 0x68

    move-wide v2, p1

    move-wide v4, p3

    move v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;-><init>(IJJILandroid/os/Bundle;)V

    invoke-static {p5}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->getMsisdnList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->enhancedChat:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->chatIdMsisdnListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->getChatIdForMsisdn(JLjava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;Ljava/lang/Object;)V

    return-void
.end method

.method public final isTyping(JJLjava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;IILandroid/os/Bundle;)V
    .locals 11

    if-nez p6, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Content type cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->messageChannel:Lcom/samsung/android/sdk/ssf/message/MessageChannel;

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;->getValue()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoomTypingStatus$TypingStatusContentType;->valueOf(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;)Lcom/samsung/android/sdk/ssf/message/io/MessageRoomTypingStatus$TypingStatusContentType;

    move-result-object v7

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->isTyping(JJLjava/lang/String;Lcom/samsung/android/sdk/ssf/message/io/MessageRoomTypingStatus$TypingStatusContentType;IILandroid/os/Bundle;)V

    return-void
.end method

.method public final joinMessageRoom(JJILandroid/os/Bundle;)V
    .locals 9

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->messageChannel:Lcom/samsung/android/sdk/ssf/message/MessageChannel;

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->joinMessageRoom(JJILandroid/os/Bundle;)V

    return-void
.end method

.method public final leaveMessageRooms(JLjava/util/ArrayList;ILandroid/os/Bundle;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/LeaveChatRoomData;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    if-eqz p3, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/LeaveChatRoomData;

    new-instance v2, Lcom/samsung/android/sdk/ssf/message/io/LeaveChatRoomData;

    iget-object v3, v0, Lcom/samsung/android/sdk/ssf/message/io/LeaveChatRoomData;->chatRoomId:Ljava/lang/String;

    iget v0, v0, Lcom/samsung/android/sdk/ssf/message/io/LeaveChatRoomData;->denyInvitation:I

    invoke-direct {v2, v3, v0}, Lcom/samsung/android/sdk/ssf/message/io/LeaveChatRoomData;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->messageChannel:Lcom/samsung/android/sdk/ssf/message/MessageChannel;

    move-wide v2, p1

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->leaveMessageRooms(JLjava/util/ArrayList;ILandroid/os/Bundle;)V

    return-void
.end method

.method public final readMessageUpto(JJJLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;Ljava/lang/String;JILandroid/os/Bundle;)V
    .locals 15

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Request ID is Invalid."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-gtz v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Message Room ID is Invalid."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-gtz v2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The ID of the last message which is read is Invalid."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    if-eqz p8, :cond_3

    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The DUID of the sender who sent the last message is Invalid."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    if-nez p7, :cond_5

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The MessageInfo.Type of the last message which is read is Invalid."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readMessageUpto, reqId  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;

    const/16 v3, 0x6a

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move-wide/from16 v11, p9

    move/from16 v13, p11

    move-object/from16 v14, p12

    invoke-direct/range {v2 .. v14}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;-><init>(IJJJLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;JILandroid/os/Bundle;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "+"

    const-string v4, ""

    move-object/from16 v0, p8

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->enhancedChat:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->chatIdMsisdnListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->getChatIdForMsisdn(JLjava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;Ljava/lang/Object;)V

    return-void
.end method

.method public final readTimedMessage(JJJLcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$Type;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 13

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Request ID is Invalid."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-gtz v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Message Room ID is Invalid."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    if-eqz p8, :cond_2

    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The DUID of the sender who sent the timed message is Invalid."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-gtz v2, :cond_4

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Message ID is Invalid."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    if-nez p7, :cond_5

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The media type of the timed message which is read is Invalid."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readTimedMessage, reqId  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;

    const/16 v3, 0x6b

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move/from16 v11, p9

    move-object/from16 v12, p10

    invoke-direct/range {v2 .. v12}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/ChatIdRequest;-><init>(IJJJLcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$Type;ILandroid/os/Bundle;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "+"

    const-string v4, ""

    move-object/from16 v0, p8

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->enhancedChat:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->chatIdMsisdnListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->getChatIdForMsisdn(JLjava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;Ljava/lang/Object;)V

    return-void
.end method

.method public final recallMessage(JJJIJLandroid/os/Bundle;)V
    .locals 13

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->messageChannel:Lcom/samsung/android/sdk/ssf/message/MessageChannel;

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->recallMessage(JJJIJLandroid/os/Bundle;)V

    return-void
.end method

.method public final sendMessage(JJJLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia;ILandroid/os/Bundle;)V
    .locals 15

    move-object/from16 v0, p9

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->convertMessageMedia(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia;)Lcom/samsung/android/sdk/ssf/message/io/MessageMedia;

    move-result-object v12

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->messageChannel:Lcom/samsung/android/sdk/ssf/message/MessageChannel;

    move-object/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->getMsgType(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;)Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;

    move-result-object v10

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v11, p8

    move/from16 v13, p10

    move-object/from16 v14, p11

    invoke-virtual/range {v3 .. v14}, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->sendMessage(JJJLcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/message/io/MessageMedia;ILandroid/os/Bundle;)V

    return-void
.end method

.method public setChatChannelListener(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->listener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    return-void
.end method

.method public final shutdown()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->messageChannel:Lcom/samsung/android/sdk/ssf/message/MessageChannel;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->shutDown()Z

    move-result v0

    return v0
.end method

.method public final subscribeTypingStatus(JJILandroid/os/Bundle;)V
    .locals 9

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->messageChannel:Lcom/samsung/android/sdk/ssf/message/MessageChannel;

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->subscribeTypingStatus(JJILandroid/os/Bundle;)V

    return-void
.end method

.method public final unSubscribeTypingStatus(JJILandroid/os/Bundle;)V
    .locals 9

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->messageChannel:Lcom/samsung/android/sdk/ssf/message/MessageChannel;

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->unSubscribeTypingStatus(JJILandroid/os/Bundle;)V

    return-void
.end method

.method final updateKey(Lcom/samsung/android/sdk/ssf/message/io/KeySet;)Z
    .locals 7

    new-instance v1, Lcom/samsung/android/sdk/ssf/message/io/KeySet;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/KeySet;->getChatid()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/KeySet;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/KeySet;->getExpiredkey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/KeySet;->getGpbauthkey()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/ssf/message/io/KeySet;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->messageChannel:Lcom/samsung/android/sdk/ssf/message/MessageChannel;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/message/MessageChannel;->updateKey(Lcom/samsung/android/sdk/ssf/message/io/KeySet;)Z

    move-result v0

    return v0
.end method
