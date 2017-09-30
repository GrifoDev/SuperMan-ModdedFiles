.class Lcom/android/incallui/accessory/CoverScreen$16;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/accessory/CoverScreen;->animateForDummyBackground(Landroid/animation/AnimatorSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/accessory/CoverScreen;


# direct methods
.method constructor <init>(Lcom/android/incallui/accessory/CoverScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/accessory/CoverScreen$16;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScaleAnimationEnd()V
    .locals 3

    const-string v0, "CoverScreen"

    const-string v1, "animateForDummyBackground: onAnimationEnd"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen$16;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    invoke-static {v0}, Lcom/android/incallui/accessory/CoverScreen;->access$2100(Lcom/android/incallui/accessory/CoverScreen;)Lcom/android/incallui/widget/GradientAnimationView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen$16;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    invoke-static {v0}, Lcom/android/incallui/accessory/CoverScreen;->access$2100(Lcom/android/incallui/accessory/CoverScreen;)Lcom/android/incallui/widget/GradientAnimationView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/GradientAnimationView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen$16;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    invoke-static {v0}, Lcom/android/incallui/accessory/CoverScreen;->access$2100(Lcom/android/incallui/accessory/CoverScreen;)Lcom/android/incallui/widget/GradientAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/widget/GradientAnimationView;->tearDown()V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen$16;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/accessory/CoverScreen;->access$2102(Lcom/android/incallui/accessory/CoverScreen;Lcom/android/incallui/widget/GradientAnimationView;)Lcom/android/incallui/widget/GradientAnimationView;

    :cond_0
    return-void
.end method
