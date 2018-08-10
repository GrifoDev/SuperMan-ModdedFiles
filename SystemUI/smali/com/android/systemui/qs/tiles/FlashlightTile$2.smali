.class Lcom/android/systemui/qs/tiles/FlashlightTile$2;
.super Landroid/content/BroadcastReceiver;
.source "FlashlightTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/FlashlightTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/FlashlightTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$2;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$2;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/FlashlightTile;->-get0(Lcom/android/systemui/qs/tiles/FlashlightTile;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "com.samsung.intent.action.BGA_FLASHLIGHT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "actionType"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$2;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/FlashlightTile;->-get3(Lcom/android/systemui/qs/tiles/FlashlightTile;)Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$2;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/FlashlightTile;->-get3(Lcom/android/systemui/qs/tiles/FlashlightTile;)Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-result-object v3

    const-string/jumbo v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v3, v2}, Lcom/android/systemui/statusbar/policy/FlashlightController;->setFlashlight(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
