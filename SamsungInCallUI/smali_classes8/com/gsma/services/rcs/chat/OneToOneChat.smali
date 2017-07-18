.class public Lcom/gsma/services/rcs/chat/OneToOneChat;
.super Ljava/lang/Object;
.source "OneToOneChat.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private chatInf:Lcom/gsma/services/rcs/chat/IOneToOneChat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/gsma/services/rcs/chat/OneToOneChat;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/chat/OneToOneChat;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/gsma/services/rcs/chat/IOneToOneChat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gsma/services/rcs/chat/OneToOneChat;->chatInf:Lcom/gsma/services/rcs/chat/IOneToOneChat;

    return-void
.end method


# virtual methods
.method public getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    sget-object v1, Lcom/gsma/services/rcs/chat/OneToOneChat;->LOG_TAG:Ljava/lang/String;

    const-string v2, "start : getRemoteContact()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/chat/OneToOneChat;->chatInf:Lcom/gsma/services/rcs/chat/IOneToOneChat;

    invoke-interface {v1}, Lcom/gsma/services/rcs/chat/IOneToOneChat;->getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isAllowedToSendMessage()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    sget-object v1, Lcom/gsma/services/rcs/chat/OneToOneChat;->LOG_TAG:Ljava/lang/String;

    const-string v2, "start : isAllowedToSendMessage()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/chat/OneToOneChat;->chatInf:Lcom/gsma/services/rcs/chat/IOneToOneChat;

    invoke-interface {v1}, Lcom/gsma/services/rcs/chat/IOneToOneChat;->isAllowedToSendMessage()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public openChat()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    sget-object v1, Lcom/gsma/services/rcs/chat/OneToOneChat;->LOG_TAG:Ljava/lang/String;

    const-string v2, "start : openChat()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/chat/OneToOneChat;->chatInf:Lcom/gsma/services/rcs/chat/IOneToOneChat;

    invoke-interface {v1}, Lcom/gsma/services/rcs/chat/IOneToOneChat;->openChat()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public resendMessage(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    sget-object v1, Lcom/gsma/services/rcs/chat/OneToOneChat;->LOG_TAG:Ljava/lang/String;

    const-string v2, "start : resendMessage()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/chat/OneToOneChat;->chatInf:Lcom/gsma/services/rcs/chat/IOneToOneChat;

    invoke-interface {v1, p1}, Lcom/gsma/services/rcs/chat/IOneToOneChat;->resendMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public sendIsComposingEvent(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    sget-object v1, Lcom/gsma/services/rcs/chat/OneToOneChat;->LOG_TAG:Ljava/lang/String;

    const-string v2, "start : sendIsComposingEvent()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/chat/OneToOneChat;->chatInf:Lcom/gsma/services/rcs/chat/IOneToOneChat;

    invoke-interface {v1, p1}, Lcom/gsma/services/rcs/chat/IOneToOneChat;->sendIsComposingEvent(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public sendMessage(Lcom/gsma/services/rcs/Geoloc;)Lcom/gsma/services/rcs/chat/ChatMessage;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Lcom/gsma/services/rcs/chat/OneToOneChat;->chatInf:Lcom/gsma/services/rcs/chat/IOneToOneChat;

    invoke-interface {v2, p1}, Lcom/gsma/services/rcs/chat/IOneToOneChat;->sendGeoloc(Lcom/gsma/services/rcs/Geoloc;)Lcom/gsma/services/rcs/chat/IChatMessage;

    move-result-object v0

    new-instance v2, Lcom/gsma/services/rcs/chat/ChatMessage;

    invoke-direct {v2, v0}, Lcom/gsma/services/rcs/chat/ChatMessage;-><init>(Lcom/gsma/services/rcs/chat/IChatMessage;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    new-instance v2, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public sendMessage(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/ChatMessage;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    sget-object v2, Lcom/gsma/services/rcs/chat/OneToOneChat;->LOG_TAG:Ljava/lang/String;

    const-string v3, "start : sendMessage()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/gsma/services/rcs/chat/OneToOneChat;->chatInf:Lcom/gsma/services/rcs/chat/IOneToOneChat;

    invoke-interface {v2, p1}, Lcom/gsma/services/rcs/chat/IOneToOneChat;->sendMessage(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/IChatMessage;

    move-result-object v0

    new-instance v2, Lcom/gsma/services/rcs/chat/ChatMessage;

    invoke-direct {v2, v0}, Lcom/gsma/services/rcs/chat/ChatMessage;-><init>(Lcom/gsma/services/rcs/chat/IChatMessage;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    new-instance v2, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setComposingStatus(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    sget-object v1, Lcom/gsma/services/rcs/chat/OneToOneChat;->LOG_TAG:Ljava/lang/String;

    const-string v2, "start : setComposingStatus()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/chat/OneToOneChat;->chatInf:Lcom/gsma/services/rcs/chat/IOneToOneChat;

    invoke-interface {v1, p1}, Lcom/gsma/services/rcs/chat/IOneToOneChat;->setComposingStatus(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
