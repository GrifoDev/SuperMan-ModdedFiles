.class Lcom/android/server/bridge/operations/DbObserver$2;
.super Ljava/lang/Object;
.source "DbObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bridge/operations/DbObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/bridge/operations/DbObserver;


# direct methods
.method constructor <init>(Lcom/android/server/bridge/operations/DbObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/bridge/operations/DbObserver$2;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/server/bridge/operations/DbObserver$2;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v4}, Lcom/android/server/bridge/operations/DbObserver;->-wrap3(Lcom/android/server/bridge/operations/DbObserver;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/bridge/operations/DbObserver$2;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v4}, Lcom/android/server/bridge/operations/DbObserver;->-wrap0(Lcom/android/server/bridge/operations/DbObserver;)I

    move-result v1

    iget-object v4, p0, Lcom/android/server/bridge/operations/DbObserver$2;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v4}, Lcom/android/server/bridge/operations/DbObserver;->-wrap5(Lcom/android/server/bridge/operations/DbObserver;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/bridge/operations/DbObserver$2;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v4}, Lcom/android/server/bridge/operations/DbObserver;->-wrap2(Lcom/android/server/bridge/operations/DbObserver;)I

    move-result v2

    iget-object v4, p0, Lcom/android/server/bridge/operations/DbObserver$2;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v4}, Lcom/android/server/bridge/operations/DbObserver;->-get0(Lcom/android/server/bridge/operations/DbObserver;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mCalendarRunnable , mNo_of_events_last_synced : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/bridge/operations/DbObserver$2;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v6}, Lcom/android/server/bridge/operations/DbObserver;->-get6(Lcom/android/server/bridge/operations/DbObserver;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ,mNo_of_tasks_last_synced  : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/bridge/operations/DbObserver$2;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v6}, Lcom/android/server/bridge/operations/DbObserver;->-get7(Lcom/android/server/bridge/operations/DbObserver;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ,mPresent_no_of_Events : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " , mPresent_no_of_Tasks : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/server/bridge/operations/DbObserver$2;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v4}, Lcom/android/server/bridge/operations/DbObserver;->-get0(Lcom/android/server/bridge/operations/DbObserver;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Calling doSyncForSyncer for CALENDAR "

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/bridge/operations/DbObserver$2;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v4}, Lcom/android/server/bridge/operations/DbObserver;->-get8(Lcom/android/server/bridge/operations/DbObserver;)Lcom/samsung/android/knox/SemRemoteContentManager;

    move-result-object v4

    const-string/jumbo v5, "Calendar"

    iget-object v6, p0, Lcom/android/server/bridge/operations/DbObserver$2;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v6}, Lcom/android/server/bridge/operations/DbObserver;->-get9(Lcom/android/server/bridge/operations/DbObserver;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/knox/SemRemoteContentManager;->doSyncForSyncer(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/android/server/bridge/operations/DbObserver$2;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v4, v1}, Lcom/android/server/bridge/operations/DbObserver;->-set3(Lcom/android/server/bridge/operations/DbObserver;I)I

    iget-object v4, p0, Lcom/android/server/bridge/operations/DbObserver$2;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v4, v2}, Lcom/android/server/bridge/operations/DbObserver;->-set4(Lcom/android/server/bridge/operations/DbObserver;I)I

    iget-object v4, p0, Lcom/android/server/bridge/operations/DbObserver$2;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/android/server/bridge/operations/DbObserver;->-set0(Lcom/android/server/bridge/operations/DbObserver;J)J

    iget-object v4, p0, Lcom/android/server/bridge/operations/DbObserver$2;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v4}, Lcom/android/server/bridge/operations/DbObserver;->-get0(Lcom/android/server/bridge/operations/DbObserver;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mCalendarRunnable , mCalendar_last_synced_timeStamp :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/bridge/operations/DbObserver$2;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v6}, Lcom/android/server/bridge/operations/DbObserver;->-get1(Lcom/android/server/bridge/operations/DbObserver;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/server/bridge/operations/DbObserver$2;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v4}, Lcom/android/server/bridge/operations/DbObserver;->-get6(Lcom/android/server/bridge/operations/DbObserver;)I

    move-result v4

    if-ne v1, v4, :cond_0

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_0

    :cond_3
    iget-object v4, p0, Lcom/android/server/bridge/operations/DbObserver$2;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v4}, Lcom/android/server/bridge/operations/DbObserver;->-get7(Lcom/android/server/bridge/operations/DbObserver;)I

    move-result v4

    if-eq v2, v4, :cond_1

    goto :goto_0
.end method
