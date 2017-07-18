.class Lcom/gsma/services/rcs/sharing/video/VideoSharingService$2;
.super Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener$Stub;
.source "VideoSharingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->addEventListener(Lcom/gsma/services/rcs/sharing/video/VideoSharingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsma/services/rcs/sharing/video/VideoSharingService;

.field final synthetic val$listener:Lcom/gsma/services/rcs/sharing/video/VideoSharingListener;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/sharing/video/VideoSharingService;Lcom/gsma/services/rcs/sharing/video/VideoSharingListener;)V
    .locals 0

    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService$2;->this$0:Lcom/gsma/services/rcs/sharing/video/VideoSharingService;

    iput-object p2, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService$2;->val$listener:Lcom/gsma/services/rcs/sharing/video/VideoSharingListener;

    invoke-direct {p0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/List;)V
    .locals 4
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

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService$2;->val$listener:Lcom/gsma/services/rcs/sharing/video/VideoSharingListener;

    invoke-virtual {v2, p1, v0}, Lcom/gsma/services/rcs/sharing/video/VideoSharingListener;->onDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/Set;)V

    return-void
.end method

.method public onStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService$2;->val$listener:Lcom/gsma/services/rcs/sharing/video/VideoSharingListener;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/gsma/services/rcs/sharing/video/VideoSharingListener;->onStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;)V

    return-void
.end method
