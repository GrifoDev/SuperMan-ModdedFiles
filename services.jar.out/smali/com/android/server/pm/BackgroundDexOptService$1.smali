.class Lcom/android/server/pm/BackgroundDexOptService$1;
.super Ljava/lang/Thread;
.source "BackgroundDexOptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/BackgroundDexOptService;->runPostBootUpdate(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/BackgroundDexOptService;

.field final synthetic val$jobParams:Landroid/app/job/JobParameters;

.field final synthetic val$lowBatteryThreshold:I

.field final synthetic val$pkgs:Landroid/util/ArraySet;

.field final synthetic val$pm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/BackgroundDexOptService;Ljava/lang/String;Landroid/util/ArraySet;ILcom/android/server/pm/PackageManagerService;Landroid/app/job/JobParameters;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    iput-object p3, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->val$pkgs:Landroid/util/ArraySet;

    iput p4, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->val$lowBatteryThreshold:I

    iput-object p5, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->val$pm:Lcom/android/server/pm/PackageManagerService;

    iput-object p6, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->val$jobParams:Landroid/app/job/JobParameters;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->val$pkgs:Landroid/util/ArraySet;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    iget-object v2, v2, Lcom/android/server/pm/BackgroundDexOptService;->mAbortPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    iget-object v2, v2, Lcom/android/server/pm/BackgroundDexOptService;->mExitPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    iget-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->val$jobParams:Landroid/app/job/JobParameters;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/pm/BackgroundDexOptService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    invoke-static {v2}, Lcom/android/server/pm/BackgroundDexOptService;->-wrap0(Lcom/android/server/pm/BackgroundDexOptService;)I

    move-result v2

    iget v3, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->val$lowBatteryThreshold:I

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->val$pm:Lcom/android/server/pm/PackageManagerService;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v4, v3, v4}, Lcom/android/server/pm/PackageManagerService;->performDexOpt(Ljava/lang/String;ZIZ)Z

    goto :goto_0
.end method
