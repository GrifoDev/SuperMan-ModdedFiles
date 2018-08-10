.class public Lcom/samsung/android/widget/SemTimePicker;
.super Landroid/widget/FrameLayout;
.source "SemTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemTimePicker$AbstractSemTimePickerDelegate;,
        Lcom/samsung/android/widget/SemTimePicker$OnEditTextModeChangedListener;,
        Lcom/samsung/android/widget/SemTimePicker$OnTimeChangedListener;,
        Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;
    }
.end annotation


# static fields
.field public static final PICKER_AMPM:I = 0x2

.field public static final PICKER_HOUR:I = 0x0

.field public static final PICKER_MINUTE:I = 0x1


# instance fields
.field private mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/widget/SemTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101049d

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/widget/SemTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/widget/SemTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;-><init>(Lcom/samsung/android/widget/SemTimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemTimePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public getBaseline()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getEditText(I)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->getEditText(I)Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method public getHour()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->getHour()I

    move-result v0

    return v0
.end method

.method public getMinute()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->getMinute()I

    move-result v0

    return v0
.end method

.method public getNumberPicker(I)Lcom/samsung/android/widget/SemNumberPicker;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->getNumberPicker(I)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v0

    return-object v0
.end method

.method public is24HourView()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->is24HourView()Z

    move-result v0

    return v0
.end method

.method public isEditTextMode()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->isEditTextMode()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-ne v3, v5, :cond_0

    iget-object v4, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v4}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->getDefaultWidth()I

    move-result v1

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_0
    if-ne v2, v5, :cond_1

    iget-object v4, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v4}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->getDefaultHeight()I

    move-result v0

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Landroid/view/View$BaseSavedState;

    invoke-virtual {v0}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v1, v0}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v1, v0}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v1

    return-object v1
.end method

.method public setEditTextMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->setEditTextMode(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->setEnabled(Z)V

    return-void
.end method

.method public setHour(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->setHour(I)V

    return-void
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->setIs24HourView(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setMinute(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->setMinute(I)V

    return-void
.end method

.method public setOnEditTextModeChangedListener(Lcom/samsung/android/widget/SemTimePicker$OnEditTextModeChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->setOnEditTextModeChangedListener(Lcom/samsung/android/widget/SemTimePicker$OnEditTextModeChangedListener;)V

    return-void
.end method

.method public setOnTimeChangedListener(Lcom/samsung/android/widget/SemTimePicker$OnTimeChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->setOnTimeChangedListener(Lcom/samsung/android/widget/SemTimePicker$OnTimeChangedListener;)V

    return-void
.end method

.method public startAnimation(ILcom/samsung/android/widget/SemAnimationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->startAnimation(ILcom/samsung/android/widget/SemAnimationListener;)V

    return-void
.end method
