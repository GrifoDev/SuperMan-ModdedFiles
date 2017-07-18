.class public abstract Lcom/gsma/services/rcs/chat/OneToOneChatListener;
.super Ljava/lang/Object;
.source "OneToOneChatListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onComposingEvent(Lcom/gsma/services/rcs/contact/ContactId;Z)V
.end method

.method public abstract onMessageStatusChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;)V
.end method

.method public abstract onMessagesDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
