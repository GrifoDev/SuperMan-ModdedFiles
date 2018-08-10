.class Lcom/android/internal/util/ConcurrentUtils$1$1;
.super Ljava/lang/Thread;
.source "ConcurrentUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/util/ConcurrentUtils$1;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/util/ConcurrentUtils$1;

.field final synthetic val$linuxThreadPriority:I

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/internal/util/ConcurrentUtils$1;Ljava/lang/String;ILjava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/util/ConcurrentUtils$1$1;->this$1:Lcom/android/internal/util/ConcurrentUtils$1;

    iput p3, p0, Lcom/android/internal/util/ConcurrentUtils$1$1;->val$linuxThreadPriority:I

    iput-object p4, p0, Lcom/android/internal/util/ConcurrentUtils$1$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget v0, p0, Lcom/android/internal/util/ConcurrentUtils$1$1;->val$linuxThreadPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/android/internal/util/ConcurrentUtils$1$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
