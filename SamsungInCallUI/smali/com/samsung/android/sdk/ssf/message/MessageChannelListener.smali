.class public interface abstract Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onChangeMessageRoomMsgLifeTime(JJILcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V
.end method

.method public abstract onChangeMessageRoomOwner(JJJJLcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V
.end method

.method public abstract onChangeMessageRoomTitle(JJLjava/lang/String;Lcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V
.end method

.method public abstract onConnected()V
.end method

.method public abstract onCreateMessageRoom(JLcom/samsung/android/sdk/ssf/message/io/MessageRoom;Lcom/samsung/android/sdk/ssf/message/io/MessageRoomResult;Landroid/os/Bundle;)V
.end method

.method public abstract onDestroyMessageRoom(JLjava/lang/Long;Lcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V
.end method

.method public abstract onEnterMessageRoom(JJLcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V
.end method

.method public abstract onError()V
.end method

.method public abstract onError(JI)V
.end method

.method public abstract onExpelMessageRoomMember(JJLjava/util/ArrayList;Ljava/util/ArrayList;JLcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;J",
            "Lcom/samsung/android/sdk/ssf/message/io/MessageResult;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onGetAllUnreadMessages(JLcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V
.end method

.method public abstract onInviteUsersToMessageRoom(JJLjava/util/ArrayList;JLcom/samsung/android/sdk/ssf/message/io/MessageRoomResult;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;",
            ">;J",
            "Lcom/samsung/android/sdk/ssf/message/io/MessageRoomResult;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onJoinMessageRoom(JLcom/samsung/android/sdk/ssf/message/io/MessageRoom;Lcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V
.end method

.method public abstract onLeaveMessageRooms(JLjava/util/ArrayList;Lcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/samsung/android/sdk/ssf/message/io/MessageResult;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onReadMessageUpto(JJJLcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;JJLcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V
.end method

.method public abstract onReadTimedMessage(JJLcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V
.end method

.method public abstract onRecallMessageReply(JJJJLcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V
.end method

.method public abstract onReceiveMessage(JJLcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;)V
.end method

.method public abstract onReceiveMessageDelivered(JLjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/MessageAck;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReceiveMessageRead(JLjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/MessageAck;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReceiveMessageRoomDestroyed(JLcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;)V
.end method

.method public abstract onReceiveMessageRoomMemberChanged(JLjava/util/ArrayList;IIJJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;",
            ">;IIJJ)V"
        }
    .end annotation
.end method

.method public abstract onReceiveMessageRoomMsgLifeTimeChanged(JLcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;III)V
.end method

.method public abstract onReceiveMessageRoomTitleChanged(JLcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;Ljava/lang/String;II)V
.end method

.method public abstract onReceiveRecallMessageNoti(JJJJLcom/samsung/android/sdk/ssf/message/io/MessageAck;)V
.end method

.method public abstract onReceiveTimedMessage(JJLcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;I)V
.end method

.method public abstract onReceiveTimedMessageRead(JJLcom/samsung/android/sdk/ssf/message/io/MessageAck;)V
.end method

.method public abstract onSendMessage(JJLcom/samsung/android/sdk/ssf/message/io/MessageInfo;Lcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V
.end method

.method public abstract onSendTimedMessage(JJLcom/samsung/android/sdk/ssf/message/io/MessageInfo;ILcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V
.end method

.method public abstract onSubscribeTypingStatusReply(JJLcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V
.end method

.method public abstract onTypingUpdated(JJLcom/samsung/android/sdk/ssf/message/io/MessageRoomTypingStatus;)V
.end method

.method public abstract onUnsubscribeTypingStatusReply(JJLcom/samsung/android/sdk/ssf/message/io/MessageResult;Landroid/os/Bundle;)V
.end method
