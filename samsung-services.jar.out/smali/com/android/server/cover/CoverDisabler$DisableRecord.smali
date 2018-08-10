.class Lcom/android/server/cover/CoverDisabler$DisableRecord;
.super Ljava/lang/Object;
.source "CoverDisabler.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/CoverDisabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisableRecord"
.end annotation


# instance fields
.field disable:Z

.field pkg:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/cover/CoverDisabler;

.field token:Landroid/os/IBinder;


# direct methods
.method private constructor <init>(Lcom/android/server/cover/CoverDisabler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cover/CoverDisabler$DisableRecord;->this$0:Lcom/android/server/cover/CoverDisabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/cover/CoverDisabler;Lcom/android/server/cover/CoverDisabler$DisableRecord;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverDisabler$DisableRecord;-><init>(Lcom/android/server/cover/CoverDisabler;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/server/cover/CoverDisabler;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "binder died : pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/CoverDisabler$DisableRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/cover/CoverDisabler$DisableRecord;->this$0:Lcom/android/server/cover/CoverDisabler;

    invoke-static {v0}, Lcom/android/server/cover/CoverDisabler;->-get1(Lcom/android/server/cover/CoverDisabler;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/cover/CoverDisabler$DisableRecord;->this$0:Lcom/android/server/cover/CoverDisabler;

    iget-object v2, p0, Lcom/android/server/cover/CoverDisabler$DisableRecord;->token:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/cover/CoverDisabler$DisableRecord;->pkg:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v3}, Lcom/android/server/cover/CoverDisabler;->-wrap0(Lcom/android/server/cover/CoverDisabler;ZLandroid/os/IBinder;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v0, p0, Lcom/android/server/cover/CoverDisabler$DisableRecord;->token:Landroid/os/IBinder;

    invoke-interface {v0, p0, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
