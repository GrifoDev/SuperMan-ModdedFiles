.class public Lcom/gsma/services/rcs/chat/ChatMessage;
.super Ljava/lang/Object;
.source "ChatMessage.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mChatMessageInf:Lcom/gsma/services/rcs/chat/IChatMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/gsma/services/rcs/chat/ChatMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/chat/ChatMessage;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/gsma/services/rcs/chat/IChatMessage;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gsma/services/rcs/chat/ChatMessage;->mChatMessageInf:Lcom/gsma/services/rcs/chat/IChatMessage;

    iput-object p1, p0, Lcom/gsma/services/rcs/chat/ChatMessage;->mChatMessageInf:Lcom/gsma/services/rcs/chat/IChatMessage;

    return-void
.end method


# virtual methods
.method public getChatId()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    sget-object v1, Lcom/gsma/services/rcs/chat/ChatMessage;->LOG_TAG:Ljava/lang/String;

    const-string v2, "start : getChatId()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatMessage;->mChatMessageInf:Lcom/gsma/services/rcs/chat/IChatMessage;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatMessage;->mChatMessageInf:Lcom/gsma/services/rcs/chat/IChatMessage;

    invoke-interface {v1}, Lcom/gsma/services/rcs/chat/IChatMessage;->getChatId()Ljava/lang/String;
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

    :cond_0
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public getContent()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatMessage;->mChatMessageInf:Lcom/gsma/services/rcs/chat/IChatMessage;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatMessage;->mChatMessageInf:Lcom/gsma/services/rcs/chat/IChatMessage;

    invoke-interface {v1}, Lcom/gsma/services/rcs/chat/IChatMessage;->getContent()Ljava/lang/String;
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

    :cond_0
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public getDirection()Lcom/gsma/services/rcs/RcsService$Direction;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v2, p0, Lcom/gsma/services/rcs/chat/ChatMessage;->mChatMessageInf:Lcom/gsma/services/rcs/chat/IChatMessage;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/gsma/services/rcs/chat/ChatMessage;->mChatMessageInf:Lcom/gsma/services/rcs/chat/IChatMessage;

    invoke-interface {v2}, Lcom/gsma/services/rcs/chat/IChatMessage;->getDirection()I

    move-result v0

    invoke-static {v0}, Lcom/gsma/services/rcs/RcsService$Direction;->valueOf(I)Lcom/gsma/services/rcs/RcsService$Direction;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    new-instance v2, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v2, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v2}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method public getId()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatMessage;->mChatMessageInf:Lcom/gsma/services/rcs/chat/IChatMessage;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatMessage;->mChatMessageInf:Lcom/gsma/services/rcs/chat/IChatMessage;

    invoke-interface {v1}, Lcom/gsma/services/rcs/chat/IChatMessage;->getId()Ljava/lang/String;
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

    :cond_0
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatMessage;->mChatMessageInf:Lcom/gsma/services/rcs/chat/IChatMessage;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatMessage;->mChatMessageInf:Lcom/gsma/services/rcs/chat/IChatMessage;

    invoke-interface {v1}, Lcom/gsma/services/rcs/chat/IChatMessage;->getMimeType()Ljava/lang/String;
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

    :cond_0
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public getReasonCode()Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    sget-object v2, Lcom/gsma/services/rcs/chat/ChatMessage;->LOG_TAG:Ljava/lang/String;

    const-string v3, "start : getReasonCode()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/gsma/services/rcs/chat/ChatMessage;->mChatMessageInf:Lcom/gsma/services/rcs/chat/IChatMessage;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/gsma/services/rcs/chat/ChatMessage;->mChatMessageInf:Lcom/gsma/services/rcs/chat/IChatMessage;

    invoke-interface {v2}, Lcom/gsma/services/rcs/chat/IChatMessage;->getReasonCode()I

    move-result v1

    invoke-static {v1}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->valueOf(I)Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v2, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v2}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method public getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatMessage;->mChatMessageInf:Lcom/gsma/services/rcs/chat/IChatMessage;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatMessage;->mChatMessageInf:Lcom/gsma/services/rcs/chat/IChatMessage;

    invoke-interface {v1}, Lcom/gsma/services/rcs/chat/IChatMessage;->getContact()Lcom/gsma/services/rcs/contact/ContactId;
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

    :cond_0
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public getStatus()Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    sget-object v2, Lcom/gsma/services/rcs/chat/ChatMessage;->LOG_TAG:Ljava/lang/String;

    const-string v3, "start : getStatus()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/gsma/services/rcs/chat/ChatMessage;->mChatMessageInf:Lcom/gsma/services/rcs/chat/IChatMessage;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/gsma/services/rcs/chat/ChatMessage;->mChatMessageInf:Lcom/gsma/services/rcs/chat/IChatMessage;

    invoke-interface {v2}, Lcom/gsma/services/rcs/chat/IChatMessage;->getStatus()I

    move-result v1

    invoke-static {v1}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->valueOf(I)Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v2, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v2}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method public getTimestamp()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatMessage;->mChatMessageInf:Lcom/gsma/services/rcs/chat/IChatMessage;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatMessage;->mChatMessageInf:Lcom/gsma/services/rcs/chat/IChatMessage;

    invoke-interface {v1}, Lcom/gsma/services/rcs/chat/IChatMessage;->getTimestamp()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public getTimestampDelivered()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    sget-object v1, Lcom/gsma/services/rcs/chat/ChatMessage;->LOG_TAG:Ljava/lang/String;

    const-string v2, "start : getTimestampDelivered()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatMessage;->mChatMessageInf:Lcom/gsma/services/rcs/chat/IChatMessage;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatMessage;->mChatMessageInf:Lcom/gsma/services/rcs/chat/IChatMessage;

    invoke-interface {v1}, Lcom/gsma/services/rcs/chat/IChatMessage;->getTimestampDelivered()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public getTimestampDisplayed()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    sget-object v1, Lcom/gsma/services/rcs/chat/ChatMessage;->LOG_TAG:Ljava/lang/String;

    const-string v2, "start : getTimestampDisplayed()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatMessage;->mChatMessageInf:Lcom/gsma/services/rcs/chat/IChatMessage;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatMessage;->mChatMessageInf:Lcom/gsma/services/rcs/chat/IChatMessage;

    invoke-interface {v1}, Lcom/gsma/services/rcs/chat/IChatMessage;->getTimestampDisplayed()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public getTimestampSent()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatMessage;->mChatMessageInf:Lcom/gsma/services/rcs/chat/IChatMessage;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatMessage;->mChatMessageInf:Lcom/gsma/services/rcs/chat/IChatMessage;

    invoke-interface {v1}, Lcom/gsma/services/rcs/chat/IChatMessage;->getTimestampSent()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public isExpiredDelivery()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    sget-object v1, Lcom/gsma/services/rcs/chat/ChatMessage;->LOG_TAG:Ljava/lang/String;

    const-string v2, "start : isExpiredDelivery()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatMessage;->mChatMessageInf:Lcom/gsma/services/rcs/chat/IChatMessage;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatMessage;->mChatMessageInf:Lcom/gsma/services/rcs/chat/IChatMessage;

    invoke-interface {v1}, Lcom/gsma/services/rcs/chat/IChatMessage;->isExpiredDelivery()Z
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

    :cond_0
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public isRead()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    sget-object v1, Lcom/gsma/services/rcs/chat/ChatMessage;->LOG_TAG:Ljava/lang/String;

    const-string v2, "start : isRead()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatMessage;->mChatMessageInf:Lcom/gsma/services/rcs/chat/IChatMessage;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatMessage;->mChatMessageInf:Lcom/gsma/services/rcs/chat/IChatMessage;

    invoke-interface {v1}, Lcom/gsma/services/rcs/chat/IChatMessage;->isRead()Z
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

    :cond_0
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v1
.end method
