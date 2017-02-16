.class Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;
.super Ljava/lang/Object;
.source "DaemonConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/util/DaemonConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResponseQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    }
.end annotation


# instance fields
.field private mMaxCount:I

.field private final mPendingCmds:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "maxCount"    # I

    .prologue
    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 540
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    .line 541
    iput p1, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mMaxCount:I

    .line 539
    return-void
.end method


# virtual methods
.method public add(ILcom/sec/knox/container/util/DaemonEvent;)V
    .locals 9
    .param p1, "cmdNum"    # I
    .param p2, "response"    # Lcom/sec/knox/container/util/DaemonEvent;

    .prologue
    .line 545
    const/4 v1, 0x0

    .line 546
    .local v1, "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    iget-object v6, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    monitor-enter v6

    .line 547
    :try_start_0
    iget-object v5, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "pendingCmd$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;

    .line 548
    .local v3, "pendingCmd":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    iget v5, v3, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v5, p1, :cond_0

    .line 549
    move-object v1, v3

    .local v1, "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    move-object v2, v1

    .line 553
    .end local v1    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .end local v3    # "pendingCmd":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .local v2, "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    :goto_0
    if-nez v2, :cond_3

    .line 556
    :goto_1
    :try_start_1
    iget-object v5, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    iget v7, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mMaxCount:I

    if-lt v5, v7, :cond_1

    .line 557
    const-string/jumbo v5, "DaemonConnector.ResponseQueue"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "more buffered than allowed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 558
    iget-object v8, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    .line 557
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 558
    const-string/jumbo v8, " >= "

    .line 557
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 558
    iget v8, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mMaxCount:I

    .line 557
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v5, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;

    .line 561
    .restart local v3    # "pendingCmd":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    const-string/jumbo v5, "DaemonConnector.ResponseQueue"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Removing request: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 562
    iget-object v8, v3, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->request:Ljava/lang/String;

    .line 561
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 562
    const-string/jumbo v8, " ("

    .line 561
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 562
    iget v8, v3, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I

    .line 561
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 562
    const-string/jumbo v8, ")"

    .line 561
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 546
    .end local v3    # "pendingCmd":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    :catchall_0
    move-exception v5

    move-object v1, v2

    .end local v2    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .end local v4    # "pendingCmd$iterator":Ljava/util/Iterator;
    :goto_2
    monitor-exit v6

    throw v5

    .line 564
    .restart local v2    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .restart local v4    # "pendingCmd$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_2
    new-instance v1, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;

    const/4 v5, 0x0

    invoke-direct {v1, p1, v5}, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 565
    .end local v2    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .restart local v1    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    :try_start_3
    iget-object v5, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 567
    :goto_3
    iget v5, v1, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v1, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    .line 571
    iget v5, v1, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    if-nez v5, :cond_2

    .line 572
    iget-object v5, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    monitor-exit v6

    .line 575
    :try_start_4
    iget-object v5, v1, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->responses:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5, p2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 544
    :goto_4
    return-void

    .line 576
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_4

    .line 546
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .end local v4    # "pendingCmd$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v5

    goto :goto_2

    .restart local v2    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .restart local v4    # "pendingCmd$iterator":Ljava/util/Iterator;
    :cond_3
    move-object v1, v2

    .end local v2    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .restart local v1    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    goto :goto_3

    .local v1, "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    :cond_4
    move-object v2, v1

    .restart local v2    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    goto/16 :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 615
    const-string/jumbo v2, "Pending requests:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 616
    iget-object v3, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    monitor-enter v3

    .line 617
    :try_start_0
    iget-object v2, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "pendingCmd$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;

    .line 618
    .local v0, "pendingCmd":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  Cmd "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->request:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 616
    .end local v0    # "pendingCmd":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .end local v1    # "pendingCmd$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "pendingCmd$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    .line 614
    return-void
.end method

.method public remove(IILjava/lang/String;)Lcom/sec/knox/container/util/DaemonEvent;
    .locals 12
    .param p1, "cmdNum"    # I
    .param p2, "timeoutMs"    # I
    .param p3, "origCmd"    # Ljava/lang/String;

    .prologue
    .line 584
    const/4 v3, 0x0

    .line 585
    .local v3, "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    iget-object v9, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    monitor-enter v9

    .line 586
    :try_start_0
    iget-object v8, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "pendingCmd$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;

    .line 587
    .local v5, "pendingCmd":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    iget v8, v5, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v8, p1, :cond_0

    .line 588
    move-object v3, v5

    .local v3, "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    move-object v4, v3

    .line 592
    .end local v3    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .end local v5    # "pendingCmd":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .local v4, "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    :goto_0
    if-nez v4, :cond_3

    .line 593
    :try_start_1
    new-instance v3, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;

    invoke-direct {v3, p1, p3}, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 594
    .end local v4    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .restart local v3    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    :try_start_2
    iget-object v8, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v8, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 596
    :goto_1
    iget v8, v3, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v3, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    .line 600
    iget v8, v3, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    if-nez v8, :cond_1

    .line 601
    iget-object v8, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v8, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit v9

    .line 603
    const/4 v7, 0x0

    .line 605
    .local v7, "result":Lcom/sec/knox/container/util/DaemonEvent;
    :try_start_3
    iget-object v8, v3, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->responses:Ljava/util/concurrent/BlockingQueue;

    int-to-long v10, p2

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v8, v10, v11, v9}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/sec/knox/container/util/DaemonEvent;

    move-object v7, v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 608
    .end local v7    # "result":Lcom/sec/knox/container/util/DaemonEvent;
    :goto_2
    if-nez v7, :cond_2

    .line 609
    const-string/jumbo v8, "DaemonConnector.ResponseQueue"

    const-string/jumbo v9, "Timeout waiting for response"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_2
    return-object v7

    .line 585
    .end local v3    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .end local v6    # "pendingCmd$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    :goto_3
    monitor-exit v9

    throw v8

    .line 606
    .restart local v3    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .restart local v6    # "pendingCmd$iterator":Ljava/util/Iterator;
    .restart local v7    # "result":Lcom/sec/knox/container/util/DaemonEvent;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/InterruptedException;
    goto :goto_2

    .line 585
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v3    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .end local v7    # "result":Lcom/sec/knox/container/util/DaemonEvent;
    .restart local v4    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .restart local v3    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    goto :goto_3

    .end local v3    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .restart local v4    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    :cond_3
    move-object v3, v4

    .end local v4    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .restart local v3    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    goto :goto_1

    .local v3, "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    :cond_4
    move-object v4, v3

    .restart local v4    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    goto :goto_0
.end method
