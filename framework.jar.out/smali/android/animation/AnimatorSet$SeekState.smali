.class Landroid/animation/AnimatorSet$SeekState;
.super Ljava/lang/Object;
.source "AnimatorSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeekState"
.end annotation


# instance fields
.field private mPlayTime:J

.field private mSeekingInReverse:Z

.field final synthetic this$0:Landroid/animation/AnimatorSet;


# direct methods
.method private constructor <init>(Landroid/animation/AnimatorSet;)V
    .locals 2

    iput-object p1, p0, Landroid/animation/AnimatorSet$SeekState;->this$0:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/animation/AnimatorSet$SeekState;->mPlayTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/AnimatorSet$SeekState;->mSeekingInReverse:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet$SeekState;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/animation/AnimatorSet$SeekState;-><init>(Landroid/animation/AnimatorSet;)V

    return-void
.end method


# virtual methods
.method getPlayTime()J
    .locals 2

    iget-wide v0, p0, Landroid/animation/AnimatorSet$SeekState;->mPlayTime:J

    return-wide v0
.end method

.method getPlayTimeNormalized()J
    .locals 4

    iget-object v0, p0, Landroid/animation/AnimatorSet$SeekState;->this$0:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Landroid/animation/AnimatorSet;->-get1(Landroid/animation/AnimatorSet;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/animation/AnimatorSet$SeekState;->this$0:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    iget-object v2, p0, Landroid/animation/AnimatorSet$SeekState;->this$0:Landroid/animation/AnimatorSet;

    invoke-static {v2}, Landroid/animation/AnimatorSet;->-get2(Landroid/animation/AnimatorSet;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Landroid/animation/AnimatorSet$SeekState;->mPlayTime:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    iget-wide v0, p0, Landroid/animation/AnimatorSet$SeekState;->mPlayTime:J

    return-wide v0
.end method

.method isActive()Z
    .locals 4

    iget-wide v0, p0, Landroid/animation/AnimatorSet$SeekState;->mPlayTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method reset()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/animation/AnimatorSet$SeekState;->mPlayTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/AnimatorSet$SeekState;->mSeekingInReverse:Z

    return-void
.end method

.method setPlayTime(JZ)V
    .locals 5

    iget-object v0, p0, Landroid/animation/AnimatorSet$SeekState;->this$0:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/animation/AnimatorSet$SeekState;->this$0:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    iget-object v2, p0, Landroid/animation/AnimatorSet$SeekState;->this$0:Landroid/animation/AnimatorSet;

    invoke-static {v2}, Landroid/animation/AnimatorSet;->-get2(Landroid/animation/AnimatorSet;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/animation/AnimatorSet$SeekState;->mPlayTime:J

    :cond_0
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Landroid/animation/AnimatorSet$SeekState;->mPlayTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/animation/AnimatorSet$SeekState;->mPlayTime:J

    iput-boolean p3, p0, Landroid/animation/AnimatorSet$SeekState;->mSeekingInReverse:Z

    return-void
.end method

.method updateSeekDirection(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/animation/AnimatorSet$SeekState;->this$0:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Error: Cannot reverse infinite animator set"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Landroid/animation/AnimatorSet$SeekState;->mPlayTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-boolean v0, p0, Landroid/animation/AnimatorSet$SeekState;->mSeekingInReverse:Z

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroid/animation/AnimatorSet$SeekState;->this$0:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    iget-object v2, p0, Landroid/animation/AnimatorSet$SeekState;->this$0:Landroid/animation/AnimatorSet;

    invoke-static {v2}, Landroid/animation/AnimatorSet;->-get2(Landroid/animation/AnimatorSet;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Landroid/animation/AnimatorSet$SeekState;->mPlayTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/animation/AnimatorSet$SeekState;->mPlayTime:J

    iput-boolean p1, p0, Landroid/animation/AnimatorSet$SeekState;->mSeekingInReverse:Z

    :cond_1
    return-void
.end method
