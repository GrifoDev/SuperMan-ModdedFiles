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
    .locals 5

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/job/controllers/AppIdleController$GlobalUpdateFunc;->this$0:Lcom/android/server/job/controllers/AppIdleController;

    iget-boolean v2, v2, Lcom/android/server/job/controllers/AppIdleController;->mAppIdleParoleOn:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/job/controllers/AppIdleController$GlobalUpdateFunc;->this$0:Lcom/android/server/job/controllers/AppIdleController;

    invoke-static {v2}, Lcom/android/server/job/controllers/AppIdleController;->-get1(Lcom/android/server/job/controllers/AppIdleController;)Landroid/app/usage/UsageStatsManagerInternal;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v4

    invoke-virtual {v2, v1, v3, v4}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdle(Ljava/lang/String;II)Z

    move-result v0

    :goto_0
    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Lcom/android/server/job/controllers/JobStatus;->setAppNotIdleConstraintSatisfied(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/job/controllers/AppIdleController$GlobalUpdateFunc;->mChanged:Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
