.class Landroid/app/ActivityManager$ProcessObserver;
.super Landroid/app/IProcessObserver$Stub;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProcessObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityManager;


# direct methods
.method private constructor <init>(Landroid/app/ActivityManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ActivityManager;

    .prologue
    .line 478
    iput-object p1, p0, Landroid/app/ActivityManager$ProcessObserver;->this$0:Landroid/app/ActivityManager;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityManager;Landroid/app/ActivityManager$ProcessObserver;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ActivityManager;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityManager$ProcessObserver;-><init>(Landroid/app/ActivityManager;)V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .prologue
    .line 482
    iget-object v2, p0, Landroid/app/ActivityManager$ProcessObserver;->this$0:Landroid/app/ActivityManager;

    invoke-static {v2}, Landroid/app/ActivityManager;->-get1(Landroid/app/ActivityManager;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/ActivityManager$ProcessObserver;->this$0:Landroid/app/ActivityManager;

    invoke-static {v2}, Landroid/app/ActivityManager;->-get1(Landroid/app/ActivityManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 481
    :cond_0
    return-void

    .line 483
    :cond_1
    iget-object v2, p0, Landroid/app/ActivityManager$ProcessObserver;->this$0:Landroid/app/ActivityManager;

    invoke-static {v2}, Landroid/app/ActivityManager;->-get1(Landroid/app/ActivityManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$SemProcessListener;

    .line 484
    .local v0, "i":Landroid/app/ActivityManager$SemProcessListener;
    invoke-interface {v0, p1, p2, p3}, Landroid/app/ActivityManager$SemProcessListener;->onForegroundActivitiesChanged(IIZ)V

    goto :goto_0
.end method

.method public onProcessDied(II)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 490
    iget-object v2, p0, Landroid/app/ActivityManager$ProcessObserver;->this$0:Landroid/app/ActivityManager;

    invoke-static {v2}, Landroid/app/ActivityManager;->-get1(Landroid/app/ActivityManager;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/ActivityManager$ProcessObserver;->this$0:Landroid/app/ActivityManager;

    invoke-static {v2}, Landroid/app/ActivityManager;->-get1(Landroid/app/ActivityManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 489
    :cond_0
    return-void

    .line 491
    :cond_1
    iget-object v2, p0, Landroid/app/ActivityManager$ProcessObserver;->this$0:Landroid/app/ActivityManager;

    invoke-static {v2}, Landroid/app/ActivityManager;->-get1(Landroid/app/ActivityManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$SemProcessListener;

    .line 492
    .local v0, "i":Landroid/app/ActivityManager$SemProcessListener;
    invoke-interface {v0, p1, p2}, Landroid/app/ActivityManager$SemProcessListener;->onProcessDied(II)V

    goto :goto_0
.end method

.method public onProcessStateChanged(III)V
    .locals 3
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 498
    iget-object v2, p0, Landroid/app/ActivityManager$ProcessObserver;->this$0:Landroid/app/ActivityManager;

    invoke-static {v2}, Landroid/app/ActivityManager;->-get1(Landroid/app/ActivityManager;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/ActivityManager$ProcessObserver;->this$0:Landroid/app/ActivityManager;

    invoke-static {v2}, Landroid/app/ActivityManager;->-get1(Landroid/app/ActivityManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 497
    :cond_0
    return-void

    .line 499
    :cond_1
    iget-object v2, p0, Landroid/app/ActivityManager$ProcessObserver;->this$0:Landroid/app/ActivityManager;

    invoke-static {v2}, Landroid/app/ActivityManager;->-get1(Landroid/app/ActivityManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$SemProcessListener;

    .line 500
    .local v0, "i":Landroid/app/ActivityManager$SemProcessListener;
    invoke-interface {v0, p1, p2, p3}, Landroid/app/ActivityManager$SemProcessListener;->onProcessStateChanged(III)V

    goto :goto_0
.end method
