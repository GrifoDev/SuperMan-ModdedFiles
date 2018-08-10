.class public Lcom/sec/android/cover/neoncover/animation/NeonAnimationFullOn;
.super Lcom/sec/android/cover/neoncover/animation/NeonAnimation;
.source "NeonAnimationFullOn.java"


# instance fields
.field private mAnimationView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/cover/neoncover/NeonControllerCallback;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/sec/android/cover/neoncover/animation/NeonAnimation;-><init>(Landroid/content/Context;Lcom/sec/android/cover/neoncover/NeonControllerCallback;)V

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationFullOn;->mContext:Landroid/content/Context;

    sget v1, Lcom/sec/android/sviewcover/R$layout;->neon_full_on_animation_view:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationFullOn;->mAnimationView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/cover/neoncover/animation/NeonAnimation;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationFullOn;->mAnimationView:Landroid/view/View;

    return-void
.end method

.method public getAnimationView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationFullOn;->mAnimationView:Landroid/view/View;

    return-object v0
.end method

.method public startAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationFullOn;->mNeonController:Lcom/sec/android/cover/neoncover/NeonControllerCallback;

    sget-object v1, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;->FULL_ON:Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

    invoke-interface {v0, v1}, Lcom/sec/android/cover/neoncover/NeonControllerCallback;->onAnimationEnd(Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;)V

    return-void
.end method

.method public stopAnimation()V
    .locals 0

    return-void
.end method
