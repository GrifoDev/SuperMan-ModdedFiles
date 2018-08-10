.class Lcom/android/server/am/MARsTrigger$3$1;
.super Ljava/lang/Object;
.source "MARsTrigger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/MARsTrigger$3;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/MARsTrigger$3;


# direct methods
.method constructor <init>(Lcom/android/server/am/MARsTrigger$3;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MARsTrigger$3$1;->this$1:Lcom/android/server/am/MARsTrigger$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger$3$1;->this$1:Lcom/android/server/am/MARsTrigger$3;

    iget-object v1, v1, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v1, v1, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->getAppUsedRecentlyState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger$3$1;->this$1:Lcom/android/server/am/MARsTrigger$3;

    iget-object v1, v1, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    const-string/jumbo v2, "FIRST_ALARM_AUTORUN_TRAFFIC_STAT"

    iget-object v3, p0, Lcom/android/server/am/MARsTrigger$3$1;->this$1:Lcom/android/server/am/MARsTrigger$3;

    iget-object v3, v3, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-wide v4, v3, Lcom/android/server/am/MARsTrigger;->mAutoRunRepeatAlarmInterval:J

    iget-object v3, p0, Lcom/android/server/am/MARsTrigger$3$1;->this$1:Lcom/android/server/am/MARsTrigger$3;

    iget-object v3, v3, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-wide v6, v3, Lcom/android/server/am/MARsTrigger;->mAutoRunTrafficStatCollectorInterval:J

    sub-long/2addr v4, v6

    invoke-static {v1, v2, v4, v5}, Lcom/android/server/am/MARsTrigger;->-wrap3(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;J)V

    :goto_0
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger$3$1;->this$1:Lcom/android/server/am/MARsTrigger$3;

    iget-object v1, v1, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v1, v1, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsPolicyManager;->setAppUsedRecentlyState(Z)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger$3$1;->this$1:Lcom/android/server/am/MARsTrigger$3;

    iget-object v1, v1, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    const-string/jumbo v2, "REPEAT_ALARM_AUTORUN_TRAFFIC_STAT"

    iget-object v3, p0, Lcom/android/server/am/MARsTrigger$3$1;->this$1:Lcom/android/server/am/MARsTrigger$3;

    iget-object v3, v3, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-wide v4, v3, Lcom/android/server/am/MARsTrigger;->mAutoRunRepeatAlarmInterval:J

    iget-object v3, p0, Lcom/android/server/am/MARsTrigger$3$1;->this$1:Lcom/android/server/am/MARsTrigger$3;

    iget-object v3, v3, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-wide v6, v3, Lcom/android/server/am/MARsTrigger;->mAutoRunTrafficStatCollectorInterval:J

    sub-long/2addr v4, v6

    invoke-static {v1, v2, v4, v5}, Lcom/android/server/am/MARsTrigger;->-wrap3(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;J)V

    goto :goto_0
.end method
