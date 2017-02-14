.class Lcom/android/systemui/statusbar/ServiceMonitor$2;
.super Landroid/database/ContentObserver;
.source "ServiceMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/ServiceMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/ServiceMonitor;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ServiceMonitor;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ServiceMonitor$2;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/ServiceMonitor$2;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 5

    iget-object v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor$2;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    invoke-static {v1}, Lcom/android/systemui/statusbar/ServiceMonitor;->-get1(Lcom/android/systemui/statusbar/ServiceMonitor;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor$2;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    invoke-static {v1}, Lcom/android/systemui/statusbar/ServiceMonitor;->-get4(Lcom/android/systemui/statusbar/ServiceMonitor;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onChange selfChange="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor$2;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    invoke-static {v1}, Lcom/android/systemui/statusbar/ServiceMonitor;->-wrap0(Lcom/android/systemui/statusbar/ServiceMonitor;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor$2;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    invoke-static {v1}, Lcom/android/systemui/statusbar/ServiceMonitor;->-get3(Lcom/android/systemui/statusbar/ServiceMonitor;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor$2;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    invoke-static {v1}, Lcom/android/systemui/statusbar/ServiceMonitor;->-get1(Lcom/android/systemui/statusbar/ServiceMonitor;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor$2;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    invoke-static {v1}, Lcom/android/systemui/statusbar/ServiceMonitor;->-get4(Lcom/android/systemui/statusbar/ServiceMonitor;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "skipping no-op restart"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor$2;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    invoke-static {v1}, Lcom/android/systemui/statusbar/ServiceMonitor;->-get3(Lcom/android/systemui/statusbar/ServiceMonitor;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor$2;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    invoke-static {v1}, Lcom/android/systemui/statusbar/ServiceMonitor;->-get0(Lcom/android/systemui/statusbar/ServiceMonitor;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor$2;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    invoke-static {v1}, Lcom/android/systemui/statusbar/ServiceMonitor;->-get2(Lcom/android/systemui/statusbar/ServiceMonitor;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor$2;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    invoke-static {v1}, Lcom/android/systemui/statusbar/ServiceMonitor;->-get2(Lcom/android/systemui/statusbar/ServiceMonitor;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
