.class Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;
.super Landroid/os/Handler;
.source "NetspeedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mBeforeSpd:J

.field private mSpd:J

.field private mVpnData:Z

.field final synthetic this$1:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->this$1:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->mVpnData:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    const-wide/16 v12, 0xbb8

    const/4 v10, 0x2

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetspeedView;->-get7()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetspeedView;->-get0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetspeedView;->-get0()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->mBeforeSpd:J

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->mVpnData:Z

    :goto_1
    invoke-virtual {p0, v10, v12, v13}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v2

    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->mBeforeSpd:J

    goto :goto_1

    :pswitch_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->mVpnData:Z

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetspeedView;->-get0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetspeedView;->-get0()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->mSpd:J

    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetspeedView;->-get7()Z

    move-result v2

    if-nez v2, :cond_2

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->mVpnData:Z

    :cond_2
    :goto_2
    const-string/jumbo v1, ""

    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->mSpd:J

    iget-wide v4, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->mBeforeSpd:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x44800000    # 1024.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x40400000    # 3.0f

    div-float v0, v2, v3

    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->mSpd:J

    iput-wide v2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->mBeforeSpd:J

    float-to-double v2, v0

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_4

    const-string/jumbo v1, "0K/s"

    :goto_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->this$1:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->countObservers()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->this$1:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->-wrap0(Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->this$1:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->notifyObservers(Ljava/lang/Object;)V

    invoke-virtual {p0, v10, v12, v13}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v2

    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->mSpd:J

    goto :goto_2

    :cond_4
    float-to-double v2, v0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_5

    const-string/jumbo v2, "%.2fK/s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_5
    float-to-double v2, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_6

    const-string/jumbo v2, "%.1fK/s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_6
    float-to-double v2, v0

    const-wide/high16 v4, 0x40f9000000000000L    # 102400.0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_7

    const-string/jumbo v2, "%.2fM/s"

    new-array v3, v7, [Ljava/lang/Object;

    float-to-double v4, v0

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_7
    const-string/jumbo v2, "%.1fM/s"

    new-array v3, v7, [Ljava/lang/Object;

    float-to-double v4, v0

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
