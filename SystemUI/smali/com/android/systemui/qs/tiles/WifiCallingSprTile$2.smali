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

    invoke-static {}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->-get4()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingSprTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->-get5(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingSprTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->-wrap2(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingSprTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->-get0(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChange : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingSprTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->-get5(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingSprTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->refreshState()V

    :cond_0
    return-void
.end method
