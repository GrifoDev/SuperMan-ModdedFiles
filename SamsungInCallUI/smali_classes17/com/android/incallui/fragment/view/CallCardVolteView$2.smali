.class Lcom/android/incallui/fragment/view/CallCardVolteView$2;
.super Ljava/lang/Object;
.source "CallCardVolteView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/view/CallCardVolteView;->updateIconColor(Lcom/android/incallui/fragment/CallCardFragment;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/view/CallCardVolteView;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/view/CallCardVolteView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/view/CallCardVolteView$2;->this$0:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView$2;->this$0:Lcom/android/incallui/fragment/view/CallCardVolteView;

    # getter for: Lcom/android/incallui/fragment/view/CallCardVolteView;->mHdWifiIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->access$100(Lcom/android/incallui/fragment/view/CallCardVolteView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView$2;->this$0:Lcom/android/incallui/fragment/view/CallCardVolteView;

    # getter for: Lcom/android/incallui/fragment/view/CallCardVolteView;->mHdWifiIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->access$100(Lcom/android/incallui/fragment/view/CallCardVolteView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView$2;->this$0:Lcom/android/incallui/fragment/view/CallCardVolteView;

    # getter for: Lcom/android/incallui/fragment/view/CallCardVolteView;->mAttemptingTextSPR:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->access$200(Lcom/android/incallui/fragment/view/CallCardVolteView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView$2;->this$0:Lcom/android/incallui/fragment/view/CallCardVolteView;

    # getter for: Lcom/android/incallui/fragment/view/CallCardVolteView;->mAttemptingTextSPR:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->access$200(Lcom/android/incallui/fragment/view/CallCardVolteView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView$2;->this$0:Lcom/android/incallui/fragment/view/CallCardVolteView;

    # getter for: Lcom/android/incallui/fragment/view/CallCardVolteView;->mUHDIconImageSecondary:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->access$300(Lcom/android/incallui/fragment/view/CallCardVolteView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView$2;->this$0:Lcom/android/incallui/fragment/view/CallCardVolteView;

    # getter for: Lcom/android/incallui/fragment/view/CallCardVolteView;->mUHDIconImageSecondary:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->access$300(Lcom/android/incallui/fragment/view/CallCardVolteView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_2
    return-void
.end method
