.class public Landroid/widget/TimePicker;
.super Landroid/widget/FrameLayout;
.source "TimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TimePicker$AbstractTimePickerDelegate;,
        Landroid/widget/TimePicker$OnTimeChangedListener;,
        Landroid/widget/TimePicker$TimePickerDelegate;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final MODE_CLOCK:I = 0x2

.field public static final MODE_SPINNER:I = 0x1


# instance fields
.field private final mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

.field private final mMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/widget/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/TimePicker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101049d

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getImportantForAutofill()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/TimePicker;->setImportantForAutofill(I)V

    :cond_0
    sget-object v0, Lcom/android/internal/R$styleable;->TimePicker:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    const/16 v0, 0xa

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    const/16 v0, 0x8

    invoke-virtual {v6, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v0, 0x2

    if-ne v8, v0, :cond_1

    if-eqz v7, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0126

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/widget/TimePicker;->mMode:I

    :goto_0
    iget v0, p0, Landroid/widget/TimePicker;->mMode:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroid/widget/TimePickerSpinnerDelegate;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/TimePickerSpinnerDelegate;-><init>(Landroid/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    :goto_1
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    new-instance v1, Landroid/widget/-$Lambda$6tyI8UILr_8rz_HNI0sixHbWoHI;

    invoke-direct {v1, p0, p1}, Landroid/widget/-$Lambda$6tyI8UILr_8rz_HNI0sixHbWoHI;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Landroid/widget/TimePicker$TimePickerDelegate;->setAutoFillChangeListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    return-void

    :cond_1
    iput v8, p0, Landroid/widget/TimePicker;->mMode:I

    goto :goto_0

    :pswitch_0
    new-instance v0, Landroid/widget/TimePickerClockDelegate;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/TimePickerClockDelegate;-><init>(Landroid/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method static getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v1, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    iget-object v3, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_0

    iget-object v3, v0, Llibcore/icu/LocaleData;->narrowAm:Ljava/lang/String;

    :goto_0
    aput-object v3, v2, v4

    iget-object v3, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_1

    iget-object v3, v0, Llibcore/icu/LocaleData;->narrowPm:Ljava/lang/String;

    :goto_1
    aput-object v3, v2, v5

    return-object v2

    :cond_0
    iget-object v3, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object v3, v3, v4

    goto :goto_0

    :cond_1
    iget-object v3, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object v3, v3, v5

    goto :goto_1
.end method


# virtual methods
.method public autofill(Landroid/view/autofill/AutofillValue;)V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/TimePicker;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isDate()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/widget/TimePicker;->LOG_TAG:Ljava/lang/String;

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
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getDateValue()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Landroid/widget/TimePicker$TimePickerDelegate;->setDate(J)V

    return-void
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/TimePicker$TimePickerDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setAutofillId(Landroid/view/autofill/AutofillId;)V

    invoke-virtual {p0, p1, p2}, Landroid/widget/TimePicker;->onProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAmView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0}, Landroid/widget/TimePicker$TimePickerDelegate;->getAmView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getAutofillType()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TimePicker;->isEnabled()Z

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

    invoke-virtual {p0}, Landroid/widget/TimePicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0}, Landroid/widget/TimePicker$TimePickerDelegate;->getDate()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillValue;->forDate(J)Landroid/view/autofill/AutofillValue;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBaseline()I
    .locals 1

    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0}, Landroid/widget/TimePicker$TimePickerDelegate;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getHour()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getMinute()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getHour()I
    .locals 1

    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0}, Landroid/widget/TimePicker$TimePickerDelegate;->getHour()I

    move-result v0

    return v0
.end method

.method public getHourView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0}, Landroid/widget/TimePicker$TimePickerDelegate;->getHourView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMinute()I
    .locals 1

    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0}, Landroid/widget/TimePicker$TimePickerDelegate;->getMinute()I

    move-result v0

    return v0
.end method

.method public getMinuteView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0}, Landroid/widget/TimePicker$TimePickerDelegate;->getMinuteView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Landroid/widget/TimePicker;->mMode:I

    return v0
.end method

.method public getPmView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0}, Landroid/widget/TimePicker$TimePickerDelegate;->getPmView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public is24HourView()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0}, Landroid/widget/TimePicker$TimePickerDelegate;->is24Hour()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0}, Landroid/widget/TimePicker$TimePickerDelegate;->isEnabled()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$-android_widget_TimePicker_4943(Landroid/content/Context;Landroid/widget/TimePicker;II)V
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

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Landroid/view/View$BaseSavedState;

    invoke-virtual {v0}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v1, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v1, v0}, Landroid/widget/TimePicker$TimePickerDelegate;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v1, v0}, Landroid/widget/TimePicker$TimePickerDelegate;->onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v1

    return-object v1
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TimePicker;->setHour(I)V

    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TimePicker;->setMinute(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/TimePicker$TimePickerDelegate;->setEnabled(Z)V

    return-void
.end method

.method public setHour(I)V
    .locals 3

    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    const/4 v1, 0x0

    const/16 v2, 0x17

    invoke-static {p1, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/TimePicker$TimePickerDelegate;->setHour(I)V

    return-void
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/TimePicker$TimePickerDelegate;->setIs24Hour(Z)V

    return-void
.end method

.method public setMinute(I)V
    .locals 3

    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    const/4 v1, 0x0

    const/16 v2, 0x3b

    invoke-static {p1, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/TimePicker$TimePickerDelegate;->setMinute(I)V

    return-void
.end method

.method public setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/TimePicker$TimePickerDelegate;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    return-void
.end method

.method public validateInput()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0}, Landroid/widget/TimePicker$TimePickerDelegate;->validateInput()Z

    move-result v0

    return v0
.end method
