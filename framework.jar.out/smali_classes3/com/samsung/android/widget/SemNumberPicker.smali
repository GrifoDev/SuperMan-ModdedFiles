.class public Lcom/samsung/android/widget/SemNumberPicker;
.super Landroid/widget/LinearLayout;
.source "SemNumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;,
        Lcom/samsung/android/widget/SemNumberPicker$CustomEditText;,
        Lcom/samsung/android/widget/SemNumberPicker$Formatter;,
        Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;,
        Lcom/samsung/android/widget/SemNumberPicker$OnScrollListener;,
        Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;,
        Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;,
        Lcom/samsung/android/widget/SemNumberPicker$TwoDigitFormatter;
    }
.end annotation


# static fields
.field private static final sTwoDigitFormatter:Lcom/samsung/android/widget/SemNumberPicker$TwoDigitFormatter;


# instance fields
.field private mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/widget/SemNumberPicker$TwoDigitFormatter;

    invoke-direct {v0}, Lcom/samsung/android/widget/SemNumberPicker$TwoDigitFormatter;-><init>()V

    sput-object v0, Lcom/samsung/android/widget/SemNumberPicker;->sTwoDigitFormatter:Lcom/samsung/android/widget/SemNumberPicker$TwoDigitFormatter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/widget/SemNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/widget/SemNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/widget/SemNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;-><init>(Lcom/samsung/android/widget/SemNumberPicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    return-void
.end method

.method public static final getTwoDigitFormatter()Lcom/samsung/android/widget/SemNumberPicker$Formatter;
    .locals 1

    sget-object v0, Lcom/samsung/android/widget/SemNumberPicker;->sTwoDigitFormatter:Lcom/samsung/android/widget/SemNumberPicker$TwoDigitFormatter;

    return-object v0
.end method


# virtual methods
.method public computeScroll()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->computeScroll()V

    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->computeVerticalScrollOffset()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->isEditTextModeNotAmPm()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->dispatchTrackballEvent(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->isEditTextModeNotAmPm()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/LinearLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->getDisplayedValues()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method public getEnableStateSet()[I
    .locals 1

    sget-object v0, Lcom/samsung/android/widget/SemNumberPicker;->ENABLED_STATE_SET:[I

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->getMaxValue()I

    move-result v0

    return v0
.end method

.method public getMinValue()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->getMinValue()I

    move-result v0

    return v0
.end method

.method public getToggle()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->getToggle()Z

    move-result v0

    return v0
.end method

.method public getValue()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->getValue()I

    move-result v0

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->getWrapSelectorWheel()Z

    move-result v0

    return v0
.end method

.method public isEditTextMode()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->isEditTextMode()Z

    move-result v0

    return v0
.end method

.method public isVisibleToUserWrapper()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemNumberPicker;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public isVisibleToUserWrapper(Landroid/graphics/Rect;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemNumberPicker;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->onAttachedToWindow()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->isEditTextModeNotAmPm()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->onFocusChanged(ZILandroid/graphics/Rect;)V

    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->isEditTextMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->onWindowFocusChanged(Z)V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->onWindowVisibilityChanged(I)V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public performClick(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->performClick(Z)V

    return-void
.end method

.method public performClick()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->isEditTextModeNotAmPm()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->performClick()V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public performLongClick()Z
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->performLongClick()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public scrollBy(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->scrollBy(II)V

    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->setDisplayedValues([Ljava/lang/String;)V

    return-void
.end method

.method public setEditTextMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->setEditTextMode(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->setEnabled(Z)V

    return-void
.end method

.method public setFormatter(Lcom/samsung/android/widget/SemNumberPicker$Formatter;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->setFormatter(Lcom/samsung/android/widget/SemNumberPicker$Formatter;)V

    return-void
.end method

.method public setImeOptions(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->setImeOptions(I)V

    return-void
.end method

.method public setMaxInputLength(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->setMaxInputLength(I)V

    return-void
.end method

.method public setMaxValue(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->setMaxValue(I)V

    return-void
.end method

.method public setMeasuredDimensionWrapper(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/widget/SemNumberPicker;->setMeasuredDimension(II)V

    return-void
.end method

.method public setMinValue(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->setMinValue(I)V

    return-void
.end method

.method public setMonthInputMode()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->setMonthInputMode()V

    return-void
.end method

.method public setOnEditTextModeChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->setOnEditTextModeChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;)V

    return-void
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->setOnLongPressUpdateInterval(J)V

    return-void
.end method

.method public setOnScrollListener(Lcom/samsung/android/widget/SemNumberPicker$OnScrollListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->setOnScrollListener(Lcom/samsung/android/widget/SemNumberPicker$OnScrollListener;)V

    return-void
.end method

.method public setOnValueChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->setOnValueChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;)V

    return-void
.end method

.method public setPickerContentDescription(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->setPickerContentDescription(Ljava/lang/String;)V

    return-void
.end method

.method public setSkipValuesOnLongPressEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->setSkipValuesOnLongPressEnabled(Z)V

    return-void
.end method

.method public setSubTextSize(F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->setSubTextSize(F)V

    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->setTextSize(F)V

    return-void
.end method

.method public setTextTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->setTextTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setToggle(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->setToggle(Z)V

    return-void
.end method

.method public setValue(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->setValue(I)V

    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->setWrapSelectorWheel(Z)V

    return-void
.end method

.method public setYearDateTimeInputMode()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->setYearDateTimeInputMode()V

    return-void
.end method

.method public skipValuesOnLongPress(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemNumberPicker;->setSkipValuesOnLongPressEnabled(Z)V

    return-void
.end method

.method public startAnimation(ILcom/samsung/android/widget/SemAnimationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->startAnimation(ILcom/samsung/android/widget/SemAnimationListener;)V

    return-void
.end method

.method public superOnMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
