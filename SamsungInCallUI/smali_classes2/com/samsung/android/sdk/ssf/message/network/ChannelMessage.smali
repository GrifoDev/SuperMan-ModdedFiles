.class public Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/protobuf/GeneratedMessageLite;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# instance fields
.field private gpbMsg:Lcom/google/protobuf/GeneratedMessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private protocolVersion:I

.field private reqId:J

.field private type:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;


# direct methods
.method public constructor <init>(JLcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Lcom/google/protobuf/GeneratedMessageLite;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;",
            "TT;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->reqId:J

    iput-object p3, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->type:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    iput-object p4, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->gpbMsg:Lcom/google/protobuf/GeneratedMessageLite;

    iput p5, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->protocolVersion:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getGpbMsg()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->gpbMsg:Lcom/google/protobuf/GeneratedMessageLite;

    return-object v0
.end method

.method public getProtocolVersion()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->protocolVersion:I

    return v0
.end method

.method public getReqId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->reqId:J

    return-wide v0
.end method

.method public getType()Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->type:Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method
