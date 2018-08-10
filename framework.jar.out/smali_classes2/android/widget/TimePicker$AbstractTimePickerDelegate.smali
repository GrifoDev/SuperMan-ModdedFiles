.class abstract Landroid/widget/TimePicker$AbstractTimePickerDelegate;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Landroid/widget/TimePicker$TimePickerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractTimePickerDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;
    }
.end annotation


# instance fields
.field protected mAutoFillChangeListener:Landroid/widget/TimePicker$OnTimeChangedListener;

.field protected final mContext:Landroid/content/Context;

.field protected final mDelegator:Landroid/widget/TimePicker;

.field protected final mLocale:Ljava/util/Locale;

.field protected mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;


# direct methods
.method public constructor <init>(Landroid/widget/TimePicker;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Landroid/widget/TimePicker;

    iput-object p2, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public getDate()J
    .locals 4

    iget-object v1, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    invoke-static {v1}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->getHour()I

    move-result v1

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/Calendar;->set(II)V

    invoke-virtual {p0}, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->getMinute()I

    move-result v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/Calendar;->set(II)V

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method public setAutoFillChangeListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mAutoFillChangeListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    return-void
.end method

.method public setDate(J)V
    .locals 3

    iget-object v1, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    invoke-static {v1}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->setHour(I)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->setMinute(I)V

    return-void
.end method

.method public setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    return-void
.end method
