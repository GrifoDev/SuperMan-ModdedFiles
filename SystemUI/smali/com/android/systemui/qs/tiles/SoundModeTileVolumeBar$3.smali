.class Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$3;
.super Landroid/content/BroadcastReceiver;
.source "SoundModeTileVolumeBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$3;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-eqz p2, :cond_1

    const-string/jumbo v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "android.bluetooth.profile.extra.STATE"

    const/4 v2, 0x2

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$3;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BluetoothA2dp.ACTION_CONNECTION_STATE_CHANGED : newState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->-wrap5(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$3;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->-get0(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;

    move-result-object v1

    const/16 v2, 0xd9c

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->sendNewMessage(I)V

    :cond_1
    return-void
.end method
