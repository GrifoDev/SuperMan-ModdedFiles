.class Lcom/android/systemui/qs/external/TileServiceManager$1;
.super Ljava/lang/Object;
.source "TileServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/external/TileServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/external/TileServiceManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/external/TileServiceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServiceManager$1;->this$0:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager$1;->this$0:Lcom/android/systemui/qs/external/TileServiceManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/external/TileServiceManager;->-set1(Lcom/android/systemui/qs/external/TileServiceManager;Z)Z

    const-string/jumbo v0, "TileServiceManager"

    const-string/jumbo v1, "mStopWaitingUnlock : "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager$1;->this$0:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-static {v0}, Lcom/android/systemui/qs/external/TileServiceManager;->-get3(Lcom/android/systemui/qs/external/TileServiceManager;)Lcom/android/systemui/qs/external/TileServices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileServices;->recalculateBindAllowance()V

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager$1;->this$0:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-static {v0}, Lcom/android/systemui/qs/external/TileServiceManager;->-get1(Lcom/android/systemui/qs/external/TileServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager$1;->this$0:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-static {v0}, Lcom/android/systemui/qs/external/TileServiceManager;->-get0(Lcom/android/systemui/qs/external/TileServiceManager;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager$1;->this$0:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-static {v0}, Lcom/android/systemui/qs/external/TileServiceManager;->-get2(Lcom/android/systemui/qs/external/TileServiceManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServiceManager$1;->this$0:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-static {v1}, Lcom/android/systemui/qs/external/TileServiceManager;->-get5(Lcom/android/systemui/qs/external/TileServiceManager;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
