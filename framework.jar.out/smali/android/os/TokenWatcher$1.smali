.class Landroid/os/TokenWatcher$1;
.super Ljava/lang/Object;
.source "TokenWatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/TokenWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/TokenWatcher;


# direct methods
.method constructor <init>(Landroid/os/TokenWatcher;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/TokenWatcher;

    .prologue
    .line 147
    iput-object p1, p0, Landroid/os/TokenWatcher$1;->this$0:Landroid/os/TokenWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 151
    iget-object v1, p0, Landroid/os/TokenWatcher$1;->this$0:Landroid/os/TokenWatcher;

    invoke-static {v1}, Landroid/os/TokenWatcher;->-get2(Landroid/os/TokenWatcher;)Ljava/util/WeakHashMap;

    move-result-object v2

    monitor-enter v2

    .line 152
    :try_start_0
    iget-object v1, p0, Landroid/os/TokenWatcher$1;->this$0:Landroid/os/TokenWatcher;

    invoke-static {v1}, Landroid/os/TokenWatcher;->-get0(Landroid/os/TokenWatcher;)I

    move-result v0

    .line 153
    .local v0, "value":I
    iget-object v1, p0, Landroid/os/TokenWatcher$1;->this$0:Landroid/os/TokenWatcher;

    const/4 v3, -0x1

    invoke-static {v1, v3}, Landroid/os/TokenWatcher;->-set0(Landroid/os/TokenWatcher;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 155
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 156
    iget-object v1, p0, Landroid/os/TokenWatcher$1;->this$0:Landroid/os/TokenWatcher;

    invoke-virtual {v1}, Landroid/os/TokenWatcher;->acquired()V

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 151
    .end local v0    # "value":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 158
    .restart local v0    # "value":I
    :cond_1
    if-nez v0, :cond_0

    .line 159
    iget-object v1, p0, Landroid/os/TokenWatcher$1;->this$0:Landroid/os/TokenWatcher;

    invoke-virtual {v1}, Landroid/os/TokenWatcher;->released()V

    goto :goto_0
.end method
