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

    .prologue
    .line 122
    new-instance v0, Lcom/samsung/android/widget/SemNumberPicker$TwoDigitFormatter;

    invoke-direct {v0}, Lcom/samsung/android/widget/SemNumberPicker$TwoDigitFormatter;-><init>()V

    sput-object v0, Lcom/samsung/android/widget/SemNumberPicker;->sTwoDigitFormatter:Lcom/samsung/android/widget/SemNumberPicker$TwoDigitFormatter;

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 213
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/widget/SemNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 212
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 223
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/widget/SemNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 222
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/widget/SemNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 235
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 253
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 255
    new-instance v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;-><init>(Lcom/samsung/android/widget/SemNumberPicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    .line 252
    return-void
.end method

.method public static final getTwoDigitFormatter()Lcom/samsung/android/widget/SemNumberPicker$Formatter;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/samsung/android/widget/SemNumberPicker;->sTwoDigitFormatter:Lcom/samsung/android/widget/SemNumberPicker$TwoDigitFormatter;

    return-object v0
.end method


# virtual methods
.method public computeScroll()V
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->computeScroll()V

    .line 424
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->computeVerticalScrollOffset()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 398
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->isEditTextModeNotAmPm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 382
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    const/4 v0, 0x1

    return v0

    .line 385
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    const/4 v0, 0x1

    return v0

    .line 336
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 361
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 362
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->dispatchTrackballEvent(Landroid/view/MotionEvent;)V

    .line 392
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->isEditTextModeNotAmPm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    invoke-super {p0}, Landroid/widget/LinearLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    return-object v0

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->getDisplayedValues()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method public getEnableStateSet()[I
    .locals 1

    .prologue
    .line 800
    sget-object v0, Lcom/samsung/android/widget/SemNumberPicker;->ENABLED_STATE_SET:[I

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->getMaxValue()I

    move-result v0

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->getMinValue()I

    move-result v0

    return v0
.end method

.method public getToggle()Z
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->getToggle()Z

    move-result v0

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->getValue()I

    move-result v0

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->getWrapSelectorWheel()Z

    move-result v0

    return v0
.end method

.method public isEditTextMode()Z
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->isEditTextMode()Z

    move-result v0

    return v0
.end method

.method public isVisibleToUserWrapper()Z
    .locals 1

    .prologue
    .line 805
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public isVisibleToUserWrapper(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "boundInView"    # Landroid/graphics/Rect;

    .prologue
    .line 810
    invoke-virtual {p0, p1}, Landroid/view/View;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 734
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 735
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->onAttachedToWindow()V

    .line 733
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 368
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 369
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 367
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 727
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 728
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->onDetachedFromWindow()V

    .line 726
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 741
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->isEditTextModeNotAmPm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 743
    return-void

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->onDraw(Landroid/graphics/Canvas;)V

    .line 740
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 375
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 376
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 374
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 752
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 753
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 751
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 349
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 311
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->onLayout(ZIIII)V

    .line 310
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 327
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->onMeasure(II)V

    .line 326
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 355
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 342
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 343
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->onWindowFocusChanged(Z)V

    .line 341
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 304
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->onWindowVisibilityChanged(I)V

    .line 305
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowVisibilityChanged(I)V

    .line 303
    return-void
.end method

.method public performClick(Z)V
    .locals 1
    .param p1, "toIncrement"    # Z

    .prologue
    .line 547
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->performClick(Z)V

    .line 546
    return-void
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->isEditTextModeNotAmPm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    return v0

    .line 539
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    if-nez v0, :cond_1

    .line 540
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->performClick()V

    .line 542
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public performLongClick()Z
    .locals 1

    .prologue
    .line 553
    invoke-super {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->performLongClick()V

    .line 556
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public scrollBy(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 437
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->scrollBy(II)V

    .line 436
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1
    .param p1, "displayedValues"    # [Ljava/lang/String;

    .prologue
    .line 682
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->setDisplayedValues([Ljava/lang/String;)V

    .line 681
    return-void
.end method

.method public setEditTextMode(Z)V
    .locals 1
    .param p1, "isEditTextMode"    # Z

    .prologue
    .line 289
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->setEditTextMode(Z)V

    .line 288
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 430
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 431
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->setEnabled(Z)V

    .line 429
    return-void
.end method

.method public setFormatter(Lcom/samsung/android/widget/SemNumberPicker$Formatter;)V
    .locals 1
    .param p1, "formatter"    # Lcom/samsung/android/widget/SemNumberPicker$Formatter;

    .prologue
    .line 498
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->setFormatter(Lcom/samsung/android/widget/SemNumberPicker$Formatter;)V

    .line 497
    return-void
.end method

.method public setImeOptions(I)V
    .locals 1
    .param p1, "imeOptions"    # I

    .prologue
    .line 270
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->setImeOptions(I)V

    .line 269
    return-void
.end method

.method public setLargeBackground()V
    .locals 0

    .prologue
    .line 818
    return-void
.end method

.method public setMaxInputLength(I)V
    .locals 1
    .param p1, "limit"    # I

    .prologue
    .line 771
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->setMaxInputLength(I)V

    .line 770
    return-void
.end method

.method public setMaxValue(I)V
    .locals 1
    .param p1, "maxValue"    # I

    .prologue
    .line 659
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->setMaxValue(I)V

    .line 658
    return-void
.end method

.method public setMeasuredDimensionWrapper(II)V
    .locals 0
    .param p1, "measuredWidth"    # I
    .param p2, "measuredHeight"    # I

    .prologue
    .line 321
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 320
    return-void
.end method

.method public setMinValue(I)V
    .locals 1
    .param p1, "minValue"    # I

    .prologue
    .line 636
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->setMinValue(I)V

    .line 635
    return-void
.end method

.method public setMonthInputMode()V
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->setMonthInputMode()V

    .line 786
    return-void
.end method

.method public setOnEditTextModeChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;)V
    .locals 1
    .param p1, "onEditTextModeChangedListener"    # Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;

    .prologue
    .line 483
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->setOnEditTextModeChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;)V

    .line 482
    return-void
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 1
    .param p1, "intervalMillis"    # J

    .prologue
    .line 604
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->setOnLongPressUpdateInterval(J)V

    .line 603
    return-void
.end method

.method public setOnScrollListener(Lcom/samsung/android/widget/SemNumberPicker$OnScrollListener;)V
    .locals 1
    .param p1, "onScrollListener"    # Lcom/samsung/android/widget/SemNumberPicker$OnScrollListener;

    .prologue
    .line 474
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->setOnScrollListener(Lcom/samsung/android/widget/SemNumberPicker$OnScrollListener;)V

    .line 473
    return-void
.end method

.method public setOnValueChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;)V
    .locals 1
    .param p1, "onValueChangedListener"    # Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;

    .prologue
    .line 464
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->setOnValueChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;)V

    .line 463
    return-void
.end method

.method public setPickerContentDescription(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->setPickerContentDescription(Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method public setSkipValuesOnLongPressEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 419
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->setSkipValuesOnLongPressEnabled(Z)V

    .line 418
    return-void
.end method

.method public setSubTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 702
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->setSubTextSize(F)V

    .line 701
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 692
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->setTextSize(F)V

    .line 691
    return-void
.end method

.method public setTextTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 711
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->setTextTypeface(Landroid/graphics/Typeface;)V

    .line 710
    return-void
.end method

.method public setToggle(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 275
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->setToggle(Z)V

    .line 274
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 530
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->setValue(I)V

    .line 529
    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 1
    .param p1, "wrapSelectorWheel"    # Z

    .prologue
    .line 590
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->setWrapSelectorWheel(Z)V

    .line 589
    return-void
.end method

.method public setYearDateTimeInputMode()V
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->setYearDateTimeInputMode()V

    .line 794
    return-void
.end method

.method public skipValuesOnLongPress(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 409
    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemNumberPicker;->setSkipValuesOnLongPressEnabled(Z)V

    .line 408
    return-void
.end method

.method public startAnimation(ILcom/samsung/android/widget/SemAnimationListener;)V
    .locals 1
    .param p1, "delayTime"    # I
    .param p2, "listener"    # Lcom/samsung/android/widget/SemAnimationListener;

    .prologue
    .line 721
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker;->mDelegate:Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;->startAnimation(ILcom/samsung/android/widget/SemAnimationListener;)V

    .line 720
    return-void
.end method

.method public superOnMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 316
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 315
    return-void
.end method
