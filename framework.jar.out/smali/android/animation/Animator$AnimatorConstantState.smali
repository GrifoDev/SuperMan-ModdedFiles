.class Landroid/animation/Animator$AnimatorConstantState;
.super Landroid/content/res/ConstantState;
.source "Animator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimatorConstantState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/res/ConstantState",
        "<",
        "Landroid/animation/Animator;",
        ">;"
    }
.end annotation


# instance fields
.field final mAnimator:Landroid/animation/Animator;

.field mChangingConf:I


# direct methods
.method public constructor <init>(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 575
    invoke-direct {p0}, Landroid/content/res/ConstantState;-><init>()V

    .line 576
    iput-object p1, p0, Landroid/animation/Animator$AnimatorConstantState;->mAnimator:Landroid/animation/Animator;

    .line 578
    iget-object v0, p0, Landroid/animation/Animator$AnimatorConstantState;->mAnimator:Landroid/animation/Animator;

    invoke-static {v0, p0}, Landroid/animation/Animator;->-set0(Landroid/animation/Animator;Landroid/animation/Animator$AnimatorConstantState;)Landroid/animation/Animator$AnimatorConstantState;

    .line 579
    iget-object v0, p0, Landroid/animation/Animator$AnimatorConstantState;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->getChangingConfigurations()I

    move-result v0

    iput v0, p0, Landroid/animation/Animator$AnimatorConstantState;->mChangingConf:I

    .line 575
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 584
    iget v0, p0, Landroid/animation/Animator$AnimatorConstantState;->mChangingConf:I

    return v0
.end method

.method public newInstance()Landroid/animation/Animator;
    .locals 2

    .prologue
    .line 589
    iget-object v1, p0, Landroid/animation/Animator$AnimatorConstantState;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    .line 590
    .local v0, "clone":Landroid/animation/Animator;
    invoke-static {v0, p0}, Landroid/animation/Animator;->-set0(Landroid/animation/Animator;Landroid/animation/Animator$AnimatorConstantState;)Landroid/animation/Animator$AnimatorConstantState;

    .line 591
    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 588
    invoke-virtual {p0}, Landroid/animation/Animator$AnimatorConstantState;->newInstance()Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
