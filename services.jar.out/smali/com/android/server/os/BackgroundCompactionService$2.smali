.class Lcom/android/server/os/BackgroundCompactionService$2;
.super Ljava/lang/Thread;
.source "BackgroundCompactionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/os/BackgroundCompactionService;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/os/BackgroundCompactionService;

.field final synthetic val$jobParams:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lcom/android/server/os/BackgroundCompactionService;Ljava/lang/String;Landroid/app/job/JobParameters;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/os/BackgroundCompactionService$2;->this$0:Lcom/android/server/os/BackgroundCompactionService;

    iput-object p3, p0, Lcom/android/server/os/BackgroundCompactionService$2;->val$jobParams:Landroid/app/job/JobParameters;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string/jumbo v0, "BackgroundCompactionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Execute BGCompaction (type1). ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/os/BackgroundCompactionService;->bgc_counts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " times)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "sys.sysctl.compact_memory"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/os/BackgroundCompactionService$2;->this$0:Lcom/android/server/os/BackgroundCompactionService;

    iget-object v1, p0, Lcom/android/server/os/BackgroundCompactionService$2;->val$jobParams:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/os/BackgroundCompactionService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    sget v0, Lcom/android/server/os/BackgroundCompactionService;->bgc_counts:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/os/BackgroundCompactionService;->bgc_counts:I

    const-string/jumbo v0, "BackgroundCompactionService"

    const-string/jumbo v1, "compact_memory command done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
