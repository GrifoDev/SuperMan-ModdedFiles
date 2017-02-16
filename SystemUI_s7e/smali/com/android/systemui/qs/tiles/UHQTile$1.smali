.class Lcom/android/systemui/qs/tiles/UHQTile$1;
.super Landroid/content/BroadcastReceiver;
.source "UHQTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/UHQTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/UHQTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/UHQTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/UHQTile$1;->this$0:Lcom/android/systemui/qs/tiles/UHQTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v3, "UHQTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReceive:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "com.sec.android.contextaware.HEADSET_PLUG"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "state"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "state"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/UHQTile$1;->this$0:Lcom/android/systemui/qs/tiles/UHQTile;

    invoke-static {v3, v7}, Lcom/android/systemui/qs/tiles/UHQTile;->-set1(Lcom/android/systemui/qs/tiles/UHQTile;Z)Z

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/UHQTile$1;->this$0:Lcom/android/systemui/qs/tiles/UHQTile;

    invoke-virtual {v3}, Lcom/android/systemui/qs/tiles/UHQTile;->refreshState()V

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/UHQTile$1;->this$0:Lcom/android/systemui/qs/tiles/UHQTile;

    invoke-static {v3, v6}, Lcom/android/systemui/qs/tiles/UHQTile;->-set1(Lcom/android/systemui/qs/tiles/UHQTile;Z)Z

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    if-eq v1, v7, :cond_3

    if-nez v1, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/UHQTile$1;->this$0:Lcom/android/systemui/qs/tiles/UHQTile;

    invoke-static {v3, v7}, Lcom/android/systemui/qs/tiles/UHQTile;->-set0(Lcom/android/systemui/qs/tiles/UHQTile;Z)Z

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/UHQTile$1;->this$0:Lcom/android/systemui/qs/tiles/UHQTile;

    invoke-static {v3, v6}, Lcom/android/systemui/qs/tiles/UHQTile;->-set0(Lcom/android/systemui/qs/tiles/UHQTile;Z)Z

    goto :goto_0
.end method
