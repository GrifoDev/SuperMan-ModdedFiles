.class final Lcom/android/server/job/controllers/AppIdleController$GlobalUpdateFunc;
.super Ljava/lang/Object;
.source "AppIdleController.java"

# interfaces
.implements Lcom/android/server/job/JobStore$JobStatusFunctor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/AppIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "GlobalUpdateFunc"
.end annotation


# instance fields
.field mChanged:Z

.field final synthetic this$0:Lcom/android/server/job/controllers/AppIdleController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/AppIdleController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/job/controllers/AppIdleController$GlobalUpdateFunc;->this$0:Lcom/android/server/job/controllers/AppIdleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/job/controllers/AppIdleController$GlobalUpdateFunc;->this$0:Lcom/android/server/job/controllers/AppIdleController;

    iget-boolean v4, v4, Lcom/android/server/job/controllers/AppIdleController;->mAppIdleParoleOn:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/job/controllers/AppIdleController$GlobalUpdateFunc;->this$0:Lcom/android/server/job/controllers/AppIdleController;

    invoke-static {v4}, Lcom/android/server/job/controllers/AppIdleController;->-get1(Lcom/android/server/job/controllers/AppIdleController;)Landroid/app/usage/UsageStatsManagerInternal;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v6

    invoke-virtual {v4, v1, v5, v6}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdle(Ljava/lang/String;II)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {p1, v2}, Lcom/android/server/job/controllers/JobStatus;->setAppNotIdleConstraintSatisfied(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v3, p0, Lcom/android/server/job/controllers/AppIdleController$GlobalUpdateFunc;->mChanged:Z

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method
