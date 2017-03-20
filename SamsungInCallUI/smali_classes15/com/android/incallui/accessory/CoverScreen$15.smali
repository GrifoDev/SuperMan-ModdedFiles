.class Lcom/android/incallui/accessory/CoverScreen$15;
.super Ljava/lang/Object;
.source "CoverScreen.java"

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
    .param p1, "this$0"    # Lcom/android/incallui/accessory/CoverScreen;

    .prologue
    .line 2265
    iput-object p1, p0, Lcom/android/incallui/accessory/CoverScreen$15;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScaleAnimationEnd()V
    .locals 3

    .prologue
    .line 2268
    const-string v0, "CoverScreen"

    const-string v1, "animateForShrinkBackground: onScaleAnimationEnd"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2269
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen$15;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    # getter for: Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;
    invoke-static {v0}, Lcom/android/incallui/accessory/CoverScreen;->access$2000(Lcom/android/incallui/accessory/CoverScreen;)Lcom/android/incallui/widget/GradientAnimationView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen$15;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    # getter for: Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;
    invoke-static {v0}, Lcom/android/incallui/accessory/CoverScreen;->access$2000(Lcom/android/incallui/accessory/CoverScreen;)Lcom/android/incallui/widget/GradientAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/widget/GradientAnimationView;->resetGradientFactor()V

    .line 2270
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen$15;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    invoke-virtual {v0}, Lcom/android/incallui/accessory/CoverScreen;->updateGradientBackground()V

    .line 2271
    return-void
.end method
