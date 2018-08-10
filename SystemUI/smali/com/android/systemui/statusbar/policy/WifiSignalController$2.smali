.class Lcom/android/systemui/statusbar/policy/WifiSignalController$2;
.super Ljava/lang/Object;
.source "WifiSignalController.java"

# interfaces
.implements Lcom/sec/epdg/EpdgManager$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/WifiSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/WifiSignalController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$2;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$2;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onConnected() : mEpdgMgr is connected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$2;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->-get1(Lcom/android/systemui/statusbar/policy/WifiSignalController;)Lcom/sec/epdg/EpdgManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$2;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->-get1(Lcom/android/systemui/statusbar/policy/WifiSignalController;)Lcom/sec/epdg/EpdgManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$2;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->-get0(Lcom/android/systemui/statusbar/policy/WifiSignalController;)Lcom/sec/epdg/EpdgManager$EpdgListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgManager;->addListener(Lcom/sec/epdg/EpdgManager$EpdgListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$2;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->-set0(Lcom/android/systemui/statusbar/policy/WifiSignalController;Z)Z

    :cond_0
    return-void
.end method

.method public onDisconnected()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$2;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onDisconnected() : mEpdgMgr is disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$2;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->-set0(Lcom/android/systemui/statusbar/policy/WifiSignalController;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$2;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->wifiCallingConnected:Z

    return-void
.end method
