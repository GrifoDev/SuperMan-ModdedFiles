.class Lcom/android/server/bridge/operations/DbObserver$1;
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

    iput-object p1, p0, Lcom/android/server/bridge/operations/DbObserver$1;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v2, p0, Lcom/android/server/bridge/operations/DbObserver$1;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v2}, Lcom/android/server/bridge/operations/DbObserver;->-wrap4(Lcom/android/server/bridge/operations/DbObserver;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/bridge/operations/DbObserver$1;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v2}, Lcom/android/server/bridge/operations/DbObserver;->-wrap1(Lcom/android/server/bridge/operations/DbObserver;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/bridge/operations/DbObserver$1;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v2}, Lcom/android/server/bridge/operations/DbObserver;->-get0(Lcom/android/server/bridge/operations/DbObserver;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mContactRunnable , mNo_of_contact_last_synced :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/bridge/operations/DbObserver$1;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v4}, Lcom/android/server/bridge/operations/DbObserver;->-get5(Lcom/android/server/bridge/operations/DbObserver;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ,present_no_of_contacts :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    :goto_0
    iget-object v2, p0, Lcom/android/server/bridge/operations/DbObserver$1;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v2}, Lcom/android/server/bridge/operations/DbObserver;->-get0(Lcom/android/server/bridge/operations/DbObserver;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Calling doSyncForSyncer for CONTACTS "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/bridge/operations/DbObserver$1;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v2}, Lcom/android/server/bridge/operations/DbObserver;->-get8(Lcom/android/server/bridge/operations/DbObserver;)Lcom/samsung/android/knox/SemRemoteContentManager;

    move-result-object v2

    const-string/jumbo v3, "Contacts"

    iget-object v4, p0, Lcom/android/server/bridge/operations/DbObserver$1;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v4}, Lcom/android/server/bridge/operations/DbObserver;->-get9(Lcom/android/server/bridge/operations/DbObserver;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/knox/SemRemoteContentManager;->doSyncForSyncer(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/server/bridge/operations/DbObserver$1;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/android/server/bridge/operations/DbObserver;->-set1(Lcom/android/server/bridge/operations/DbObserver;J)J

    iget-object v2, p0, Lcom/android/server/bridge/operations/DbObserver$1;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v2}, Lcom/android/server/bridge/operations/DbObserver;->-get0(Lcom/android/server/bridge/operations/DbObserver;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mContactRunnable , mContact_last_synced_timeStamp :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/bridge/operations/DbObserver$1;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v4}, Lcom/android/server/bridge/operations/DbObserver;->-get2(Lcom/android/server/bridge/operations/DbObserver;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/bridge/operations/DbObserver$1;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v2, v1}, Lcom/android/server/bridge/operations/DbObserver;->-set2(Lcom/android/server/bridge/operations/DbObserver;I)I

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/bridge/operations/DbObserver$1;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v2}, Lcom/android/server/bridge/operations/DbObserver;->-get5(Lcom/android/server/bridge/operations/DbObserver;)I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_0
.end method
