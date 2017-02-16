.class Lcom/android/systemui/qs/tiles/RedPacketTile$1;
.super Landroid/content/BroadcastReceiver;
.source "RedPacketTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/RedPacketTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/RedPacketTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/RedPacketTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/RedPacketTile$1;->this$0:Lcom/android/systemui/qs/tiles/RedPacketTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string/jumbo v1, "RedPacketTile"

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

    const-string/jumbo v1, "android.intent.action.ACTION_HONGBAO_RECEIVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RedPacketTile$1;->this$0:Lcom/android/systemui/qs/tiles/RedPacketTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/RedPacketTile;->-wrap0(Lcom/android/systemui/qs/tiles/RedPacketTile;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RedPacketTile$1;->this$0:Lcom/android/systemui/qs/tiles/RedPacketTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/RedPacketTile;->-get2(Lcom/android/systemui/qs/tiles/RedPacketTile;)Lcom/android/systemui/qs/SystemSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RedPacketTile$1;->this$0:Lcom/android/systemui/qs/tiles/RedPacketTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/RedPacketTile;->-wrap4(Lcom/android/systemui/qs/tiles/RedPacketTile;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RedPacketTile$1;->this$0:Lcom/android/systemui/qs/tiles/RedPacketTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/RedPacketTile;->-get3(Lcom/android/systemui/qs/tiles/RedPacketTile;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RedPacketTile$1;->this$0:Lcom/android/systemui/qs/tiles/RedPacketTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/RedPacketTile;->-get3(Lcom/android/systemui/qs/tiles/RedPacketTile;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RedPacketTile$1;->this$0:Lcom/android/systemui/qs/tiles/RedPacketTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/RedPacketTile;->-get3(Lcom/android/systemui/qs/tiles/RedPacketTile;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "com.sec.systemui.HONGBAO_ASSISTANT_ON_ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RedPacketTile$1;->this$0:Lcom/android/systemui/qs/tiles/RedPacketTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/RedPacketTile;->-wrap0(Lcom/android/systemui/qs/tiles/RedPacketTile;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RedPacketTile$1;->this$0:Lcom/android/systemui/qs/tiles/RedPacketTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/RedPacketTile;->-wrap3(Lcom/android/systemui/qs/tiles/RedPacketTile;)V

    goto :goto_0
.end method
