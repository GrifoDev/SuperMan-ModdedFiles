.class Lcom/android/incallui/fragment/ConferenceManagerCsFragment$8;
.super Ljava/lang/Object;
.source "ConferenceManagerCsFragment.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->animateForSplit(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/ConferenceManagerCsFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/ConferenceManagerCsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/fragment/ConferenceManagerCsFragment;

    .prologue
    .line 644
    iput-object p1, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$8;->this$0:Lcom/android/incallui/fragment/ConferenceManagerCsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 647
    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$8;->this$0:Lcom/android/incallui/fragment/ConferenceManagerCsFragment;

    # getter for: Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferencePanel:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->access$300(Lcom/android/incallui/fragment/ConferenceManagerCsFragment;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 648
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 649
    .local v0, "height":I
    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$8;->this$0:Lcom/android/incallui/fragment/ConferenceManagerCsFragment;

    # getter for: Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferencePanel:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->access$300(Lcom/android/incallui/fragment/ConferenceManagerCsFragment;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 650
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 651
    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$8;->this$0:Lcom/android/incallui/fragment/ConferenceManagerCsFragment;

    # getter for: Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferencePanel:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->access$300(Lcom/android/incallui/fragment/ConferenceManagerCsFragment;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 653
    .end local v0    # "height":I
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method
