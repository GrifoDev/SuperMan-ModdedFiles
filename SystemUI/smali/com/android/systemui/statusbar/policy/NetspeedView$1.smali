.class Lcom/android/systemui/statusbar/policy/NetspeedView$1;
.super Landroid/database/ContentObserver;
.source "NetspeedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetspeedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetspeedView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$1;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetspeedView;->-get1()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "network_speed"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetspeedView;->-set1(Z)Z

    const-string/jumbo v1, "NetworkSpeedView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onChange - mNetspeedSwitch = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetspeedView;->-get2()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  mRegisterReceiver = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$1;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetspeedView;->-get6(Lcom/android/systemui/statusbar/policy/NetspeedView;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetspeedView;->-get2()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$1;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetspeedView;->-get6(Lcom/android/systemui/statusbar/policy/NetspeedView;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetspeedView;->-get1()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$1;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/NetspeedView;->-get5(Lcom/android/systemui/statusbar/policy/NetspeedView;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$1;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/NetspeedView;->-set3(Lcom/android/systemui/statusbar/policy/NetspeedView;Z)Z

    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetspeedView;->-get2()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$1;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetspeedView;->-get6(Lcom/android/systemui/statusbar/policy/NetspeedView;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetspeedView;->-get1()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$1;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetspeedView;->-get5(Lcom/android/systemui/statusbar/policy/NetspeedView;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$1;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/policy/NetspeedView;->-set3(Lcom/android/systemui/statusbar/policy/NetspeedView;Z)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$1;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetspeedView;->-wrap1(Lcom/android/systemui/statusbar/policy/NetspeedView;)V

    :cond_1
    return-void

    :cond_2
    move v1, v3

    goto/16 :goto_0
.end method
