.class Lcom/gsma/services/rcs/extension/MultimediaSessionService$2;
.super Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener$Stub;
.source "MultimediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gsma/services/rcs/extension/MultimediaSessionService;->addEventListener(Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsma/services/rcs/extension/MultimediaSessionService;

.field final synthetic val$callBackListener:Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/extension/MultimediaSessionService;Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService$2;->this$0:Lcom/gsma/services/rcs/extension/MultimediaSessionService;

    iput-object p2, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService$2;->val$callBackListener:Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;

    invoke-direct {p0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;[BLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService$2;->val$callBackListener:Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;->onMessageReceived(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;[BLjava/lang/String;)V

    return-void
.end method

.method public onMessagesFlushed(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService$2;->val$callBackListener:Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;

    invoke-virtual {v0, p1, p2}, Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;->onMessagesFlushed(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;)V

    return-void
.end method

.method public onStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/extension/MultimediaSession$State;Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService$2;->val$callBackListener:Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;->onStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/extension/MultimediaSession$State;Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;)V

    return-void
.end method
