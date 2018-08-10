.class Landroid/support/v17/leanback/app/OnboardingFragment$2;
.super Ljava/lang/Object;
.source "OnboardingFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/OnboardingFragment;
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

    iput-object p1, p0, Landroid/support/v17/leanback/app/OnboardingFragment$2;->this$0:Landroid/support/v17/leanback/app/OnboardingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v17/leanback/app/OnboardingFragment$2;->this$0:Landroid/support/v17/leanback/app/OnboardingFragment;

    iget-boolean v2, v2, Landroid/support/v17/leanback/app/OnboardingFragment;->mLogoAnimationFinished:Z

    if-nez v2, :cond_1

    const/4 v2, 0x4

    if-eq p2, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    sparse-switch p2, :sswitch_data_0

    return v1

    :sswitch_0
    iget-object v2, p0, Landroid/support/v17/leanback/app/OnboardingFragment$2;->this$0:Landroid/support/v17/leanback/app/OnboardingFragment;

    iget v2, v2, Landroid/support/v17/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v1, p0, Landroid/support/v17/leanback/app/OnboardingFragment$2;->this$0:Landroid/support/v17/leanback/app/OnboardingFragment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/OnboardingFragment;->moveToPreviousPage()V

    return v0

    :sswitch_1
    iget-object v1, p0, Landroid/support/v17/leanback/app/OnboardingFragment$2;->this$0:Landroid/support/v17/leanback/app/OnboardingFragment;

    iget-boolean v1, v1, Landroid/support/v17/leanback/app/OnboardingFragment;->mIsLtr:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/v17/leanback/app/OnboardingFragment$2;->this$0:Landroid/support/v17/leanback/app/OnboardingFragment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/OnboardingFragment;->moveToPreviousPage()V

    :goto_1
    return v0

    :cond_4
    iget-object v1, p0, Landroid/support/v17/leanback/app/OnboardingFragment$2;->this$0:Landroid/support/v17/leanback/app/OnboardingFragment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/OnboardingFragment;->moveToNextPage()V

    goto :goto_1

    :sswitch_2
    iget-object v1, p0, Landroid/support/v17/leanback/app/OnboardingFragment$2;->this$0:Landroid/support/v17/leanback/app/OnboardingFragment;

    iget-boolean v1, v1, Landroid/support/v17/leanback/app/OnboardingFragment;->mIsLtr:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/support/v17/leanback/app/OnboardingFragment$2;->this$0:Landroid/support/v17/leanback/app/OnboardingFragment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/OnboardingFragment;->moveToNextPage()V

    :goto_2
    return v0

    :cond_5
    iget-object v1, p0, Landroid/support/v17/leanback/app/OnboardingFragment$2;->this$0:Landroid/support/v17/leanback/app/OnboardingFragment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/OnboardingFragment;->moveToPreviousPage()V

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
    .end sparse-switch
.end method
