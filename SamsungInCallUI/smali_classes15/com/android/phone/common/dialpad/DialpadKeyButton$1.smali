.class Lcom/android/phone/common/dialpad/DialpadKeyButton$1;
.super Ljava/lang/Object;
.source "DialpadKeyButton.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/common/dialpad/DialpadKeyButton;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/common/dialpad/DialpadKeyButton;


# direct methods
.method constructor <init>(Lcom/android/phone/common/dialpad/DialpadKeyButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/phone/common/dialpad/DialpadKeyButton;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton$1;->this$0:Lcom/android/phone/common/dialpad/DialpadKeyButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton$1;->this$0:Lcom/android/phone/common/dialpad/DialpadKeyButton;

    # getter for: Lcom/android/phone/common/dialpad/DialpadKeyButton;->mNumberTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->access$000(Lcom/android/phone/common/dialpad/DialpadKeyButton;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton$1;->this$0:Lcom/android/phone/common/dialpad/DialpadKeyButton;

    # getter for: Lcom/android/phone/common/dialpad/DialpadKeyButton;->mNumberTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->access$000(Lcom/android/phone/common/dialpad/DialpadKeyButton;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    :cond_0
    return-void
.end method
