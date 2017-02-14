.class Lcom/android/settings/wfd/WifiDisplaySettings$12;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2

    const-string/jumbo v0, "WifiDisplaySettings"

    const-string/jumbo v1, "onRouteAdded()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->-wrap12(Lcom/android/settings/wfd/WifiDisplaySettings;I)V

    return-void
.end method

.method public onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2

    const-string/jumbo v0, "WifiDisplaySettings"

    const-string/jumbo v1, "onRouteChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->-wrap12(Lcom/android/settings/wfd/WifiDisplaySettings;I)V

    return-void
.end method

.method public onRoutePresentationDisplayChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 3

    const-string/jumbo v0, "WifiDisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRoutePresentationDisplayChanged() mPreviousConnectionType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->-get13(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->-wrap3(Lcom/android/settings/wfd/WifiDisplaySettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->-get13(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-result-object v0

    sget-object v1, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->GCAST:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->-wrap2(Lcom/android/settings/wfd/WifiDisplaySettings;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->-get3(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    sget-object v1, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->-wrap9(Lcom/android/settings/wfd/WifiDisplaySettings;I)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->-wrap12(Lcom/android/settings/wfd/WifiDisplaySettings;I)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->-wrap10(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    goto :goto_0
.end method

.method public onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2

    const-string/jumbo v0, "WifiDisplaySettings"

    const-string/jumbo v1, "onRouteRemoved()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->-wrap12(Lcom/android/settings/wfd/WifiDisplaySettings;I)V

    return-void
.end method

.method public onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 2

    const-string/jumbo v0, "WifiDisplaySettings"

    const-string/jumbo v1, "onRouteSelected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->-wrap12(Lcom/android/settings/wfd/WifiDisplaySettings;I)V

    return-void
.end method

.method public onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 2

    const-string/jumbo v0, "WifiDisplaySettings"

    const-string/jumbo v1, "onRouteUnselected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->-wrap12(Lcom/android/settings/wfd/WifiDisplaySettings;I)V

    return-void
.end method
