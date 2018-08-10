.class final Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$OnStartTetheringCallback;
.super Landroid/net/ConnectivityManager$OnStartTetheringCallback;
.source "HotspotControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnStartTetheringCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;


# virtual methods
.method public onTetheringFailed()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "HotspotController"

    const-string/jumbo v1, "onTetheringFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$OnStartTetheringCallback;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->-set1(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$OnStartTetheringCallback;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$OnStartTetheringCallback;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->isHotspotEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->-wrap1(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Z)V

    return-void
.end method

.method public onTetheringStarted()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "HotspotController"

    const-string/jumbo v1, "onTetheringStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$OnStartTetheringCallback;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->-set1(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Z)Z

    return-void
.end method
