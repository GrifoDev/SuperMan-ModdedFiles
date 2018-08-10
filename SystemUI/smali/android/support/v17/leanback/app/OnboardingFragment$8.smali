.class Landroid/support/v17/leanback/app/OnboardingFragment$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OnboardingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/OnboardingFragment;->onPageChangedInternal(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/OnboardingFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/OnboardingFragment;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/OnboardingFragment$8;->this$0:Landroid/support/v17/leanback/app/OnboardingFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment$8;->this$0:Landroid/support/v17/leanback/app/OnboardingFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/OnboardingFragment;->mStartButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
