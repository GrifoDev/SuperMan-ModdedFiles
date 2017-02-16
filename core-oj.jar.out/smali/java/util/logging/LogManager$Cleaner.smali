.class Ljava/util/logging/LogManager$Cleaner;
.super Ljava/lang/Thread;
.source "LogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/logging/LogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Cleaner"
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/logging/LogManager;


# direct methods
.method private constructor <init>(Ljava/util/logging/LogManager;)V
    .locals 1
    .param p1, "this$0"    # Ljava/util/logging/LogManager;

    .prologue
    .line 221
    iput-object p1, p0, Ljava/util/logging/LogManager$Cleaner;->this$0:Ljava/util/logging/LogManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 225
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/logging/LogManager$Cleaner;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 221
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/logging/LogManager;Ljava/util/logging/LogManager$Cleaner;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/logging/LogManager;

    .prologue
    invoke-direct {p0, p1}, Ljava/util/logging/LogManager$Cleaner;-><init>(Ljava/util/logging/LogManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 231
    invoke-static {}, Ljava/util/logging/LogManager;->-get2()Ljava/util/logging/LogManager;

    move-result-object v0

    .line 235
    .local v0, "mgr":Ljava/util/logging/LogManager;
    iget-object v2, p0, Ljava/util/logging/LogManager$Cleaner;->this$0:Ljava/util/logging/LogManager;

    monitor-enter v2

    .line 237
    :try_start_0
    iget-object v1, p0, Ljava/util/logging/LogManager$Cleaner;->this$0:Ljava/util/logging/LogManager;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Ljava/util/logging/LogManager;->-set0(Ljava/util/logging/LogManager;Z)Z

    .line 238
    iget-object v1, p0, Ljava/util/logging/LogManager$Cleaner;->this$0:Ljava/util/logging/LogManager;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Ljava/util/logging/LogManager;->-set1(Ljava/util/logging/LogManager;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 242
    iget-object v1, p0, Ljava/util/logging/LogManager$Cleaner;->this$0:Ljava/util/logging/LogManager;

    invoke-virtual {v1}, Ljava/util/logging/LogManager;->reset()V

    .line 228
    return-void

    .line 235
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
