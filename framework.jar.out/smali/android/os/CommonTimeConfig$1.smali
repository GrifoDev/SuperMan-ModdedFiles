.class Landroid/os/CommonTimeConfig$1;
.super Ljava/lang/Object;
.source "CommonTimeConfig.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CommonTimeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/CommonTimeConfig;


# direct methods
.method constructor <init>(Landroid/os/CommonTimeConfig;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/CommonTimeConfig;

    .prologue
    .line 421
    iput-object p1, p0, Landroid/os/CommonTimeConfig$1;->this$0:Landroid/os/CommonTimeConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Landroid/os/CommonTimeConfig$1;->this$0:Landroid/os/CommonTimeConfig;

    invoke-static {v0}, Landroid/os/CommonTimeConfig;->-get0(Landroid/os/CommonTimeConfig;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 424
    :try_start_0
    iget-object v0, p0, Landroid/os/CommonTimeConfig$1;->this$0:Landroid/os/CommonTimeConfig;

    invoke-static {v0}, Landroid/os/CommonTimeConfig;->-get1(Landroid/os/CommonTimeConfig;)Landroid/os/CommonTimeConfig$OnServerDiedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Landroid/os/CommonTimeConfig$1;->this$0:Landroid/os/CommonTimeConfig;

    invoke-static {v0}, Landroid/os/CommonTimeConfig;->-get1(Landroid/os/CommonTimeConfig;)Landroid/os/CommonTimeConfig$OnServerDiedListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/CommonTimeConfig$OnServerDiedListener;->onServerDied()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 422
    return-void

    .line 423
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
