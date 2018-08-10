.class Landroid/animation/AnimatorSet$AnimationEvent;
.super Ljava/lang/Object;
.source "AnimatorSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationEvent"
.end annotation


# static fields
.field static final ANIMATION_DELAY_ENDED:I = 0x1

.field static final ANIMATION_END:I = 0x2

.field static final ANIMATION_START:I


# instance fields
.field final mEvent:I

.field final mNode:Landroid/animation/AnimatorSet$Node;


# direct methods
.method constructor <init>(Landroid/animation/AnimatorSet$Node;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iput p2, p0, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    return-void
.end method


# virtual methods
.method getTime()J
    .locals 4

    const-wide/16 v0, -0x1

    iget v2, p0, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-nez v2, :cond_0

    iget-object v0, p0, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-wide v0, v0, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    return-wide v0

    :cond_0
    iget v2, p0, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-wide v2, v2, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_1

    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-wide v0, v0, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    iget-object v2, p0, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v2, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-wide v0, v0, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v1, p0, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-nez v1, :cond_0

    const-string/jumbo v0, "start"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v2, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    iget v1, p0, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string/jumbo v0, "delay ended"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "end"

    goto :goto_0
.end method
