.class Lcom/android/systemui/qs/bar/DataUsageBar$1;
.super Landroid/content/BroadcastReceiver;
.source "DataUsageBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/bar/DataUsageBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/bar/DataUsageBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/bar/DataUsageBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/bar/DataUsageBar$1;->this$0:Lcom/android/systemui/qs/bar/DataUsageBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/qs/bar/DataUsageBar;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "DataUsageBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/bar/DataUsageBar$1;->this$0:Lcom/android/systemui/qs/bar/DataUsageBar;

    invoke-static {v1}, Lcom/android/systemui/qs/bar/DataUsageBar;->-wrap0(Lcom/android/systemui/qs/bar/DataUsageBar;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/qs/bar/DataUsageBar$1;->this$0:Lcom/android/systemui/qs/bar/DataUsageBar;

    invoke-static {v1}, Lcom/android/systemui/qs/bar/DataUsageBar;->-get1(Lcom/android/systemui/qs/bar/DataUsageBar;)Lcom/android/systemui/qs/DataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/qs/DataUsageView;->updateCurrentDataSubId()V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/DataUsageBar$1;->this$0:Lcom/android/systemui/qs/bar/DataUsageBar;

    invoke-static {v1}, Lcom/android/systemui/qs/bar/DataUsageBar;->-get2(Lcom/android/systemui/qs/bar/DataUsageBar;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/bar/DataUsageBar$1;->this$0:Lcom/android/systemui/qs/bar/DataUsageBar;

    invoke-static {v1}, Lcom/android/systemui/qs/bar/DataUsageBar;->-get1(Lcom/android/systemui/qs/bar/DataUsageBar;)Lcom/android/systemui/qs/DataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/qs/DataUsageView;->updateUsageInfo()V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "com.samsung.systemui.statusbar.ANIMATING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/bar/DataUsageBar$1;->this$0:Lcom/android/systemui/qs/bar/DataUsageBar;

    invoke-static {v1}, Lcom/android/systemui/qs/bar/DataUsageBar;->-get2(Lcom/android/systemui/qs/bar/DataUsageBar;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/bar/DataUsageBar$1;->this$0:Lcom/android/systemui/qs/bar/DataUsageBar;

    invoke-static {v1}, Lcom/android/systemui/qs/bar/DataUsageBar;->-get1(Lcom/android/systemui/qs/bar/DataUsageBar;)Lcom/android/systemui/qs/DataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/qs/DataUsageView;->updateUsageInfo()V

    goto :goto_0
.end method
