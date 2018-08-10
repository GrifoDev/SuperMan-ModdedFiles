.class Lcom/android/server/job/controllers/DeviceIdleJobsController$3;
.super Ljava/lang/Object;
.source "DeviceIdleJobsController.java"

# interfaces
.implements Lcom/android/server/job/JobStore$JobStatusFunctor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/job/controllers/DeviceIdleJobsController;->dumpControllerStateLocked(Ljava/io/PrintWriter;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

.field final synthetic val$filterUid:I

.field final synthetic val$pw:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/DeviceIdleJobsController;ILjava/io/PrintWriter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$3;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    iput p2, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$3;->val$filterUid:I

    iput-object p3, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$3;->val$pw:Ljava/io/PrintWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3

    iget v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$3;->val$filterUid:I

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->shouldDump(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$3;->val$pw:Ljava/io/PrintWriter;

    const-string/jumbo v1, "  #"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$3;->val$pw:Ljava/io/PrintWriter;

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$3;->val$pw:Ljava/io/PrintWriter;

    const-string/jumbo v1, " from "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$3;->val$pw:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$3;->val$pw:Ljava/io/PrintWriter;

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$3;->val$pw:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$3;->val$pw:Ljava/io/PrintWriter;

    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    const/high16 v2, 0x2000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    const-string/jumbo v0, " RUNNABLE"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/android/server/job/controllers/JobStatus;->dozeWhitelisted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$3;->val$pw:Ljava/io/PrintWriter;

    const-string/jumbo v1, " WHITELISTED"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$3;->val$pw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    return-void

    :cond_2
    const-string/jumbo v0, " WAITING"

    goto :goto_0
.end method
