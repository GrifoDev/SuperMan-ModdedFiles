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
.field final synthetic this$1:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->this$1:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->this$1:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v4, v8

    invoke-static {v3, v4, v5}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->-set1(Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;D)D

    const-wide/16 v4, 0x3e8

    const/4 v3, 0x3

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->this$1:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v4, v8

    invoke-static {v3, v4, v5}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->-set0(Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;D)D

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->this$1:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->this$1:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->-get0(Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;)D

    move-result-wide v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->this$1:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->-get1(Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;)D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v3, v4, v5}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->-set2(Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;D)D

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_2
    const-string/jumbo v2, ""

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->this$1:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->-get2(Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpg-double v3, v4, v6

    if-gtz v3, :cond_2

    const-string/jumbo v3, "%.0f K/s"

    new-array v4, v11, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->this$1:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->-get2(Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->this$1:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->-get3(Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->this$1:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->-get2(Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;)D

    move-result-wide v4

    cmpg-double v3, v4, v8

    if-gez v3, :cond_3

    const-string/jumbo v3, "%.2f K/s"

    new-array v4, v11, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->this$1:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->-get2(Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->this$1:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->-get2(Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;)D

    move-result-wide v4

    cmpl-double v3, v4, v8

    if-lez v3, :cond_1

    const-string/jumbo v3, "%.2f M/s"

    new-array v4, v11, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->this$1:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->-get2(Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;)D

    move-result-wide v6

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->this$1:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->-get3(Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
