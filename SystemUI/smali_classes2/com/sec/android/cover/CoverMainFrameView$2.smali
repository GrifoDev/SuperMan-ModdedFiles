.class Lcom/sec/android/cover/CoverMainFrameView$2;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "CoverMainFrameView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/CoverMainFrameView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/CoverMainFrameView;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/CoverMainFrameView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/CoverMainFrameView$2;->this$0:Lcom/sec/android/cover/CoverMainFrameView;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView$2;->this$0:Lcom/sec/android/cover/CoverMainFrameView;

    iput-object p1, v0, Lcom/sec/android/cover/CoverMainFrameView;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-void
.end method

.method public onLocaleChanged()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/cover/CoverMainFrameView$2;->this$0:Lcom/sec/android/cover/CoverMainFrameView;

    invoke-static {v2}, Lcom/sec/android/cover/CoverMainFrameView;->-get1(Lcom/sec/android/cover/CoverMainFrameView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverBroadcastManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverBroadcastManager;

    move-result-object v1

    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/manager/CoverBroadcastManager;->getLastBroadcastInfo(Ljava/lang/String;)Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/cover/CoverMainFrameView$2;->this$0:Lcom/sec/android/cover/CoverMainFrameView;

    iget-object v3, v0, Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;->mItem:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/sec/android/cover/CoverMainFrameView;->-set1(Lcom/sec/android/cover/CoverMainFrameView;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/android/cover/CoverMainFrameView$2;->this$0:Lcom/sec/android/cover/CoverMainFrameView;

    invoke-static {v2}, Lcom/sec/android/cover/CoverMainFrameView;->-wrap0(Lcom/sec/android/cover/CoverMainFrameView;)V

    :cond_0
    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView$2;->this$0:Lcom/sec/android/cover/CoverMainFrameView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/cover/CoverMainFrameView;->-set0(Lcom/sec/android/cover/CoverMainFrameView;I)I

    iget-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView$2;->this$0:Lcom/sec/android/cover/CoverMainFrameView;

    invoke-static {v0, p1}, Lcom/sec/android/cover/CoverMainFrameView;->-set1(Lcom/sec/android/cover/CoverMainFrameView;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView$2;->this$0:Lcom/sec/android/cover/CoverMainFrameView;

    invoke-static {v0}, Lcom/sec/android/cover/CoverMainFrameView;->-wrap0(Lcom/sec/android/cover/CoverMainFrameView;)V

    return-void
.end method
