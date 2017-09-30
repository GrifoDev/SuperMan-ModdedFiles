.class public interface abstract Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatusOrBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/io/SSMGPB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ChatroomMemberStatusOrBuilder"
.end annotation


# virtual methods
.method public abstract getAvailable()Z
.end method

.method public abstract getIsAccepted()Z
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getSecureChatDevice(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;
.end method

.method public abstract getSecureChatDeviceCount()I
.end method

.method public abstract getSecureChatDeviceList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$SecureChatDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUserId()J
.end method

.method public abstract hasAvailable()Z
.end method

.method public abstract hasIsAccepted()Z
.end method

.method public abstract hasName()Z
.end method

.method public abstract hasUserId()Z
.end method
