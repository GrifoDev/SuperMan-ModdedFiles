.class public Lcom/samsung/android/sdk/ssf/message/network/ChannelRequest;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field private replyChannelMsgType:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

.field private reqChannelMsg:Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

.field private userData:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelRequest;->reqChannelMsg:Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    iput-object p2, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelRequest;->replyChannelMsgType:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    iput-object p3, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelRequest;->userData:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getReplyChannelMsgType()Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelRequest;->replyChannelMsgType:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    return-object v0
.end method

.method public getReqChannelMsg()Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelRequest;->reqChannelMsg:Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    return-object v0
.end method

.method public getUserData()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelRequest;->userData:Landroid/os/Bundle;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method
