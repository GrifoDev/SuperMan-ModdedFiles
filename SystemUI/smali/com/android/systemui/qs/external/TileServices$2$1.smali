.class Lcom/android/systemui/qs/external/TileServices$2$1;
.super Ljava/lang/Object;
.source "TileServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/external/TileServices$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/external/TileServices$2;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/external/TileServices$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServices$2$1;->this$1:Lcom/android/systemui/qs/external/TileServices$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v5, p0, Lcom/android/systemui/qs/external/TileServices$2$1;->this$1:Lcom/android/systemui/qs/external/TileServices$2;

    iget-object v5, v5, Lcom/android/systemui/qs/external/TileServices$2;->this$0:Lcom/android/systemui/qs/external/TileServices;

    invoke-static {v5}, Lcom/android/systemui/qs/external/TileServices;->-get2(Lcom/android/systemui/qs/external/TileServices;)Landroid/util/ArrayMap;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/systemui/qs/external/TileServices$2$1;->this$1:Lcom/android/systemui/qs/external/TileServices$2;

    iget-object v5, v5, Lcom/android/systemui/qs/external/TileServices$2;->this$0:Lcom/android/systemui/qs/external/TileServices;

    invoke-static {v5}, Lcom/android/systemui/qs/external/TileServices;->-get2(Lcom/android/systemui/qs/external/TileServices;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-virtual {v3}, Lcom/android/systemui/qs/external/TileServiceManager;->getIsDefaultTile()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindRequested(Z)V

    :try_start_1
    invoke-virtual {v3}, Lcom/android/systemui/qs/external/TileServiceManager;->getTileService()Landroid/service/quicksettings/IQSTileService;

    move-result-object v5

    invoke-interface {v5}, Landroid/service/quicksettings/IQSTileService;->onStartListening()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_1
    return-void

    :catch_0
    move-exception v1

    goto :goto_1
.end method
