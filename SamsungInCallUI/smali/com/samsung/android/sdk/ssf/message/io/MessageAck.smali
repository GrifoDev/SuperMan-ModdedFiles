.class public Lcom/samsung/android/sdk/ssf/message/io/MessageAck;
.super Ljava/lang/Object;


# instance fields
.field public msgId:J

.field public receiverChatid:Ljava/lang/String;

.field public sentTime:J


# direct methods
.method public constructor <init>(JLjava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageAck;->msgId:J

    iput-object p3, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageAck;->receiverChatid:Ljava/lang/String;

    iput-wide p4, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageAck;->sentTime:J

    return-void
.end method


# virtual methods
.method public getMsgId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageAck;->msgId:J

    return-wide v0
.end method

.method public getReceiverChatid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageAck;->receiverChatid:Ljava/lang/String;

    return-object v0
.end method

.method public getSentTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageAck;->sentTime:J

    return-wide v0
.end method
