.class Lcom/sec/android/cover/manager/MissedEventManager$CallsContentObserver;
.super Landroid/database/ContentObserver;
.source "MissedEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/manager/MissedEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallsContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/manager/MissedEventManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/cover/manager/MissedEventManager;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/cover/manager/MissedEventManager$CallsContentObserver;->this$0:Lcom/sec/android/cover/manager/MissedEventManager;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 8

    invoke-static {}, Lcom/sec/android/cover/manager/MissedEventManager;->-get0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "CallsContentObserver.onChange uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/cover/manager/MissedEventManager$CallsContentObserver;->this$0:Lcom/sec/android/cover/manager/MissedEventManager;

    invoke-static {v5}, Lcom/sec/android/cover/manager/MissedEventManager;->-get3(Lcom/sec/android/cover/manager/MissedEventManager;)[I

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/cover/manager/MissedEventManager$CallsContentObserver;->this$0:Lcom/sec/android/cover/manager/MissedEventManager;

    invoke-static {v6}, Lcom/sec/android/cover/manager/MissedEventManager;->-get3(Lcom/sec/android/cover/manager/MissedEventManager;)[I

    move-result-object v6

    array-length v6, v6

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/cover/manager/MissedEventManager$CallsContentObserver;->this$0:Lcom/sec/android/cover/manager/MissedEventManager;

    invoke-static {v5}, Lcom/sec/android/cover/manager/MissedEventManager;->-wrap0(Lcom/sec/android/cover/manager/MissedEventManager;)[Lcom/sec/android/cover/manager/MissedEventManager$MissedCallUpdate;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v5, p0, Lcom/sec/android/cover/manager/MissedEventManager$CallsContentObserver;->this$0:Lcom/sec/android/cover/manager/MissedEventManager;

    invoke-static {v5}, Lcom/sec/android/cover/manager/MissedEventManager;->-get3(Lcom/sec/android/cover/manager/MissedEventManager;)[I

    move-result-object v5

    array-length v5, v5

    if-ge v1, v5, :cond_2

    aget-object v5, v0, v1

    if-nez v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/sec/android/cover/manager/MissedEventManager$CallsContentObserver;->this$0:Lcom/sec/android/cover/manager/MissedEventManager;

    invoke-static {v5}, Lcom/sec/android/cover/manager/MissedEventManager;->-get3(Lcom/sec/android/cover/manager/MissedEventManager;)[I

    move-result-object v5

    aget-object v6, v0, v1

    invoke-static {v6}, Lcom/sec/android/cover/manager/MissedEventManager$MissedCallUpdate;->-get0(Lcom/sec/android/cover/manager/MissedEventManager$MissedCallUpdate;)I

    move-result v6

    aput v6, v5, v1

    invoke-static {}, Lcom/sec/android/cover/manager/MissedEventManager;->-get0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "CallsContentObserver.onChange userId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/cover/manager/MissedEventManager$CallsContentObserver;->this$0:Lcom/sec/android/cover/manager/MissedEventManager;

    invoke-static {v7}, Lcom/sec/android/cover/manager/MissedEventManager;->-get6(Lcom/sec/android/cover/manager/MissedEventManager;)[I

    move-result-object v7

    aget v7, v7, v1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " oldCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v3, v1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " newCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/cover/manager/MissedEventManager$CallsContentObserver;->this$0:Lcom/sec/android/cover/manager/MissedEventManager;

    invoke-static {v7}, Lcom/sec/android/cover/manager/MissedEventManager;->-get3(Lcom/sec/android/cover/manager/MissedEventManager;)[I

    move-result-object v7

    aget v7, v7, v1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " notify="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v0, v1

    invoke-static {v7}, Lcom/sec/android/cover/manager/MissedEventManager$MissedCallUpdate;->-get1(Lcom/sec/android/cover/manager/MissedEventManager$MissedCallUpdate;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget v5, v3, v1

    iget-object v6, p0, Lcom/sec/android/cover/manager/MissedEventManager$CallsContentObserver;->this$0:Lcom/sec/android/cover/manager/MissedEventManager;

    invoke-static {v6}, Lcom/sec/android/cover/manager/MissedEventManager;->-get3(Lcom/sec/android/cover/manager/MissedEventManager;)[I

    move-result-object v6

    aget v6, v6, v1

    if-eq v5, v6, :cond_0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sec/android/cover/manager/MissedEventManager$CallsContentObserver;->this$0:Lcom/sec/android/cover/manager/MissedEventManager;

    invoke-static {v5}, Lcom/sec/android/cover/manager/MissedEventManager;->-get1(Lcom/sec/android/cover/manager/MissedEventManager;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    aget v5, v3, v1

    iput v5, v2, Landroid/os/Message;->arg1:I

    iget-object v5, p0, Lcom/sec/android/cover/manager/MissedEventManager$CallsContentObserver;->this$0:Lcom/sec/android/cover/manager/MissedEventManager;

    invoke-static {v5}, Lcom/sec/android/cover/manager/MissedEventManager;->-get3(Lcom/sec/android/cover/manager/MissedEventManager;)[I

    move-result-object v5

    aget v5, v5, v1

    iput v5, v2, Landroid/os/Message;->arg2:I

    aget-object v5, v0, v1

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/android/cover/manager/MissedEventManager$CallsContentObserver;->this$0:Lcom/sec/android/cover/manager/MissedEventManager;

    invoke-static {v5}, Lcom/sec/android/cover/manager/MissedEventManager;->-get1(Lcom/sec/android/cover/manager/MissedEventManager;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method
