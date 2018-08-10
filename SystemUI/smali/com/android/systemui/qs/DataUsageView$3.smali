.class Lcom/android/systemui/qs/DataUsageView$3;
.super Ljava/lang/Thread;
.source "DataUsageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/DataUsageView;->updateUsageInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/DataUsageView;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/DataUsageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/DataUsageView$3;->this$0:Lcom/android/systemui/qs/DataUsageView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v1, p0, Lcom/android/systemui/qs/DataUsageView$3;->this$0:Lcom/android/systemui/qs/DataUsageView;

    invoke-static {v1}, Lcom/android/systemui/qs/DataUsageView;->-get0(Lcom/android/systemui/qs/DataUsageView;)Lcom/android/settingslib/net/DataUsageController;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/DataUsageView$3;->this$0:Lcom/android/systemui/qs/DataUsageView;

    invoke-static {v1}, Lcom/android/systemui/qs/DataUsageView;->-get0(Lcom/android/systemui/qs/DataUsageView;)Lcom/android/settingslib/net/DataUsageController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo()Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/DataUsageView$3;->this$0:Lcom/android/systemui/qs/DataUsageView;

    iget-wide v2, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/DataUsageView;->-set2(Lcom/android/systemui/qs/DataUsageView;J)J

    iget-object v1, p0, Lcom/android/systemui/qs/DataUsageView$3;->this$0:Lcom/android/systemui/qs/DataUsageView;

    iget-wide v2, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/DataUsageView;->-set0(Lcom/android/systemui/qs/DataUsageView;J)J

    invoke-static {}, Lcom/android/systemui/qs/DataUsageView;->-get2()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/DataUsageView$3;->this$0:Lcom/android/systemui/qs/DataUsageView;

    iget-object v2, p0, Lcom/android/systemui/qs/DataUsageView$3;->this$0:Lcom/android/systemui/qs/DataUsageView;

    invoke-static {v2, v0}, Lcom/android/systemui/qs/DataUsageView;->-wrap0(Lcom/android/systemui/qs/DataUsageView;Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/DataUsageView;->-set2(Lcom/android/systemui/qs/DataUsageView;J)J

    iget-object v1, p0, Lcom/android/systemui/qs/DataUsageView$3;->this$0:Lcom/android/systemui/qs/DataUsageView;

    iget-object v2, p0, Lcom/android/systemui/qs/DataUsageView$3;->this$0:Lcom/android/systemui/qs/DataUsageView;

    invoke-virtual {v2}, Lcom/android/systemui/qs/DataUsageView;->getLimitBytes()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/DataUsageView;->-set0(Lcom/android/systemui/qs/DataUsageView;J)J

    :cond_0
    :goto_0
    const-string/jumbo v1, "DataUsageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUsageInfo usageLevel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/DataUsageView$3;->this$0:Lcom/android/systemui/qs/DataUsageView;

    invoke-static {v3}, Lcom/android/systemui/qs/DataUsageView;->-get4(Lcom/android/systemui/qs/DataUsageView;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",limitLevel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/DataUsageView$3;->this$0:Lcom/android/systemui/qs/DataUsageView;

    invoke-static {v3}, Lcom/android/systemui/qs/DataUsageView;->-get3(Lcom/android/systemui/qs/DataUsageView;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/DataUsageView$3;->this$0:Lcom/android/systemui/qs/DataUsageView;

    invoke-static {v1}, Lcom/android/systemui/qs/DataUsageView;->-get1(Lcom/android/systemui/qs/DataUsageView;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/DataUsageView$3;->this$0:Lcom/android/systemui/qs/DataUsageView;

    iget-object v2, v2, Lcom/android/systemui/qs/DataUsageView;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/DataUsageView$3;->this$0:Lcom/android/systemui/qs/DataUsageView;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/DataUsageView;->-set2(Lcom/android/systemui/qs/DataUsageView;J)J

    goto :goto_0
.end method
