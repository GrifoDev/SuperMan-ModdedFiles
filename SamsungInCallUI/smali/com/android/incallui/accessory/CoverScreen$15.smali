.class Lcom/android/incallui/accessory/CoverScreen$15;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/accessory/CoverScreen;->animateForShrinkBackground()V
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

    iput-object p1, p0, Lcom/android/incallui/accessory/CoverScreen$15;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScaleAnimationEnd()V
    .locals 3

    const-string v0, "CoverScreen"

    const-string v1, "animateForShrinkBackground: onScaleAnimationEnd"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen$15;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    invoke-static {v0}, Lcom/android/incallui/accessory/CoverScreen;->access$2000(Lcom/android/incallui/accessory/CoverScreen;)Lcom/android/incallui/widget/GradientAnimationView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen$15;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    invoke-static {v0}, Lcom/android/incallui/accessory/CoverScreen;->access$2000(Lcom/android/incallui/accessory/CoverScreen;)Lcom/android/incallui/widget/GradientAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/widget/GradientAnimationView;->resetGradientFactor()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen$15;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    invoke-virtual {v0}, Lcom/android/incallui/accessory/CoverScreen;->updateGradientBackground()V

    return-void
.end method
