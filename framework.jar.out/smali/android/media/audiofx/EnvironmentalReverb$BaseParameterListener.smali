.class Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;
.super Ljava/lang/Object;
.source "EnvironmentalReverb.java"

# interfaces
.implements Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/EnvironmentalReverb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseParameterListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/audiofx/EnvironmentalReverb;


# direct methods
.method private constructor <init>(Landroid/media/audiofx/EnvironmentalReverb;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/audiofx/EnvironmentalReverb;

    .prologue
    .line 452
    iput-object p1, p0, Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;->this$0:Landroid/media/audiofx/EnvironmentalReverb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/audiofx/EnvironmentalReverb;Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/audiofx/EnvironmentalReverb;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;-><init>(Landroid/media/audiofx/EnvironmentalReverb;)V

    return-void
.end method


# virtual methods
.method public onParameterChange(Landroid/media/audiofx/AudioEffect;I[B[B)V
    .locals 8
    .param p1, "effect"    # Landroid/media/audiofx/AudioEffect;
    .param p2, "status"    # I
    .param p3, "param"    # [B
    .param p4, "value"    # [B

    .prologue
    const/4 v7, 0x4

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 456
    const/4 v0, 0x0

    .line 458
    .local v0, "l":Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;
    iget-object v3, p0, Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;->this$0:Landroid/media/audiofx/EnvironmentalReverb;

    invoke-static {v3}, Landroid/media/audiofx/EnvironmentalReverb;->-get1(Landroid/media/audiofx/EnvironmentalReverb;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 459
    :try_start_0
    iget-object v3, p0, Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;->this$0:Landroid/media/audiofx/EnvironmentalReverb;

    invoke-static {v3}, Landroid/media/audiofx/EnvironmentalReverb;->-get0(Landroid/media/audiofx/EnvironmentalReverb;)Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 460
    iget-object v3, p0, Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;->this$0:Landroid/media/audiofx/EnvironmentalReverb;

    invoke-static {v3}, Landroid/media/audiofx/EnvironmentalReverb;->-get0(Landroid/media/audiofx/EnvironmentalReverb;)Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .end local v0    # "l":Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;
    :cond_0
    monitor-exit v4

    .line 463
    if-eqz v0, :cond_3

    .line 464
    const/4 v1, -0x1

    .line 465
    .local v1, "p":I
    const/4 v2, -0x1

    .line 467
    .local v2, "v":I
    array-length v3, p3

    if-ne v3, v7, :cond_1

    .line 468
    invoke-static {p3, v5}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToInt([BI)I

    move-result v1

    .line 470
    :cond_1
    array-length v3, p4

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 471
    invoke-static {p4, v5}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([BI)S

    move-result v2

    .line 475
    :cond_2
    :goto_0
    if-eq v1, v6, :cond_3

    if-eq v2, v6, :cond_3

    .line 476
    iget-object v3, p0, Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;->this$0:Landroid/media/audiofx/EnvironmentalReverb;

    invoke-interface {v0, v3, p2, v1, v2}, Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/EnvironmentalReverb;III)V

    .line 455
    .end local v1    # "p":I
    .end local v2    # "v":I
    :cond_3
    return-void

    .line 458
    .restart local v0    # "l":Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 472
    .end local v0    # "l":Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;
    .restart local v1    # "p":I
    .restart local v2    # "v":I
    :cond_4
    array-length v3, p4

    if-ne v3, v7, :cond_2

    .line 473
    invoke-static {p4, v5}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToInt([BI)I

    move-result v2

    goto :goto_0
.end method
