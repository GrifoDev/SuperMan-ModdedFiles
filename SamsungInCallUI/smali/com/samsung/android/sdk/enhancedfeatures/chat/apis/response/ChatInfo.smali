.class public Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;
    }
.end annotation


# instance fields
.field private msgId:J

.field private msgMedia:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia;

.field private msgText:Ljava/lang/String;

.field private msgType:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;

.field private senderChatid:J

.field private senderMsisdn:Ljava/lang/String;

.field private sentTimeInMillis:J


# direct methods
.method public constructor <init>(JLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo;->msgId:J

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo;->msgType:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;

    iput-object p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo;->msgText:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo;->msgMedia:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia;

    iput-wide p6, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo;->senderChatid:J

    iput-wide p8, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo;->sentTimeInMillis:J

    return-void
.end method


# virtual methods
.method public getMsgId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo;->msgId:J

    return-wide v0
.end method

.method public getMsgMedia()Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo;->msgMedia:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia;

    return-object v0
.end method

.method public getMsgText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo;->msgText:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgType()Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo;->msgType:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;

    return-object v0
.end method

.method public getSenderChatid()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo;->senderChatid:J

    return-wide v0
.end method

.method public getSenderMsisdn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo;->senderMsisdn:Ljava/lang/String;

    return-object v0
.end method

.method public getSentTimeInMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo;->sentTimeInMillis:J

    return-wide v0
.end method

.method public setSenderMsisdn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo;->senderMsisdn:Ljava/lang/String;

    return-void
.end method
