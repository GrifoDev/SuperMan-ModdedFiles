.class Lcom/android/systemui/settings/BrightnessDetail$1$5;
.super Ljava/lang/Object;
.source "BrightnessDetail.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/BrightnessDetail$1;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

.field final synthetic val$brightnessIcon:Landroid/widget/ImageView;

.field final synthetic val$slider:Lcom/android/systemui/settings/ToggleSliderView;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/BrightnessDetail$1;Lcom/android/systemui/settings/ToggleSliderView;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail$1$5;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iput-object p2, p0, Lcom/android/systemui/settings/BrightnessDetail$1$5;->val$slider:Lcom/android/systemui/settings/ToggleSliderView;

    iput-object p3, p0, Lcom/android/systemui/settings/BrightnessDetail$1$5;->val$brightnessIcon:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail$1$5;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iget-object v0, v0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessDetail;->-get3(Lcom/android/systemui/settings/BrightnessDetail;)Lcom/android/systemui/settings/BrightnessDetail$BrightnessDetailCallback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/settings/BrightnessDetail$BrightnessDetailCallback;->setDeatilShowing(Z)V

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail$1$5;->val$slider:Lcom/android/systemui/settings/ToggleSliderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail$1$5;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iget-object v0, v0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    new-instance v1, Lcom/android/systemui/settings/BrightnessController;

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessDetail$1$5;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iget-object v2, v2, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessDetail;->-get2(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessDetail$1$5;->val$brightnessIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessDetail$1$5;->val$slider:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/settings/BrightnessController;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/systemui/settings/ToggleSlider;)V

    invoke-static {v0, v1}, Lcom/android/systemui/settings/BrightnessDetail;->-set0(Lcom/android/systemui/settings/BrightnessDetail;Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/BrightnessController;

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail$1$5;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iget-object v0, v0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessDetail;->-get1(Lcom/android/systemui/settings/BrightnessDetail;)Lcom/android/systemui/settings/BrightnessController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail$1$5;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iget-object v0, v0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessDetail;->-get1(Lcom/android/systemui/settings/BrightnessDetail;)Lcom/android/systemui/settings/BrightnessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController;->registerCallbacks()V

    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail$1$5;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iget-object v0, v0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessDetail;->-get1(Lcom/android/systemui/settings/BrightnessDetail;)Lcom/android/systemui/settings/BrightnessController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail$1$5;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iget-object v0, v0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessDetail;->-get1(Lcom/android/systemui/settings/BrightnessDetail;)Lcom/android/systemui/settings/BrightnessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController;->unregisterCallbacks()V

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail$1$5;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iget-object v0, v0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v0, v1}, Lcom/android/systemui/settings/BrightnessDetail;->-set0(Lcom/android/systemui/settings/BrightnessDetail;Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/BrightnessController;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail$1$5;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iget-object v0, v0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessDetail;->-get3(Lcom/android/systemui/settings/BrightnessDetail;)Lcom/android/systemui/settings/BrightnessDetail$BrightnessDetailCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/settings/BrightnessDetail$BrightnessDetailCallback;->setDeatilShowing(Z)V

    return-void
.end method
