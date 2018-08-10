.class Lcom/android/systemui/qs/tiles/WifiCallingTile$3;
.super Landroid/telephony/PhoneStateListener;
.source "WifiCallingTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/WifiCallingTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$3;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$3;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-set1(Lcom/android/systemui/qs/tiles/WifiCallingTile;Z)Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$3;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-get1(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCallStateChanged() state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mInCall:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$3;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-get5(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$3;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState()V

    return-void
.end method

.method public onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$3;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$3;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-get8(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    const-string/jumbo v2, "epdg"

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$3;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-get8(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVideoCall()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$3;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-wrap1(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Z

    move-result v0

    :goto_0
    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-set2(Lcom/android/systemui/qs/tiles/WifiCallingTile;Z)Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$3;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-get1(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreciseCallStateChanged() mInWifiCall:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$3;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-get6(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$3;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
