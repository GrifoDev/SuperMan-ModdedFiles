.class public abstract Lcom/android/systemui/statusbar/notification/CustomInterpolatorTransformation;
.super Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;
.source "CustomInterpolatorTransformation.java"


# instance fields
.field private final mViewType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/notification/CustomInterpolatorTransformation;->mViewType:I

    return-void
.end method


# virtual methods
.method protected hasCustomTransformation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public transformFrom(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/TransformableView;F)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/CustomInterpolatorTransformation;->hasCustomTransformation()Z

    move-result v2

    if-nez v2, :cond_0

    return v3

    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/notification/CustomInterpolatorTransformation;->mViewType:I

    invoke-interface {p2, v2}, Lcom/android/systemui/statusbar/TransformableView;->getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformedView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;F)V

    invoke-virtual {p1, v0, p0, p3}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFullyFrom(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    const/4 v2, 0x1

    return v2
.end method

.method public transformTo(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/TransformableView;F)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/CustomInterpolatorTransformation;->hasCustomTransformation()Z

    move-result v2

    if-nez v2, :cond_0

    return v3

    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/notification/CustomInterpolatorTransformation;->mViewType:I

    invoke-interface {p2, v2}, Lcom/android/systemui/statusbar/TransformableView;->getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformedView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;F)V

    invoke-virtual {p1, v0, p0, p3}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFullyTo(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    const/4 v2, 0x1

    return v2
.end method
