.class Lcom/android/systemui/statusbar/policy/WifiSignalController$3;
.super Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;
.source "WifiSignalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/WifiSignalController;-><init>(Landroid/content/Context;ZLcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/net/NetworkScoreManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/WifiSignalController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$3;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-direct {p0, p2}, Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public networkCacheUpdated(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/ScoredNetwork;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$3;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$3;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->-wrap0(Lcom/android/systemui/statusbar/policy/WifiSignalController;)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->badgeEnum:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$3;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->notifyListenersIfNecessary()V

    return-void
.end method
