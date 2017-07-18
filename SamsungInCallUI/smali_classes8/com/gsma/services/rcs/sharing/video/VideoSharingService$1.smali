.class Lcom/gsma/services/rcs/sharing/video/VideoSharingService$1;
.super Ljava/lang/Object;
.source "VideoSharingService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/sharing/video/VideoSharingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsma/services/rcs/sharing/video/VideoSharingService;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/sharing/video/VideoSharingService;)V
    .locals 0

    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService$1;->this$0:Lcom/gsma/services/rcs/sharing/video/VideoSharingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService$1;->this$0:Lcom/gsma/services/rcs/sharing/video/VideoSharingService;

    invoke-static {p2}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->setApi(Landroid/os/IInterface;)V

    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService$1;->this$0:Lcom/gsma/services/rcs/sharing/video/VideoSharingService;

    invoke-static {v0}, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->access$000(Lcom/gsma/services/rcs/sharing/video/VideoSharingService;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService$1;->this$0:Lcom/gsma/services/rcs/sharing/video/VideoSharingService;

    invoke-static {v0}, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->access$100(Lcom/gsma/services/rcs/sharing/video/VideoSharingService;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/gsma/services/rcs/RcsServiceListener;->onServiceConnected()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService$1;->this$0:Lcom/gsma/services/rcs/sharing/video/VideoSharingService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->setApi(Landroid/os/IInterface;)V

    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService$1;->this$0:Lcom/gsma/services/rcs/sharing/video/VideoSharingService;

    invoke-static {v0}, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->access$200(Lcom/gsma/services/rcs/sharing/video/VideoSharingService;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService$1;->this$0:Lcom/gsma/services/rcs/sharing/video/VideoSharingService;

    invoke-static {v0}, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->access$300(Lcom/gsma/services/rcs/sharing/video/VideoSharingService;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object v0

    sget-object v1, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;->CONNECTION_LOST:Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

    invoke-interface {v0, v1}, Lcom/gsma/services/rcs/RcsServiceListener;->onServiceDisconnected(Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;)V

    :cond_0
    return-void
.end method
