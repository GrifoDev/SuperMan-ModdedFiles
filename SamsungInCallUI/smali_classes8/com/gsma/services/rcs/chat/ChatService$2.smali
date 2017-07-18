.class Lcom/gsma/services/rcs/chat/ChatService$2;
.super Lcom/gsma/services/rcs/chat/IOneToOneChatListener$Stub;
.source "ChatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gsma/services/rcs/chat/ChatService;->addEventListener(Lcom/gsma/services/rcs/chat/OneToOneChatListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsma/services/rcs/chat/ChatService;

.field final synthetic val$callBackListener:Lcom/gsma/services/rcs/chat/OneToOneChatListener;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/chat/ChatService;Lcom/gsma/services/rcs/chat/OneToOneChatListener;)V
    .locals 0

    iput-object p1, p0, Lcom/gsma/services/rcs/chat/ChatService$2;->this$0:Lcom/gsma/services/rcs/chat/ChatService;

    iput-object p2, p0, Lcom/gsma/services/rcs/chat/ChatService$2;->val$callBackListener:Lcom/gsma/services/rcs/chat/OneToOneChatListener;

    invoke-direct {p0}, Lcom/gsma/services/rcs/chat/IOneToOneChatListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComposingEvent(Lcom/gsma/services/rcs/contact/ContactId;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService$2;->val$callBackListener:Lcom/gsma/services/rcs/chat/OneToOneChatListener;

    invoke-virtual {v0, p1, p2}, Lcom/gsma/services/rcs/chat/OneToOneChatListener;->onComposingEvent(Lcom/gsma/services/rcs/contact/ContactId;Z)V

    return-void
.end method

.method public onMessageStatusChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService$2;->val$callBackListener:Lcom/gsma/services/rcs/chat/OneToOneChatListener;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/gsma/services/rcs/chat/OneToOneChatListener;->onMessageStatusChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;)V

    return-void
.end method

.method public onMessagesDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gsma/services/rcs/contact/ContactId;",
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

    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatService$2;->val$callBackListener:Lcom/gsma/services/rcs/chat/OneToOneChatListener;

    invoke-virtual {v1, p1, v0}, Lcom/gsma/services/rcs/chat/OneToOneChatListener;->onMessagesDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/Set;)V

    return-void
.end method
