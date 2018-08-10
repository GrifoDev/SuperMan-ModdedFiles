.class Lcom/android/systemui/statusbar/phone/AutoTileManager$5;
.super Landroid/content/BroadcastReceiver;
.source "AutoTileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/AutoTileManager;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSTileHost;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/AutoTileManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$5;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "AutoTileManager"

    const-string/jumbo v2, "chameleon hotspot"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "com.samsung.CSC_CHAMELEON_UPDATE_SETTINGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$5;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->-get5(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/qs/QSTileHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTileHost;->refreshTileList()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$5;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->-get4(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/phone/AutoTileManager$5$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager$5$1;-><init>(Lcom/android/systemui/statusbar/phone/AutoTileManager$5;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
