.class Landroid/media/audiofx/SemSoundAlive$BaseErrorListener;
.super Ljava/lang/Object;
.source "SemSoundAlive.java"

# interfaces
.implements Landroid/media/audiofx/AudioEffect$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/SemSoundAlive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseErrorListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/audiofx/SemSoundAlive;


# direct methods
.method private constructor <init>(Landroid/media/audiofx/SemSoundAlive;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/audiofx/SemSoundAlive;

    .prologue
    .line 644
    iput-object p1, p0, Landroid/media/audiofx/SemSoundAlive$BaseErrorListener;->this$0:Landroid/media/audiofx/SemSoundAlive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/audiofx/SemSoundAlive;Landroid/media/audiofx/SemSoundAlive$BaseErrorListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/audiofx/SemSoundAlive;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/audiofx/SemSoundAlive$BaseErrorListener;-><init>(Landroid/media/audiofx/SemSoundAlive;)V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 3

    .prologue
    .line 648
    const/4 v0, 0x0

    .line 650
    .local v0, "l":Landroid/media/audiofx/SemSoundAlive$OnErrorListener;
    iget-object v1, p0, Landroid/media/audiofx/SemSoundAlive$BaseErrorListener;->this$0:Landroid/media/audiofx/SemSoundAlive;

    invoke-static {v1}, Landroid/media/audiofx/SemSoundAlive;->-get1(Landroid/media/audiofx/SemSoundAlive;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 651
    :try_start_0
    iget-object v1, p0, Landroid/media/audiofx/SemSoundAlive$BaseErrorListener;->this$0:Landroid/media/audiofx/SemSoundAlive;

    invoke-static {v1}, Landroid/media/audiofx/SemSoundAlive;->-get0(Landroid/media/audiofx/SemSoundAlive;)Landroid/media/audiofx/SemSoundAlive$OnErrorListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 652
    iget-object v1, p0, Landroid/media/audiofx/SemSoundAlive$BaseErrorListener;->this$0:Landroid/media/audiofx/SemSoundAlive;

    invoke-static {v1}, Landroid/media/audiofx/SemSoundAlive;->-get0(Landroid/media/audiofx/SemSoundAlive;)Landroid/media/audiofx/SemSoundAlive$OnErrorListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .end local v0    # "l":Landroid/media/audiofx/SemSoundAlive$OnErrorListener;
    :cond_0
    monitor-exit v2

    .line 655
    if-eqz v0, :cond_1

    .line 656
    invoke-interface {v0}, Landroid/media/audiofx/SemSoundAlive$OnErrorListener;->onError()V

    .line 647
    :cond_1
    return-void

    .line 650
    .restart local v0    # "l":Landroid/media/audiofx/SemSoundAlive$OnErrorListener;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
