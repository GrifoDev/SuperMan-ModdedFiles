.class public Landroid/animation/AnimatorSet$Builder;
.super Ljava/lang/Object;
.source "AnimatorSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Builder"
.end annotation


# instance fields
.field private mCurrentNode:Landroid/animation/AnimatorSet$Node;

.field final synthetic this$0:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V
    .locals 1

    iput-object p1, p0, Landroid/animation/AnimatorSet$Builder;->this$0:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/animation/AnimatorSet;->-set0(Landroid/animation/AnimatorSet;Z)Z

    invoke-static {p1, p2}, Landroid/animation/AnimatorSet;->-wrap0(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Node;

    move-result-object v0

    iput-object v0, p0, Landroid/animation/AnimatorSet$Builder;->mCurrentNode:Landroid/animation/AnimatorSet$Node;

    return-void
.end method


# virtual methods
.method public after(J)Landroid/animation/AnimatorSet$Builder;
    .locals 3

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;
    .locals 2

    iget-object v1, p0, Landroid/animation/AnimatorSet$Builder;->this$0:Landroid/animation/AnimatorSet;

    invoke-static {v1, p1}, Landroid/animation/AnimatorSet;->-wrap0(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Node;

    move-result-object v0

    iget-object v1, p0, Landroid/animation/AnimatorSet$Builder;->mCurrentNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Node;->addParent(Landroid/animation/AnimatorSet$Node;)V

    return-object p0
.end method

.method public before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;
    .locals 2

    iget-object v1, p0, Landroid/animation/AnimatorSet$Builder;->this$0:Landroid/animation/AnimatorSet;

    invoke-static {v1, p1}, Landroid/animation/AnimatorSet;->-wrap0(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Node;

    move-result-object v0

    iget-object v1, p0, Landroid/animation/AnimatorSet$Builder;->mCurrentNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Node;->addChild(Landroid/animation/AnimatorSet$Node;)V

    return-object p0
.end method

.method public with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;
    .locals 2

    iget-object v1, p0, Landroid/animation/AnimatorSet$Builder;->this$0:Landroid/animation/AnimatorSet;

    invoke-static {v1, p1}, Landroid/animation/AnimatorSet;->-wrap0(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Node;

    move-result-object v0

    iget-object v1, p0, Landroid/animation/AnimatorSet$Builder;->mCurrentNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Node;->addSibling(Landroid/animation/AnimatorSet$Node;)V

    return-object p0
.end method
