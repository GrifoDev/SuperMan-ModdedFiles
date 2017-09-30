.class Lcom/android/incallui/fragment/VoiceCallButtonFragment$10;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/VoiceCallButtonFragment;->animateForOutgoingCall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

.field final synthetic val$backgroundFrame:Landroid/view/View;

.field final synthetic val$endMarginBottom:I

.field final synthetic val$startMarginBottom:I


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/VoiceCallButtonFragment;IILandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$10;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    iput p2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$10;->val$startMarginBottom:I

    iput p3, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$10;->val$endMarginBottom:I

    iput-object p4, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$10;->val$backgroundFrame:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 12

    const/4 v11, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v0, "VoiceCallButtonFragment"

    const-string v1, "animateForOutgoingCall: onGlobalLayout"

    invoke-static {v0, v1, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$10;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$10;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$10;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$10;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$10;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0069

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$10;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-virtual {v3}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f006a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x2

    new-array v5, v5, [I

    iget v6, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$10;->val$startMarginBottom:I

    aput v6, v5, v8

    iget v6, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$10;->val$endMarginBottom:I

    aput v6, v5, v9

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    new-instance v6, Lcom/android/incallui/fragment/VoiceCallButtonFragment$10$1;

    invoke-direct {v6, p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment$10$1;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonFragment$10;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    int-to-long v6, v0

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/samsung/android/b/a/f;

    invoke-direct {v6}, Lcom/samsung/android/b/a/f;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$10;->val$backgroundFrame:Landroid/view/View;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v9, [F

    aput v10, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    int-to-long v6, v0

    invoke-virtual {v5, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v6, Lcom/samsung/android/b/a/f;

    invoke-direct {v6}, Lcom/samsung/android/b/a/f;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$10;->val$backgroundFrame:Landroid/view/View;

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v9, [F

    aput v10, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    int-to-long v6, v0

    invoke-virtual {v5, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v0, Lcom/samsung/android/b/a/f;

    invoke-direct {v0}, Lcom/samsung/android/b/a/f;-><init>()V

    invoke-virtual {v5, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$10;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v5, 0x7f100307

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v9, [F

    aput v10, v6, v8

    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v6, v2

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$10;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f100308

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v9, [F

    aput v11, v5, v8

    invoke-static {v0, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v6, v3

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v2, Lcom/samsung/android/b/a/g;

    invoke-direct {v2}, Lcom/samsung/android/b/a/g;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$10;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f100309

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v9, [F

    aput v10, v5, v8

    invoke-static {v0, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v6, v3

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    int-to-long v6, v3

    invoke-virtual {v2, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    new-instance v2, Lcom/samsung/android/b/a/g;

    invoke-direct {v2}, Lcom/samsung/android/b/a/g;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    int-to-long v0, v1

    invoke-virtual {v4, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    new-instance v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$10$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment$10$2;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonFragment$10;)V

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/SystemServiceUtils;->boostCPU(Landroid/content/Context;)V

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method
