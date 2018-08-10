.class Lcom/samsung/android/settings/widget/GoToTopButton$2;
.super Ljava/lang/Object;
.source "GoToTopButton.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/widget/GoToTopButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/widget/GoToTopButton;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/widget/GoToTopButton;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/widget/GoToTopButton$2;->this$0:Lcom/samsung/android/settings/widget/GoToTopButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/settings/widget/GoToTopButton$2;->this$0:Lcom/samsung/android/settings/widget/GoToTopButton;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/samsung/android/settings/widget/GoToTopButton;->-set1(Lcom/samsung/android/settings/widget/GoToTopButton;F)F

    iget-object v0, p0, Lcom/samsung/android/settings/widget/GoToTopButton$2;->this$0:Lcom/samsung/android/settings/widget/GoToTopButton;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/samsung/android/settings/widget/GoToTopButton;->-set2(Lcom/samsung/android/settings/widget/GoToTopButton;J)J

    iget-object v0, p0, Lcom/samsung/android/settings/widget/GoToTopButton$2;->this$0:Lcom/samsung/android/settings/widget/GoToTopButton;

    iget-object v1, p0, Lcom/samsung/android/settings/widget/GoToTopButton$2;->this$0:Lcom/samsung/android/settings/widget/GoToTopButton;

    invoke-static {v1}, Lcom/samsung/android/settings/widget/GoToTopButton;->-get0(Lcom/samsung/android/settings/widget/GoToTopButton;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/GoToTopButton;->setAlpha(F)V

    return-void
.end method
