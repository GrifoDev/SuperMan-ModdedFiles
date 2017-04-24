.class interface abstract Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;
.super Ljava/lang/Object;
.source "SemTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "SemTimePickerDelegate"
.end annotation


# virtual methods
.method public abstract dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
.end method

.method public abstract getBaseline()I
.end method

.method public abstract getDefaultHeight()I
.end method

.method public abstract getDefaultWidth()I
.end method

.method public abstract getEditText(I)Landroid/widget/EditText;
.end method

.method public abstract getHour()I
.end method

.method public abstract getMinute()I
.end method

.method public abstract getNumberPicker(I)Lcom/samsung/android/widget/SemNumberPicker;
.end method

.method public abstract is24HourView()Z
.end method

.method public abstract isEditTextMode()Z
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
.end method

.method public abstract onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
.end method

.method public abstract onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
.end method

.method public abstract onRestoreInstanceState(Landroid/os/Parcelable;)V
.end method

.method public abstract onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
.end method

.method public abstract setCurrentLocale(Ljava/util/Locale;)V
.end method

.method public abstract setEditTextMode(Z)V
.end method

.method public abstract setEnabled(Z)V
.end method

.method public abstract setHour(I)V
.end method

.method public abstract setIs24HourView(Ljava/lang/Boolean;)V
.end method

.method public abstract setMinute(I)V
.end method

.method public abstract setOnEditTextModeChangedListener(Lcom/samsung/android/widget/SemTimePicker$OnEditTextModeChangedListener;)V
.end method

.method public abstract setOnTimeChangedListener(Lcom/samsung/android/widget/SemTimePicker$OnTimeChangedListener;)V
.end method

.method public abstract startAnimation(ILcom/samsung/android/widget/SemAnimationListener;)V
.end method
