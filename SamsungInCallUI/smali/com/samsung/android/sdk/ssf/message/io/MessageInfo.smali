.class public Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;
    }
.end annotation


# instance fields
.field private msgId:J

.field private msgMedia:Lcom/samsung/android/sdk/ssf/message/io/MessageMedia;

.field private msgText:Ljava/lang/String;

.field private msgType:Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;

.field private senderChatId:J

.field private sentTimeInMillis:J


# direct methods
.method public constructor <init>(JLcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/message/io/MessageMedia;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;->msgId:J

    iput-object p3, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;->msgType:Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;

    iput-object p4, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;->msgText:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;->msgMedia:Lcom/samsung/android/sdk/ssf/message/io/MessageMedia;

    iput-wide p6, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;->senderChatId:J

    iput-wide p8, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;->sentTimeInMillis:J

    return-void
.end method


# virtual methods
.method public getMsgId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;->msgId:J

    return-wide v0
.end method

.method public getMsgMedia()Lcom/samsung/android/sdk/ssf/message/io/MessageMedia;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;->msgMedia:Lcom/samsung/android/sdk/ssf/message/io/MessageMedia;

    return-object v0
.end method

.method public getMsgText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;->msgText:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgType()Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;->msgType:Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;

    return-object v0
.end method

.method public getSenderChatId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;->senderChatId:J

    return-wide v0
.end method

.method public getSentTimeInMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;->sentTimeInMillis:J

    return-wide v0
.end method
