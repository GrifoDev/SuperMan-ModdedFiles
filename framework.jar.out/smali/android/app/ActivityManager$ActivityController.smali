.class Landroid/app/ActivityManager$ActivityController;
.super Landroid/app/IActivityController$Stub;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityController"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityManager;


# direct methods
.method private constructor <init>(Landroid/app/ActivityManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ActivityManager;

    .prologue
    .line 543
    iput-object p1, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-direct {p0}, Landroid/app/IActivityController$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityManager;Landroid/app/ActivityManager$ActivityController;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ActivityManager;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityManager$ActivityController;-><init>(Landroid/app/ActivityManager;)V

    return-void
.end method


# virtual methods
.method public activityResuming(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 560
    const/4 v2, 0x1

    .line 561
    .local v2, "ret":Z
    iget-object v3, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v3}, Landroid/app/ActivityManager;->-get0(Landroid/app/ActivityManager;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v3}, Landroid/app/ActivityManager;->-get0(Landroid/app/ActivityManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 568
    :cond_0
    return v2

    .line 562
    :cond_1
    iget-object v3, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v3}, Landroid/app/ActivityManager;->-get0(Landroid/app/ActivityManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$SemActivityControllerListener;

    .line 563
    .local v0, "i":Landroid/app/ActivityManager$SemActivityControllerListener;
    invoke-interface {v0, p1}, Landroid/app/ActivityManager$SemActivityControllerListener;->onActivityResuming(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 564
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 547
    const/4 v2, 0x1

    .line 548
    .local v2, "ret":Z
    iget-object v3, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v3}, Landroid/app/ActivityManager;->-get0(Landroid/app/ActivityManager;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v3}, Landroid/app/ActivityManager;->-get0(Landroid/app/ActivityManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 555
    :cond_0
    return v2

    .line 549
    :cond_1
    iget-object v3, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v3}, Landroid/app/ActivityManager;->-get0(Landroid/app/ActivityManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$SemActivityControllerListener;

    .line 550
    .local v0, "i":Landroid/app/ActivityManager$SemActivityControllerListener;
    invoke-interface {v0, p1, p2}, Landroid/app/ActivityManager$SemActivityControllerListener;->onActivityStarting(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 551
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public appCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
    .locals 11
    .param p1, "proc"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "m"    # Ljava/lang/String;
    .param p4, "m2"    # Ljava/lang/String;
    .param p5, "time"    # J
    .param p7, "st"    # Ljava/lang/String;

    .prologue
    .line 573
    const/4 v9, 0x1

    .line 574
    .local v9, "ret":Z
    iget-object v2, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v2}, Landroid/app/ActivityManager;->-get0(Landroid/app/ActivityManager;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v2}, Landroid/app/ActivityManager;->-get0(Landroid/app/ActivityManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 581
    :cond_0
    return v9

    .line 575
    :cond_1
    iget-object v2, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v2}, Landroid/app/ActivityManager;->-get0(Landroid/app/ActivityManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$SemActivityControllerListener;

    .local v1, "i":Landroid/app/ActivityManager$SemActivityControllerListener;
    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    .line 576
    invoke-interface/range {v1 .. v8}, Landroid/app/ActivityManager$SemActivityControllerListener;->onAppCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 577
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public appEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .locals 6
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "annotation"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 586
    const/4 v2, 0x0

    .line 587
    .local v2, "ret":I
    const/4 v3, 0x0

    .line 588
    .local v3, "tempRet":I
    iget-object v4, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v4}, Landroid/app/ActivityManager;->-get0(Landroid/app/ActivityManager;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v4}, Landroid/app/ActivityManager;->-get0(Landroid/app/ActivityManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 602
    :cond_0
    return v2

    .line 589
    :cond_1
    iget-object v4, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v4}, Landroid/app/ActivityManager;->-get0(Landroid/app/ActivityManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$SemActivityControllerListener;

    .line 590
    .local v0, "i":Landroid/app/ActivityManager$SemActivityControllerListener;
    invoke-interface {v0, p1, p2, p3}, Landroid/app/ActivityManager$SemActivityControllerListener;->onAppEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    .line 591
    if-eqz v3, :cond_2

    .line 592
    if-ne v3, v5, :cond_3

    .line 593
    move v2, v3

    goto :goto_0

    .line 595
    :cond_3
    if-eq v2, v5, :cond_2

    .line 596
    move v2, v3

    goto :goto_0
.end method

.method public appNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .locals 6
    .param p1, "proc"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "st"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 607
    const/4 v2, 0x0

    .line 608
    .local v2, "ret":I
    const/4 v3, 0x0

    .line 609
    .local v3, "tempRet":I
    iget-object v4, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v4}, Landroid/app/ActivityManager;->-get0(Landroid/app/ActivityManager;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v4}, Landroid/app/ActivityManager;->-get0(Landroid/app/ActivityManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 623
    :cond_0
    return v2

    .line 610
    :cond_1
    iget-object v4, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v4}, Landroid/app/ActivityManager;->-get0(Landroid/app/ActivityManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$SemActivityControllerListener;

    .line 611
    .local v0, "i":Landroid/app/ActivityManager$SemActivityControllerListener;
    invoke-interface {v0, p1, p2, p3}, Landroid/app/ActivityManager$SemActivityControllerListener;->onAppNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    .line 612
    if-eqz v3, :cond_2

    .line 613
    if-ne v3, v5, :cond_3

    .line 614
    move v2, v3

    goto :goto_0

    .line 616
    :cond_3
    if-eq v2, v5, :cond_2

    .line 617
    move v2, v3

    goto :goto_0
.end method

.method public systemNotResponding(Ljava/lang/String;)I
    .locals 6
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 628
    const/4 v2, 0x0

    .line 629
    .local v2, "ret":I
    const/4 v3, 0x0

    .line 630
    .local v3, "tempRet":I
    iget-object v4, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v4}, Landroid/app/ActivityManager;->-get0(Landroid/app/ActivityManager;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v4}, Landroid/app/ActivityManager;->-get0(Landroid/app/ActivityManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 644
    :cond_0
    return v2

    .line 631
    :cond_1
    iget-object v4, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v4}, Landroid/app/ActivityManager;->-get0(Landroid/app/ActivityManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$SemActivityControllerListener;

    .line 632
    .local v0, "i":Landroid/app/ActivityManager$SemActivityControllerListener;
    invoke-interface {v0, p1}, Landroid/app/ActivityManager$SemActivityControllerListener;->onSystemNotResponding(Ljava/lang/String;)I

    move-result v3

    .line 633
    if-eqz v3, :cond_2

    .line 634
    if-ne v3, v5, :cond_3

    .line 635
    move v2, v3

    goto :goto_0

    .line 637
    :cond_3
    if-eq v2, v5, :cond_2

    .line 638
    move v2, v3

    goto :goto_0
.end method
