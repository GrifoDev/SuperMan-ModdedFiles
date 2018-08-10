.class Lcom/android/server/display/GoogleCastController$1;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "GoogleCastController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/GoogleCastController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/GoogleCastController;


# direct methods
.method constructor <init>(Lcom/android/server/display/GoogleCastController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/GoogleCastController$1;->this$0:Lcom/android/server/display/GoogleCastController;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 5

    const/4 v4, 0x6

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    const/4 v0, 0x7

    invoke-virtual {p2, v0}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/media/MediaRouter$RouteInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$1;->this$0:Lcom/android/server/display/GoogleCastController;

    invoke-static {v0}, Lcom/android/server/display/GoogleCastController;->-get0(Lcom/android/server/display/GoogleCastController;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/media/MediaRouter$RouteInfo;->getStatusCode()I

    move-result v0

    if-ne v0, v4, :cond_2

    invoke-virtual {p2}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Audio Mirroring"

    invoke-virtual {p2}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string/jumbo v0, "GoogleCastController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRouteChanged() GoogleCast is connected. route = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$1;->this$0:Lcom/android/server/display/GoogleCastController;

    invoke-static {v0}, Lcom/android/server/display/GoogleCastController;->-get2(Lcom/android/server/display/GoogleCastController;)Lcom/android/server/display/ControllerUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/ControllerUtils;->startControllerService()V

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$1;->this$0:Lcom/android/server/display/GoogleCastController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/display/GoogleCastController;->-wrap0(Lcom/android/server/display/GoogleCastController;I)V

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$1;->this$0:Lcom/android/server/display/GoogleCastController;

    invoke-static {v0, p2}, Lcom/android/server/display/GoogleCastController;->-set0(Lcom/android/server/display/GoogleCastController;Landroid/media/MediaRouter$RouteInfo;)Landroid/media/MediaRouter$RouteInfo;

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$1;->this$0:Lcom/android/server/display/GoogleCastController;

    invoke-static {v0}, Lcom/android/server/display/GoogleCastController;->-get1(Lcom/android/server/display/GoogleCastController;)Landroid/hardware/display/SemDeviceInfo;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/hardware/display/SemDeviceInfo;->setRemoteDisplayState(I)V

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$1;->this$0:Lcom/android/server/display/GoogleCastController;

    iget-object v1, p0, Lcom/android/server/display/GoogleCastController$1;->this$0:Lcom/android/server/display/GoogleCastController;

    invoke-static {v1}, Lcom/android/server/display/GoogleCastController;->-get0(Lcom/android/server/display/GoogleCastController;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/display/GoogleCastController;->-wrap1(Lcom/android/server/display/GoogleCastController;Landroid/media/MediaRouter$RouteInfo;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$1;->this$0:Lcom/android/server/display/GoogleCastController;

    invoke-static {v0}, Lcom/android/server/display/GoogleCastController;->-get0(Lcom/android/server/display/GoogleCastController;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$1;->this$0:Lcom/android/server/display/GoogleCastController;

    invoke-static {v0}, Lcom/android/server/display/GoogleCastController;->-get0(Lcom/android/server/display/GoogleCastController;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/GoogleCastController$1;->this$0:Lcom/android/server/display/GoogleCastController;

    invoke-static {v1}, Lcom/android/server/display/GoogleCastController;->-get4(Lcom/android/server/display/GoogleCastController;)Landroid/media/MediaRouter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/GoogleCastController$1;->this$0:Lcom/android/server/display/GoogleCastController;

    invoke-static {v2}, Lcom/android/server/display/GoogleCastController;->-get0(Lcom/android/server/display/GoogleCastController;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "GoogleCastController"

    const-string/jumbo v1, "onRouteChanged() GoogleCast is disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$1;->this$0:Lcom/android/server/display/GoogleCastController;

    invoke-static {v0}, Lcom/android/server/display/GoogleCastController;->-get2(Lcom/android/server/display/GoogleCastController;)Lcom/android/server/display/ControllerUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/ControllerUtils;->stopControllerService()V

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$1;->this$0:Lcom/android/server/display/GoogleCastController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/display/GoogleCastController;->-wrap0(Lcom/android/server/display/GoogleCastController;I)V

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$1;->this$0:Lcom/android/server/display/GoogleCastController;

    invoke-static {v0, v3}, Lcom/android/server/display/GoogleCastController;->-set0(Lcom/android/server/display/GoogleCastController;Landroid/media/MediaRouter$RouteInfo;)Landroid/media/MediaRouter$RouteInfo;

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$1;->this$0:Lcom/android/server/display/GoogleCastController;

    invoke-static {v0}, Lcom/android/server/display/GoogleCastController;->-get4(Lcom/android/server/display/GoogleCastController;)Landroid/media/MediaRouter;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    goto :goto_0
.end method
