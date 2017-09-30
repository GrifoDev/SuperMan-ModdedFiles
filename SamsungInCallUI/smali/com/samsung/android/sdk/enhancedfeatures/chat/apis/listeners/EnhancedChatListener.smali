.class public interface abstract Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onChangeMessageRoomMsgLifeTime(JJILcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;Landroid/os/Bundle;)V
.end method

.method public abstract onChangeMessageRoomOwner(JJLjava/lang/String;JLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;Landroid/os/Bundle;)V
.end method

.method public abstract onChangeMessageRoomTitle(JJLjava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;Landroid/os/Bundle;)V
.end method

.method public abstract onConnected()V
.end method

.method public abstract onCreateMessageRoom(JLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomResult;Landroid/os/Bundle;)V
.end method

.method public abstract onDestroyMessageRoom(JLjava/lang/Long;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;Landroid/os/Bundle;)V
.end method

.method public abstract onEnterMessageRoom(JJLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;Landroid/os/Bundle;)V
.end method

.method public abstract onError()V
.end method

.method public abstract onError(JI)V
.end method

.method public abstract onExpelMessageRoomMember(JJLjava/util/ArrayList;Ljava/util/ArrayList;JLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;J",
            "Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onGetAllUnreadMessages(JLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;Landroid/os/Bundle;)V
.end method

.method public abstract onInviteUsersToMessageRoom(JJLjava/util/ArrayList;JLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomResult;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member;",
            ">;J",
            "Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomResult;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onJoinMessageRoom(JLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;Landroid/os/Bundle;)V
.end method

.method public abstract onLeaveMessageRooms(JLjava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onReadMessageUpto(JJJLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;Ljava/lang/String;JLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;Landroid/os/Bundle;)V
.end method

.method public abstract onReadTimedMessage(JJLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;Landroid/os/Bundle;)V
.end method

.method public abstract onRecallMessageReply(JJJJLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;Landroid/os/Bundle;)V
.end method

.method public abstract onReceiveMessage(JJLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo;)V
.end method

.method public abstract onReceiveMessageDelivered(JLjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatAck;",
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
            "Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatAck;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReceiveMessageRoomDestroyed(JLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member;)V
.end method

.method public abstract onReceiveMessageRoomMemberChanged(JLjava/util/ArrayList;IIJJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member;",
            ">;IIJJ)V"
        }
    .end annotation
.end method

.method public abstract onReceiveMessageRoomMsgLifeTimeChanged(JLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member;III)V
.end method

.method public abstract onReceiveMessageRoomTitleChanged(JLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member;Ljava/lang/String;II)V
.end method

.method public abstract onReceiveRecallMessageNoti(JJJJLcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatAck;)V
.end method

.method public abstract onReceiveTimedMessage(JJLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo;I)V
.end method

.method public abstract onReceiveTimedMessageRead(JJLcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatAck;)V
.end method

.method public abstract onSendMessage(JJLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;Landroid/os/Bundle;)V
.end method

.method public abstract onSubscribeTypingStatusReply(JJLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;Landroid/os/Bundle;)V
.end method

.method public abstract onTypingUpdated(JJLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus;)V
.end method

.method public abstract onUnsubscribeTypingStatusReply(JJLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatResult;Landroid/os/Bundle;)V
.end method
