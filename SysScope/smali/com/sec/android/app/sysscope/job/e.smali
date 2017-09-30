.class public Lcom/sec/android/app/sysscope/job/e;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final e:Ljava/util/ArrayList;

.field final f:Ljava/util/ArrayList;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field i:I

.field public j:J

.field public k:J

.field public l:I

.field public m:I

.field public n:J

.field public o:J

.field public p:I

.field public q:I

.field public r:Z

.field public s:Z

.field public t:Z


# direct methods
.method constructor <init>(IIZ)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sysscope/job/e;->a:I

    if-gez p2, :cond_1

    new-instance v0, Ljava/io/File;

    const-string v1, "/proc"

    iget v2, p0, Lcom/sec/android/app/sysscope/job/e;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "stat"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sysscope/job/e;->b:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    const-string v2, "cmdline"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sysscope/job/e;->c:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    const-string v2, "task"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sysscope/job/e;->d:Ljava/lang/String;

    if-eqz p3, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sysscope/job/e;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sysscope/job/e;->f:Ljava/util/ArrayList;

    :goto_0
    return-void

    :cond_0
    iput-object v4, p0, Lcom/sec/android/app/sysscope/job/e;->e:Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/sec/android/app/sysscope/job/e;->f:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    const-string v3, "task"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/android/app/sysscope/job/e;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v2, "stat"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sysscope/job/e;->b:Ljava/lang/String;

    iput-object v4, p0, Lcom/sec/android/app/sysscope/job/e;->c:Ljava/lang/String;

    iput-object v4, p0, Lcom/sec/android/app/sysscope/job/e;->d:Ljava/lang/String;

    iput-object v4, p0, Lcom/sec/android/app/sysscope/job/e;->e:Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/sec/android/app/sysscope/job/e;->f:Ljava/util/ArrayList;

    goto :goto_0
.end method
