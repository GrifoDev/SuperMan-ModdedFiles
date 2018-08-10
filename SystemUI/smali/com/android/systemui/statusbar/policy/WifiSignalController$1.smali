.class Lcom/android/systemui/statusbar/policy/WifiSignalController$1;
.super Lcom/sec/epdg/EpdgManager$EpdgListener;
.source "WifiSignalController.java"


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

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-direct {p0}, Lcom/sec/epdg/EpdgManager$EpdgListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onEpdgAvailable(III)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEpdgAvailable : phoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " isAvailable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " wifiState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->wifiCallingConnected:Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method public onEpdgIpsecConnection(ILjava/lang/String;II)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEpdgIpsecConnection : phoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " apnType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ikeError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", throttleCount :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ims"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->wifiCallingConnected:Z

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->notifyListenersIfNecessary()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->wifiCallingConnected:Z

    goto :goto_0
.end method

.method public onEpdgIpsecDisconnection(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEpdgIpsecDisconnection : phoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " apnType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ims"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->wifiCallingConnected:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->notifyListenersIfNecessary()V

    :cond_0
    return-void
.end method
