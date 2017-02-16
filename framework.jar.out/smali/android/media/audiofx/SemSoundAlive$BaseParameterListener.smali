.class Landroid/media/audiofx/SemSoundAlive$BaseParameterListener;
.super Ljava/lang/Object;
.source "SemSoundAlive.java"

# interfaces
.implements Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/SemSoundAlive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseParameterListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/audiofx/SemSoundAlive;


# direct methods
.method private constructor <init>(Landroid/media/audiofx/SemSoundAlive;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/audiofx/SemSoundAlive;

    .prologue
    .line 579
    iput-object p1, p0, Landroid/media/audiofx/SemSoundAlive$BaseParameterListener;->this$0:Landroid/media/audiofx/SemSoundAlive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/audiofx/SemSoundAlive;Landroid/media/audiofx/SemSoundAlive$BaseParameterListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/audiofx/SemSoundAlive;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/audiofx/SemSoundAlive$BaseParameterListener;-><init>(Landroid/media/audiofx/SemSoundAlive;)V

    return-void
.end method


# virtual methods
.method public onParameterChange(Landroid/media/audiofx/AudioEffect;I[B[B)V
    .locals 9
    .param p1, "effect"    # Landroid/media/audiofx/AudioEffect;
    .param p2, "status"    # I
    .param p3, "param"    # [B
    .param p4, "value"    # [B

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 583
    const/4 v0, 0x0

    .line 585
    .local v0, "l":Landroid/media/audiofx/SemSoundAlive$OnParameterChangeListener;
    iget-object v1, p0, Landroid/media/audiofx/SemSoundAlive$BaseParameterListener;->this$0:Landroid/media/audiofx/SemSoundAlive;

    invoke-static {v1}, Landroid/media/audiofx/SemSoundAlive;->-get3(Landroid/media/audiofx/SemSoundAlive;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 586
    :try_start_0
    iget-object v1, p0, Landroid/media/audiofx/SemSoundAlive$BaseParameterListener;->this$0:Landroid/media/audiofx/SemSoundAlive;

    invoke-static {v1}, Landroid/media/audiofx/SemSoundAlive;->-get2(Landroid/media/audiofx/SemSoundAlive;)Landroid/media/audiofx/SemSoundAlive$OnParameterChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 587
    iget-object v1, p0, Landroid/media/audiofx/SemSoundAlive$BaseParameterListener;->this$0:Landroid/media/audiofx/SemSoundAlive;

    invoke-static {v1}, Landroid/media/audiofx/SemSoundAlive;->-get2(Landroid/media/audiofx/SemSoundAlive;)Landroid/media/audiofx/SemSoundAlive$OnParameterChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .end local v0    # "l":Landroid/media/audiofx/SemSoundAlive$OnParameterChangeListener;
    :cond_0
    monitor-exit v2

    .line 590
    if-eqz v0, :cond_3

    .line 591
    const/4 v3, -0x1

    .line 592
    .local v3, "p1":I
    const/4 v4, -0x1

    .line 593
    .local v4, "p2":I
    const/4 v5, -0x1

    .line 595
    .local v5, "v":I
    array-length v1, p3

    if-lt v1, v7, :cond_1

    .line 596
    invoke-static {p3, v6}, Landroid/media/audiofx/SemSoundAlive;->byteArrayToInt([BI)I

    move-result v3

    .line 597
    array-length v1, p3

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    .line 598
    invoke-static {p3, v7}, Landroid/media/audiofx/SemSoundAlive;->byteArrayToInt([BI)I

    move-result v4

    .line 601
    :cond_1
    array-length v1, p4

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 602
    invoke-static {p4, v6}, Landroid/media/audiofx/SemSoundAlive;->byteArrayToShort([BI)S

    move-result v5

    .line 607
    :cond_2
    :goto_0
    if-eq v3, v8, :cond_3

    if-eq v5, v8, :cond_3

    .line 608
    iget-object v1, p0, Landroid/media/audiofx/SemSoundAlive$BaseParameterListener;->this$0:Landroid/media/audiofx/SemSoundAlive;

    move v2, p2

    invoke-interface/range {v0 .. v5}, Landroid/media/audiofx/SemSoundAlive$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/SemSoundAlive;IIII)V

    .line 582
    .end local v3    # "p1":I
    .end local v4    # "p2":I
    .end local v5    # "v":I
    :cond_3
    return-void

    .line 585
    .restart local v0    # "l":Landroid/media/audiofx/SemSoundAlive$OnParameterChangeListener;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 603
    .end local v0    # "l":Landroid/media/audiofx/SemSoundAlive$OnParameterChangeListener;
    .restart local v3    # "p1":I
    .restart local v4    # "p2":I
    .restart local v5    # "v":I
    :cond_4
    array-length v1, p4

    if-ne v1, v7, :cond_2

    .line 604
    invoke-static {p4, v6}, Landroid/media/audiofx/SemSoundAlive;->byteArrayToInt([BI)I

    move-result v5

    goto :goto_0
.end method
