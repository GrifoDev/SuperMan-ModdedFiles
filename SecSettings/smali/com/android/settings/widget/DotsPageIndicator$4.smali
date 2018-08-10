.class Lcom/android/settings/widget/DotsPageIndicator$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DotsPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/DotsPageIndicator;->createMoveSelectedAnimator(FIII)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/DotsPageIndicator;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/DotsPageIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$4;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator$4;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/widget/DotsPageIndicator;->-set4(Lcom/android/settings/widget/DotsPageIndicator;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator$4;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/widget/DotsPageIndicator;->-set4(Lcom/android/settings/widget/DotsPageIndicator;Z)Z

    return-void
.end method
