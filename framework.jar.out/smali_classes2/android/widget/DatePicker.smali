.class public Landroid/widget/DatePicker;
.super Landroid/widget/FrameLayout;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DatePicker$AbstractDatePickerDelegate;,
        Landroid/widget/DatePicker$DatePickerDelegate;,
        Landroid/widget/DatePicker$OnDateChangedListener;,
        Landroid/widget/DatePicker$ValidationCallback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final MODE_CALENDAR:I = 0x2

.field public static final MODE_SPINNER:I = 0x1


# instance fields
.field private final mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

.field private final mMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/DatePicker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101035c

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0}, Landroid/widget/DatePicker;->getImportantForAutofill()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v6}, Landroid/widget/DatePicker;->setImportantForAutofill(I)V

    :cond_0
    sget-object v4, Lcom/android/internal/R$styleable;->DatePicker:[I

    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v4, 0x11

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/16 v4, 0x10

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00e9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Landroid/widget/DatePicker;->mMode:I

    :goto_0
    iget v4, p0, Landroid/widget/DatePicker;->mMode:I

    packed-switch v4, :pswitch_data_0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/DatePicker;->createSpinnerUIDelegate(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/widget/DatePicker$DatePickerDelegate;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/DatePicker;->setFirstDayOfWeek(I)V

    :cond_1
    iget-object v4, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    new-instance v5, Landroid/widget/-$Lambda$BV-ZMvzFTXSucX7TdTNW-nTaMgA;

    invoke-direct {v5, p0, p1}, Landroid/widget/-$Lambda$BV-ZMvzFTXSucX7TdTNW-nTaMgA;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Landroid/widget/DatePicker$DatePickerDelegate;->setAutoFillChangeListener(Landroid/widget/DatePicker$OnDateChangedListener;)V

    return-void

    :cond_2
    iput v3, p0, Landroid/widget/DatePicker;->mMode:I

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/DatePicker;->createCalendarUIDelegate(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/widget/DatePicker$DatePickerDelegate;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private createCalendarUIDelegate(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/widget/DatePicker$DatePickerDelegate;
    .locals 6

    new-instance v0, Landroid/widget/DatePickerCalendarDelegate;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/DatePickerCalendarDelegate;-><init>(Landroid/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-object v0
.end method

.method private createSpinnerUIDelegate(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/widget/DatePicker$DatePickerDelegate;
    .locals 6

    new-instance v0, Landroid/widget/DatePickerSpinnerDelegate;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/DatePickerSpinnerDelegate;-><init>(Landroid/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-object v0
.end method


# virtual methods
.method public autofill(Landroid/view/autofill/AutofillValue;)V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/DatePicker;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isDate()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/widget/DatePicker;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " could not be autofilled into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getDateValue()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Landroid/widget/DatePicker$DatePickerDelegate;->updateDate(J)V

    return-void
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/DatePicker$DatePickerDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/DatePicker;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setAutofillId(Landroid/view/autofill/AutofillId;)V

    invoke-virtual {p0, p1, p2}, Landroid/widget/DatePicker;->onProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    return-void
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

    invoke-virtual {p0, p1}, Landroid/widget/DatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAutofillType()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/DatePicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAutofillValue()Landroid/view/autofill/AutofillValue;
    .locals 2

    invoke-virtual {p0}, Landroid/widget/DatePicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->getDate()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillValue;->forDate(J)Landroid/view/autofill/AutofillValue;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCalendarView()Landroid/widget/CalendarView;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->getCalendarView()Landroid/widget/CalendarView;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarViewShown()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->getCalendarViewShown()Z

    move-result v0

    return v0
.end method

.method public getDayOfMonth()I
    .locals 1

    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->getDayOfMonth()I

    move-result v0

    return v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->getFirstDayOfWeek()I

    move-result v0

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->getMaxDate()Landroid/icu/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->getMinDate()Landroid/icu/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Landroid/widget/DatePicker;->mMode:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->getMonth()I

    move-result v0

    return v0
.end method

.method public getSpinnersShown()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->getSpinnersShown()Z

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 1

    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->getYear()I

    move-result v0

    return v0
.end method

.method public init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/DatePicker$DatePickerDelegate;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->isEnabled()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$-android_widget_DatePicker_6867(Landroid/content/Context;Landroid/widget/DatePicker;III)V
    .locals 2

    const-class v1, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/DatePicker$DatePickerDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/DatePicker$DatePickerDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Landroid/view/View$BaseSavedState;

    invoke-virtual {v0}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v1, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v1, v0}, Landroid/widget/DatePicker$DatePickerDelegate;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v1, v0}, Landroid/widget/DatePicker$DatePickerDelegate;->onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v1

    return-object v1
.end method

.method public setCalendarViewShown(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/DatePicker$DatePickerDelegate;->setCalendarViewShown(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->isEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/DatePicker$DatePickerDelegate;->setEnabled(Z)V

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x7

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "firstDayOfWeek must be between 1 and 7"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/DatePicker$DatePickerDelegate;->setFirstDayOfWeek(I)V

    return-void
.end method

.method public setMaxDate(J)V
    .locals 1

    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1, p2}, Landroid/widget/DatePicker$DatePickerDelegate;->setMaxDate(J)V

    return-void
.end method

.method public setMinDate(J)V
    .locals 1

    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1, p2}, Landroid/widget/DatePicker$DatePickerDelegate;->setMinDate(J)V

    return-void
.end method

.method public setOnDateChangedListener(Landroid/widget/DatePicker$OnDateChangedListener;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/DatePicker$DatePickerDelegate;->setOnDateChangedListener(Landroid/widget/DatePicker$OnDateChangedListener;)V

    return-void
.end method

.method public setSpinnersShown(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/DatePicker$DatePickerDelegate;->setSpinnersShown(Z)V

    return-void
.end method

.method public setValidationCallback(Landroid/widget/DatePicker$ValidationCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/DatePicker$DatePickerDelegate;->setValidationCallback(Landroid/widget/DatePicker$ValidationCallback;)V

    return-void
.end method

.method public updateDate(III)V
    .locals 1

    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/DatePicker$DatePickerDelegate;->updateDate(III)V

    return-void
.end method
