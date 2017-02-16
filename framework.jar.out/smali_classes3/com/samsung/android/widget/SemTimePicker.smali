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
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/widget/SemTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 108
    const v0, 0x101049d

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/widget/SemTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/widget/SemTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 138
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 140
    new-instance v0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;-><init>(Lcom/samsung/android/widget/SemTimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    .line 137
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 328
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

    .prologue
    .line 303
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 302
    return-void
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getEditText(I)Landroid/widget/EditText;
    .locals 1
    .param p1, "picker"    # I

    .prologue
    .line 378
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->getEditText(I)Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method public getHour()I
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->getHour()I

    move-result v0

    return v0
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->getMinute()I

    move-result v0

    return v0
.end method

.method public getNumberPicker(I)Lcom/samsung/android/widget/SemNumberPicker;
    .locals 1
    .param p1, "picker"    # I

    .prologue
    .line 383
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->getNumberPicker(I)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v0

    return-object v0
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->is24HourView()Z

    move-result v0

    return v0
.end method

.method public isEditTextMode()Z
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->isEditTextMode()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v0}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 288
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 289
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 287
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 341
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 342
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 340
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 348
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 349
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 347
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    .line 155
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 156
    .local v3, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 157
    .local v2, "heightMode":I
    if-ne v3, v5, :cond_0

    .line 158
    iget-object v4, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v4}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->getDefaultWidth()I

    move-result v1

    .line 159
    .local v1, "defaultWidth":I
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 161
    .end local v1    # "defaultWidth":I
    :cond_0
    if-ne v2, v5, :cond_1

    .line 162
    iget-object v4, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v4}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->getDefaultHeight()I

    move-result v0

    .line 163
    .local v0, "defaultHeight":I
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 165
    .end local v0    # "defaultHeight":I
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 154
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 334
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 335
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 333
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    move-object v0, p1

    .line 320
    check-cast v0, Landroid/view/View$BaseSavedState;

    .line 321
    .local v0, "ss":Landroid/view/View$BaseSavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 322
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v1, v0}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 319
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 295
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRtlPropertiesChanged(I)V

    .line 296
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->onRtlPropertiesChanged(I)V

    .line 294
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 311
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 312
    .local v0, "superState":Landroid/os/Parcelable;
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v1, v0}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v1

    return-object v1
.end method

.method public setEditTextMode(Z)V
    .locals 1
    .param p1, "editTextMode"    # Z

    .prologue
    .line 174
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->setEditTextMode(Z)V

    .line 173
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 259
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 260
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->setEnabled(Z)V

    .line 258
    return-void
.end method

.method public setHour(I)V
    .locals 1
    .param p1, "hour"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->setHour(I)V

    .line 192
    return-void
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "is24HourView"    # Ljava/lang/Boolean;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 231
    return-void
.end method

.method public setLargeBackground()V
    .locals 0

    .prologue
    .line 391
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 358
    return-void
.end method

.method public setMinute(I)V
    .locals 1
    .param p1, "minute"    # I

    .prologue
    .line 213
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->setMinute(I)V

    .line 212
    return-void
.end method

.method public setOnEditTextModeChangedListener(Lcom/samsung/android/widget/SemTimePicker$OnEditTextModeChangedListener;)V
    .locals 1
    .param p1, "onEditTextModeChangedListener"    # Lcom/samsung/android/widget/SemTimePicker$OnEditTextModeChangedListener;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->setOnEditTextModeChangedListener(Lcom/samsung/android/widget/SemTimePicker$OnEditTextModeChangedListener;)V

    .line 149
    return-void
.end method

.method public setOnTimeChangedListener(Lcom/samsung/android/widget/SemTimePicker$OnTimeChangedListener;)V
    .locals 1
    .param p1, "onTimeChangedListener"    # Lcom/samsung/android/widget/SemTimePicker$OnTimeChangedListener;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->setOnTimeChangedListener(Lcom/samsung/android/widget/SemTimePicker$OnTimeChangedListener;)V

    .line 248
    return-void
.end method

.method public startAnimation(ILcom/samsung/android/widget/SemAnimationListener;)V
    .locals 1
    .param p1, "delayTime"    # I
    .param p2, "listener"    # Lcom/samsung/android/widget/SemAnimationListener;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePicker;->mDelegate:Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;->startAnimation(ILcom/samsung/android/widget/SemAnimationListener;)V

    .line 368
    return-void
.end method
