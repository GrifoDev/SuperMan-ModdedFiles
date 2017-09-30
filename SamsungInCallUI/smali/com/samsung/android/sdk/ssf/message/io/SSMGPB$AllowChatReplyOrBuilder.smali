.class public interface abstract Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$AllowChatReplyOrBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/io/SSMGPB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AllowChatReplyOrBuilder"
.end annotation


# virtual methods
.method public abstract getChatroomId()J
.end method

.method public abstract getDeliveryAckEntries(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry;
.end method

.method public abstract getDeliveryAckEntriesCount()I
.end method

.method public abstract getDeliveryAckEntriesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDeviceId()J
.end method

.method public abstract getLastDeliveryAckTimestamp()J
.end method

.method public abstract getLastReadAckTimestamp()J
.end method

.method public abstract getMsgTtl()I
.end method

.method public abstract getOrderedChatroomMemberList(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;
.end method

.method public abstract getOrderedChatroomMemberListCount()I
.end method

.method public abstract getOrderedChatroomMemberListList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatroomMemberStatus;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOwnerUserId()J
.end method

.method public abstract getProfileUrl()Ljava/lang/String;
.end method

.method public abstract getReadAckEntries(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry;
.end method

.method public abstract getReadAckEntriesCount()I
.end method

.method public abstract getReadAckEntriesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WaterMarkEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRequestId()J
.end method

.method public abstract getResult()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getUserId()J
.end method

.method public abstract hasChatroomId()Z
.end method

.method public abstract hasDeviceId()Z
.end method

.method public abstract hasLastDeliveryAckTimestamp()Z
.end method

.method public abstract hasLastReadAckTimestamp()Z
.end method

.method public abstract hasMsgTtl()Z
.end method

.method public abstract hasOwnerUserId()Z
.end method

.method public abstract hasProfileUrl()Z
.end method

.method public abstract hasRequestId()Z
.end method

.method public abstract hasResult()Z
.end method

.method public abstract hasTitle()Z
.end method

.method public abstract hasUserId()Z
.end method
