.class Landroid/support/v17/leanback/app/OnboardingSupportFragment$3;
.super Ljava/lang/Object;
.source "OnboardingSupportFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/OnboardingSupportFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    iput-object p1, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/OnboardingSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/OnboardingSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/OnboardingSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->startLogoAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/OnboardingSupportFragment;

    iput-boolean v1, v0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mLogoAnimationFinished:Z

    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/OnboardingSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->onLogoAnimationFinished()V

    :cond_0
    return v1
.end method
