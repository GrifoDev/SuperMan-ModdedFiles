.class Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;
.super Landroid/content/BroadcastReceiver;
.source "ScreenCaptureTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/ScreenCaptureTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "com.samsung.systemui.statusbar.COLLAPSED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->-get5(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->-wrap0(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-static {v1, v4}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->-set2(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;Z)Z

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->-get6(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->-wrap1(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-static {v1, v4}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->-set3(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;Z)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v1, "com.samsung.systemui.statusbar.EXPANDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->-get5(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->-get4(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)Lcom/android/systemui/qs/QSTile$Host;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->-wrap0(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-static {v1, v4}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->-set2(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;Z)Z

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->-get6(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->-get4(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)Lcom/android/systemui/qs/QSTile$Host;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->-wrap1(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-static {v1, v4}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->-set3(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;Z)Z

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "com.sec.app.screenrecorder.on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ACTION_SCREEN_RECORDER_ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-static {v1, v5}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->-set0(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;Z)Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->-wrap2(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "com.sec.app.screenrecorder.off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ACTION_SCREEN_RECORDER_OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-static {v1, v4}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->-set0(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;Z)Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->-wrap2(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
