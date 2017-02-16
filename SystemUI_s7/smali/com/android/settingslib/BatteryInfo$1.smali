.class Lcom/android/settingslib/BatteryInfo$1;
.super Ljava/lang/Object;
.source "BatteryInfo.java"

# interfaces
.implements Lcom/android/settingslib/BatteryInfo$BatteryDataParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/BatteryInfo;->bindHistory(Lcom/android/settingslib/graph/UsageView;[Lcom/android/settingslib/BatteryInfo$BatteryDataParser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field points:Landroid/util/SparseIntArray;

.field final synthetic this$0:Lcom/android/settingslib/BatteryInfo;

.field final synthetic val$view:Lcom/android/settingslib/graph/UsageView;


# direct methods
.method constructor <init>(Lcom/android/settingslib/BatteryInfo;Lcom/android/settingslib/graph/UsageView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settingslib/BatteryInfo$1;->this$0:Lcom/android/settingslib/BatteryInfo;

    iput-object p2, p0, Lcom/android/settingslib/BatteryInfo$1;->val$view:Lcom/android/settingslib/graph/UsageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/BatteryInfo$1;->points:Landroid/util/SparseIntArray;

    return-void
.end method


# virtual methods
.method public onDataGap()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/BatteryInfo$1;->points:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/BatteryInfo$1;->val$view:Lcom/android/settingslib/graph/UsageView;

    iget-object v1, p0, Lcom/android/settingslib/BatteryInfo$1;->points:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/graph/UsageView;->addPath(Landroid/util/SparseIntArray;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/BatteryInfo$1;->points:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public onDataPoint(JLandroid/os/BatteryStats$HistoryItem;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/BatteryInfo$1;->points:Landroid/util/SparseIntArray;

    long-to-int v1, p1

    iget-byte v2, p3, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public onParsingDone()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/BatteryInfo$1;->points:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/BatteryInfo$1;->val$view:Lcom/android/settingslib/graph/UsageView;

    iget-object v1, p0, Lcom/android/settingslib/BatteryInfo$1;->points:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/graph/UsageView;->addPath(Landroid/util/SparseIntArray;)V

    :cond_0
    return-void
.end method

.method public onParsingStarted(JJ)V
    .locals 9

    iget-object v0, p0, Lcom/android/settingslib/BatteryInfo$1;->this$0:Lcom/android/settingslib/BatteryInfo;

    sub-long v2, p3, p1

    iget-object v1, p0, Lcom/android/settingslib/BatteryInfo$1;->this$0:Lcom/android/settingslib/BatteryInfo;

    iget-wide v4, v1, Lcom/android/settingslib/BatteryInfo;->remainingTimeUs:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/android/settingslib/BatteryInfo;->-set0(Lcom/android/settingslib/BatteryInfo;J)J

    iget-object v0, p0, Lcom/android/settingslib/BatteryInfo$1;->val$view:Lcom/android/settingslib/graph/UsageView;

    invoke-virtual {v0}, Lcom/android/settingslib/graph/UsageView;->clearPaths()V

    iget-object v1, p0, Lcom/android/settingslib/BatteryInfo$1;->val$view:Lcom/android/settingslib/graph/UsageView;

    sub-long v2, p3, p1

    long-to-int v2, v2

    iget-object v0, p0, Lcom/android/settingslib/BatteryInfo$1;->this$0:Lcom/android/settingslib/BatteryInfo;

    iget-wide v4, v0, Lcom/android/settingslib/BatteryInfo;->remainingTimeUs:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/settingslib/BatteryInfo$1;->this$0:Lcom/android/settingslib/BatteryInfo;

    invoke-static {v3}, Lcom/android/settingslib/BatteryInfo;->-get0(Lcom/android/settingslib/BatteryInfo;)Z

    move-result v3

    const/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v0, v3}, Lcom/android/settingslib/graph/UsageView;->configureGraph(IIZZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
