.class Landroid/animation/AnimatorSet$3;
.super Ljava/lang/Object;
.source "AnimatorSet.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/animation/AnimatorSet;->sortAnimationEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/animation/AnimatorSet$AnimationEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Landroid/animation/AnimatorSet;)V
    .locals 0

    iput-object p1, p0, Landroid/animation/AnimatorSet$3;->this$0:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/animation/AnimatorSet$AnimationEvent;Landroid/animation/AnimatorSet$AnimationEvent;)I
    .locals 12

    const-wide/16 v10, 0x0

    const-wide/16 v8, -0x1

    const/4 v7, -0x1

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet$AnimationEvent;->getTime()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/animation/AnimatorSet$AnimationEvent;->getTime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget v4, p2, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    iget v5, p1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    add-int/2addr v4, v5

    if-ne v4, v6, :cond_0

    iget v4, p1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    iget v5, p2, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    sub-int/2addr v4, v5

    return v4

    :cond_0
    iget v4, p2, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    iget v5, p1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    sub-int/2addr v4, v5

    return v4

    :cond_1
    cmp-long v4, v2, v8

    if-nez v4, :cond_2

    return v7

    :cond_2
    cmp-long v4, v0, v8

    if-nez v4, :cond_3

    return v6

    :cond_3
    sub-long v4, v0, v2

    cmp-long v4, v4, v10

    if-lez v4, :cond_4

    return v6

    :cond_4
    sub-long v4, v0, v2

    cmp-long v4, v4, v10

    if-gez v4, :cond_5

    return v7

    :cond_5
    const/4 v4, 0x0

    return v4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/animation/AnimatorSet$AnimationEvent;

    check-cast p2, Landroid/animation/AnimatorSet$AnimationEvent;

    invoke-virtual {p0, p1, p2}, Landroid/animation/AnimatorSet$3;->compare(Landroid/animation/AnimatorSet$AnimationEvent;Landroid/animation/AnimatorSet$AnimationEvent;)I

    move-result v0

    return v0
.end method
