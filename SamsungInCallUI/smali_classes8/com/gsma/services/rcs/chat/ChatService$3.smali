.class Lcom/gsma/services/rcs/chat/ChatService$3;
.super Lcom/gsma/services/rcs/chat/IGroupChatListener$Stub;
.source "ChatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gsma/services/rcs/chat/ChatService;->addEventListener(Lcom/gsma/services/rcs/chat/GroupChatListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsma/services/rcs/chat/ChatService;

.field final synthetic val$listener:Lcom/gsma/services/rcs/chat/GroupChatListener;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/chat/ChatService;Lcom/gsma/services/rcs/chat/GroupChatListener;)V
    .locals 0

    iput-object p1, p0, Lcom/gsma/services/rcs/chat/ChatService$3;->this$0:Lcom/gsma/services/rcs/chat/ChatService;

    iput-object p2, p0, Lcom/gsma/services/rcs/chat/ChatService$3;->val$listener:Lcom/gsma/services/rcs/chat/GroupChatListener;

    invoke-direct {p0}, Lcom/gsma/services/rcs/chat/IGroupChatListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComposingEvent(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService$3;->val$listener:Lcom/gsma/services/rcs/chat/GroupChatListener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gsma/services/rcs/chat/GroupChatListener;->onComposingEvent(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Z)V

    return-void
.end method

.method public onDeleted(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/gsma/services/rcs/chat/ChatService$3;->val$listener:Lcom/gsma/services/rcs/chat/GroupChatListener;

    invoke-virtual {v2, v1}, Lcom/gsma/services/rcs/chat/GroupChatListener;->onDeleted(Ljava/util/Set;)V

    return-void
.end method

.method public onMessageGroupDeliveryInfoChanged(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v5, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->NOT_DELIVERED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    invoke-static {}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->values()[Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v8, v1, v0

    invoke-virtual {v8}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v5, v8

    :cond_0
    sget-object v6, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;

    invoke-static {}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;->values()[Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v7, v1, v0

    invoke-virtual {v7}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v6, v7

    :cond_1
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService$3;->val$listener:Lcom/gsma/services/rcs/chat/GroupChatListener;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/gsma/services/rcs/chat/GroupChatListener;->onMessageGroupDeliveryInfoChanged(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;)V

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onMessageStatusChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService$3;->val$listener:Lcom/gsma/services/rcs/chat/GroupChatListener;

    invoke-static {p4}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->valueOf(I)Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    move-result-object v4

    invoke-static {p5}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->valueOf(I)Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/gsma/services/rcs/chat/GroupChatListener;->onMessageStatusChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;)V

    return-void
.end method

.method public onMessagesDeleted(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatService$3;->val$listener:Lcom/gsma/services/rcs/chat/GroupChatListener;

    invoke-virtual {v1, p1, v0}, Lcom/gsma/services/rcs/chat/GroupChatListener;->onMessagesDeleted(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public onParticipantStatusChanged(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService$3;->val$listener:Lcom/gsma/services/rcs/chat/GroupChatListener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gsma/services/rcs/chat/GroupChatListener;->onParticipantStatusChanged(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;)V

    return-void
.end method

.method public onStateChanged(Ljava/lang/String;II)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    sget-object v1, Lcom/gsma/services/rcs/chat/GroupChat$State;->INITIATED:Lcom/gsma/services/rcs/chat/GroupChat$State;

    invoke-static {}, Lcom/gsma/services/rcs/chat/GroupChat$State;->values()[Lcom/gsma/services/rcs/chat/GroupChat$State;

    move-result-object v6

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v3, v6, v5

    invoke-virtual {v3}, Lcom/gsma/services/rcs/chat/GroupChat$State;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v1, v3

    :cond_0
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;

    invoke-static {}, Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;->values()[Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;

    move-result-object v5

    array-length v6, v5

    :goto_1
    if-ge v4, v6, :cond_1

    aget-object v2, v5, v4

    invoke-virtual {v2}, Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v0, v2

    :cond_1
    iget-object v4, p0, Lcom/gsma/services/rcs/chat/ChatService$3;->val$listener:Lcom/gsma/services/rcs/chat/GroupChatListener;

    invoke-virtual {v4, p1, v1, v0}, Lcom/gsma/services/rcs/chat/GroupChatListener;->onStateChanged(Ljava/lang/String;Lcom/gsma/services/rcs/chat/GroupChat$State;Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;)V

    return-void

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method
