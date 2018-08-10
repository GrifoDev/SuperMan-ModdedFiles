.class abstract Landroid/widget/DatePicker$AbstractDatePickerDelegate;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/widget/DatePicker$DatePickerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractDatePickerDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;
    }
.end annotation


# instance fields
.field protected mAutoFillChangeListener:Landroid/widget/DatePicker$OnDateChangedListener;

.field protected mContext:Landroid/content/Context;

.field protected mCurrentDate:Landroid/icu/util/Calendar;

.field protected mCurrentLocale:Ljava/util/Locale;

.field protected mDelegator:Landroid/widget/DatePicker;

.field protected mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

.field protected mValidationCallback:Landroid/widget/DatePicker$ValidationCallback;


# direct methods
.method public constructor <init>(Landroid/widget/DatePicker;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Landroid/widget/DatePicker;

    iput-object p2, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method


# virtual methods
.method public getDate()J
    .locals 2

    iget-object v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getFormattedCurrentDate()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const/16 v1, 0x16

    invoke-static {v0, v2, v3, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onLocaleChanged(Ljava/util/Locale;)V
    .locals 0

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->getFormattedCurrentDate()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onValidationChanged(Z)V
    .locals 1

    iget-object v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mValidationCallback:Landroid/widget/DatePicker$ValidationCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mValidationCallback:Landroid/widget/DatePicker$ValidationCallback;

    invoke-interface {v0, p1}, Landroid/widget/DatePicker$ValidationCallback;->onValidationChanged(Z)V

    :cond_0
    return-void
.end method

.method public setAutoFillChangeListener(Landroid/widget/DatePicker$OnDateChangedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mAutoFillChangeListener:Landroid/widget/DatePicker$OnDateChangedListener;

    return-void
.end method

.method protected setCurrentLocale(Ljava/util/Locale;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->onLocaleChanged(Ljava/util/Locale;)V

    :cond_0
    return-void
.end method

.method public setOnDateChangedListener(Landroid/widget/DatePicker$OnDateChangedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    return-void
.end method

.method public setValidationCallback(Landroid/widget/DatePicker$ValidationCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mValidationCallback:Landroid/widget/DatePicker$ValidationCallback;

    return-void
.end method

.method public updateDate(J)V
    .locals 5

    iget-object v1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-static {v1}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->updateDate(III)V

    return-void
.end method
