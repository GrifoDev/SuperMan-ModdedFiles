.class Landroid/support/v17/leanback/app/OnboardingSupportFragment$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OnboardingSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/OnboardingSupportFragment;->startEnterAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/OnboardingSupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/OnboardingSupportFragment;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment$5;->this$0:Landroid/support/v17/leanback/app/OnboardingSupportFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment$5;->this$0:Landroid/support/v17/leanback/app/OnboardingSupportFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mEnterAnimationFinished:Z

    return-void
.end method
