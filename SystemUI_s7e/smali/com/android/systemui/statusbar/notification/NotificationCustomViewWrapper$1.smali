.class Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper$1;
.super Ljava/lang/Object;
.source "NotificationCustomViewWrapper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->fadeGrayscale(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->updateGrayscaleMatrix(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->-get0(Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;)Landroid/graphics/Paint;

    move-result-object v0

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mGrayscaleColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->-get0(Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayerPaint(Landroid/graphics/Paint;)V

    return-void
.end method
