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
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v1, "UHQTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.sec.android.contextaware.HEADSET_PLUG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "state"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UHQTile$1;->this$0:Lcom/android/systemui/qs/tiles/UHQTile;

    invoke-static {v1, v5}, Lcom/android/systemui/qs/tiles/UHQTile;->-set0(Lcom/android/systemui/qs/tiles/UHQTile;Z)Z

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UHQTile$1;->this$0:Lcom/android/systemui/qs/tiles/UHQTile;

    invoke-virtual {v1}, Lcom/android/systemui/qs/tiles/UHQTile;->refreshState()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UHQTile$1;->this$0:Lcom/android/systemui/qs/tiles/UHQTile;

    invoke-static {v1, v4}, Lcom/android/systemui/qs/tiles/UHQTile;->-set0(Lcom/android/systemui/qs/tiles/UHQTile;Z)Z

    goto :goto_0
.end method
