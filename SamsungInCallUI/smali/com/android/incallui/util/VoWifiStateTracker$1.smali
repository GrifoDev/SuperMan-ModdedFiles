.class Lcom/android/incallui/util/VoWifiStateTracker$1;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/util/VoWifiStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/util/VoWifiStateTracker;


# direct methods
.method constructor <init>(Lcom/android/incallui/util/VoWifiStateTracker;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/util/VoWifiStateTracker$1;->this$0:Lcom/android/incallui/util/VoWifiStateTracker;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/incallui/util/VoWifiStateTracker$1;->this$0:Lcom/android/incallui/util/VoWifiStateTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/VoWifiStateTracker;->access$000(Lcom/android/incallui/util/VoWifiStateTracker;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/util/VoWifiStateTracker$1;->this$0:Lcom/android/incallui/util/VoWifiStateTracker;

    invoke-static {v0}, Lcom/android/incallui/util/VoWifiStateTracker;->access$100(Lcom/android/incallui/util/VoWifiStateTracker;)Lcom/android/incallui/util/VoWifiStateTracker$VoWifiStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/util/VoWifiStateTracker$1;->this$0:Lcom/android/incallui/util/VoWifiStateTracker;

    invoke-virtual {v1}, Lcom/android/incallui/util/VoWifiStateTracker;->isVoWiFiRegistered()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/incallui/util/VoWifiStateTracker$VoWifiStateListener;->onVoWifiStateChanged(Z)V

    return-void
.end method
