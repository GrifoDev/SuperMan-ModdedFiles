.class Lcom/android/systemui/qs/tiles/WifiCallingSprTile$2;
.super Landroid/database/ContentObserver;
.source "WifiCallingSprTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/WifiCallingSprTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WifiCallingSprTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingSprTile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    invoke-static {}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->-get5()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WfcEnableTask;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingSprTile;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WfcEnableTask;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WfcEnableTask;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WfcEnableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
