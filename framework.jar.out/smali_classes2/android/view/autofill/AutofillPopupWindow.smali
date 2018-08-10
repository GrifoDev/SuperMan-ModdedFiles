.class public Landroid/view/autofill/AutofillPopupWindow;
.super Landroid/widget/PopupWindow;
.source "AutofillPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/autofill/AutofillPopupWindow$1;,
        Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AutofillPopupWindow"


# instance fields
.field private final mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final mWindowPresenter:Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;


# direct methods
.method public constructor <init>(Landroid/view/autofill/IAutofillWindowPresenter;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    new-instance v0, Landroid/view/autofill/AutofillPopupWindow$1;

    invoke-direct {v0, p0}, Landroid/view/autofill/AutofillPopupWindow$1;-><init>(Landroid/view/autofill/AutofillPopupWindow;)V

    iput-object v0, p0, Landroid/view/autofill/AutofillPopupWindow;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    new-instance v0, Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;

    invoke-direct {v0, p0, p1}, Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;-><init>(Landroid/view/autofill/AutofillPopupWindow;Landroid/view/autofill/IAutofillWindowPresenter;)V

    iput-object v0, p0, Landroid/view/autofill/AutofillPopupWindow;->mWindowPresenter:Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;

    invoke-virtual {p0, v1}, Landroid/view/autofill/AutofillPopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {p0, v1}, Landroid/view/autofill/AutofillPopupWindow;->setInputMethodMode(I)V

    return-void
.end method


# virtual methods
.method protected attachToAnchor(Landroid/view/View;III)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->attachToAnchor(Landroid/view/View;III)V

    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method protected detachFromAnchor()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->getAnchor()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/view/autofill/AutofillPopupWindow;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    invoke-super {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    return-void
.end method

.method public dismiss()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->isTransitioningToDismiss()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, v2}, Landroid/view/autofill/AutofillPopupWindow;->setShowing(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillPopupWindow;->setTransitioningToDismiss(Z)V

    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow;->mWindowPresenter:Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->getTransitionEpicenter()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;->hide(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v2}, Landroid/view/autofill/AutofillPopupWindow;->setTransitioningToDismiss(Z)V

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->detachFromAnchor()V

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->getOnDismissListener()Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->getOnDismissListener()Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_2
    return-void
.end method

.method public getAnimationStyle()I
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getElevation()F
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEnterTransition()Landroid/transition/Transition;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExitTransition()Landroid/transition/Transition;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected hasContentView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected hasDecorView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setAnimationStyle(I)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public setElevation(F)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEnterTransition(Landroid/transition/Transition;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setExitTransition(Landroid/transition/Transition;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 10

    const/4 v4, 0x1

    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AutofillPopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showAsDropDown(): anchor="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", xoff="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", yoff="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", isShowing(): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->isShowing()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v4}, Landroid/view/autofill/AutofillPopupWindow;->setShowing(Z)V

    invoke-virtual {p0, v4}, Landroid/view/autofill/AutofillPopupWindow;->setDropDown(Z)V

    invoke-virtual {p0, v4}, Landroid/view/autofill/AutofillPopupWindow;->setClipToScreenEnabled(Z)V

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/autofill/AutofillPopupWindow;->attachToAnchor(Landroid/view/View;III)V

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillPopupWindow;->createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput-object v2, p0, Landroid/view/autofill/AutofillPopupWindow;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->getAllowScrollingAnchorParent()Z

    move-result v8

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v7, p4

    invoke-virtual/range {v0 .. v8}, Landroid/view/autofill/AutofillPopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v9

    invoke-virtual {p0, v9}, Landroid/view/autofill/AutofillPopupWindow;->updateAboveAnchor(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow;->mWindowPresenter:Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->getTransitionEpicenter()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->isLayoutInsetDecor()Z

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;->show(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;ZI)V

    return-void
.end method

.method public update(Landroid/view/View;IIIILandroid/graphics/Rect;)V
    .locals 6

    if-eqz p6, :cond_1

    new-instance v1, Landroid/view/autofill/AutofillPopupWindow$2;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, p0, v0, p6, p1}, Landroid/view/autofill/AutofillPopupWindow$2;-><init>(Landroid/view/autofill/AutofillPopupWindow;Landroid/content/Context;Landroid/graphics/Rect;Landroid/view/View;)V

    iget v0, p6, Landroid/graphics/Rect;->left:I

    iget v2, p6, Landroid/graphics/Rect;->top:I

    iget v3, p6, Landroid/graphics/Rect;->right:I

    iget v4, p6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setScrollX(I)V

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setScrollY(I)V

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AutofillPopupWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "anchor is already detached, isShowing() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->isShowing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p4}, Landroid/view/autofill/AutofillPopupWindow;->setWidth(I)V

    invoke-virtual {p0, p5}, Landroid/view/autofill/AutofillPopupWindow;->setHeight(I)V

    invoke-virtual {p0, v1, p2, p3}, Landroid/view/autofill/AutofillPopupWindow;->showAsDropDown(Landroid/view/View;II)V

    :goto_1
    return-void

    :cond_1
    move-object v1, p1

    goto :goto_0

    :cond_2
    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/view/autofill/AutofillPopupWindow;->update(Landroid/view/View;IIII)V

    goto :goto_1
.end method

.method protected update(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    :goto_0
    iget-object v1, p0, Landroid/view/autofill/AutofillPopupWindow;->mWindowPresenter:Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->getTransitionEpicenter()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->isLayoutInsetDecor()Z

    move-result v3

    invoke-virtual {v1, p2, v2, v3, v0}, Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;->show(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;ZI)V

    return-void

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method
