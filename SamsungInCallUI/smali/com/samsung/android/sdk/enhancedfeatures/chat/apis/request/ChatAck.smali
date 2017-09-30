.class public Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatAck;
.super Ljava/lang/Object;


# instance fields
.field private msgId:J

.field private receiverChatid:Ljava/lang/String;

.field private receiverMsisdn:Ljava/lang/String;

.field private sentTime:J


# direct methods
.method public constructor <init>(JLjava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatAck;->msgId:J

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatAck;->receiverChatid:Ljava/lang/String;

    iput-wide p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatAck;->sentTime:J

    return-void
.end method


# virtual methods
.method public getMsgId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatAck;->msgId:J

    return-wide v0
.end method

.method public getReceiverChatid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatAck;->receiverChatid:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverMsisdn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatAck;->receiverMsisdn:Ljava/lang/String;

    return-object v0
.end method

.method public getSentTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatAck;->sentTime:J

    return-wide v0
.end method

.method public setReceiverMsisdn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatAck;->receiverMsisdn:Ljava/lang/String;

    return-void
.end method
