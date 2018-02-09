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

    iput-object p1, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-direct {p0}, Landroid/app/IActivityController$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityManager;Landroid/app/ActivityManager$ActivityController;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityManager$ActivityController;-><init>(Landroid/app/ActivityManager;)V

    return-void
.end method


# virtual methods
.method public activityResuming(Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v3}, Landroid/app/ActivityManager;->-get0(Landroid/app/ActivityManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v3}, Landroid/app/ActivityManager;->-get0(Landroid/app/ActivityManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$SemActivityControllerListener;

    invoke-interface {v0, p1}, Landroid/app/ActivityManager$SemActivityControllerListener;->onActivityResuming(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    return v2
.end method

.method public activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v3}, Landroid/app/ActivityManager;->-get0(Landroid/app/ActivityManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v3}, Landroid/app/ActivityManager;->-get0(Landroid/app/ActivityManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$SemActivityControllerListener;

    invoke-interface {v0, p1, p2}, Landroid/app/ActivityManager$SemActivityControllerListener;->onActivityStarting(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    return v2
.end method

.method public appCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
    .locals 11

    const/4 v9, 0x1

    iget-object v2, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v2}, Landroid/app/ActivityManager;->-get0(Landroid/app/ActivityManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v2}, Landroid/app/ActivityManager;->-get0(Landroid/app/ActivityManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$SemActivityControllerListener;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Landroid/app/ActivityManager$SemActivityControllerListener;->onAppCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v9, 0x0

    goto :goto_0

    :cond_1
    return v9
.end method

.method public appEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v4}, Landroid/app/ActivityManager;->-get0(Landroid/app/ActivityManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v4}, Landroid/app/ActivityManager;->-get0(Landroid/app/ActivityManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$SemActivityControllerListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/ActivityManager$SemActivityControllerListener;->onAppEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    if-ne v3, v5, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    if-eq v2, v5, :cond_0

    move v2, v3

    goto :goto_0

    :cond_2
    return v2
.end method

.method public appNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v4}, Landroid/app/ActivityManager;->-get0(Landroid/app/ActivityManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v4}, Landroid/app/ActivityManager;->-get0(Landroid/app/ActivityManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$SemActivityControllerListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/ActivityManager$SemActivityControllerListener;->onAppNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    if-ne v3, v5, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    if-eq v2, v5, :cond_0

    move v2, v3

    goto :goto_0

    :cond_2
    return v2
.end method

.method public systemNotResponding(Ljava/lang/String;)I
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v4}, Landroid/app/ActivityManager;->-get0(Landroid/app/ActivityManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v4}, Landroid/app/ActivityManager;->-get0(Landroid/app/ActivityManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$SemActivityControllerListener;

    invoke-interface {v0, p1}, Landroid/app/ActivityManager$SemActivityControllerListener;->onSystemNotResponding(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    if-ne v3, v5, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    if-eq v2, v5, :cond_0

    move v2, v3

    goto :goto_0

    :cond_2
    return v2
.end method
