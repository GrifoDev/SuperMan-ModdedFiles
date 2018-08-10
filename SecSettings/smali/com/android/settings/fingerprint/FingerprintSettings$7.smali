.class Lcom/android/settings/fingerprint/FingerprintSettings$7;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$headerDecoration:Lcom/android/settings/fingerprint/FingerprintHeaderDecoration;


# virtual methods
.method public onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$7;->val$headerDecoration:Lcom/android/settings/fingerprint/FingerprintHeaderDecoration;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    const v3, 0x7f0a08d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/fingerprint/FingerprintHeaderDecoration;->isViewClicked(FFI)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "closeBtn touched"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get5()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$7;->val$headerDecoration:Lcom/android/settings/fingerprint/FingerprintHeaderDecoration;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    return v4

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method
