.class Lcom/android/incallui/fragment/CallCardFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/CallCardFragment;->startTextColorEndCallAnimation(IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/CallCardFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/CallCardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/CallCardFragment$2;->this$0:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment$2;->this$0:Lcom/android/incallui/fragment/CallCardFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment$2;->this$0:Lcom/android/incallui/fragment/CallCardFragment;

    iget-object v1, v0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment$2;->this$0:Lcom/android/incallui/fragment/CallCardFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment$2;->this$0:Lcom/android/incallui/fragment/CallCardFragment;

    iget-object v1, v0, Lcom/android/incallui/fragment/CallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment$2;->this$0:Lcom/android/incallui/fragment/CallCardFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordText:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment$2;->this$0:Lcom/android/incallui/fragment/CallCardFragment;

    iget-object v1, v0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment$2;->this$0:Lcom/android/incallui/fragment/CallCardFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment$2;->this$0:Lcom/android/incallui/fragment/CallCardFragment;

    iget-object v1, v0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Chronometer;->setTextColor(I)V

    :cond_3
    return-void
.end method
