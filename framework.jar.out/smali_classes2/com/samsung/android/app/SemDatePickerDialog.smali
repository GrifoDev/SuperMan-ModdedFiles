.class public Lcom/samsung/android/app/SemDatePickerDialog;
.super Landroid/app/AlertDialog;
.source "SemDatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/SemDatePickerDialog$1;,
        Lcom/samsung/android/app/SemDatePickerDialog$2;,
        Lcom/samsung/android/app/SemDatePickerDialog$OnDateSetListener;
    }
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "day"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field private final mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private final mCalendar:Ljava/util/Calendar;

.field private final mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

.field private final mDateSetListener:Lcom/samsung/android/app/SemDatePickerDialog$OnDateSetListener;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mValidationCallback:Lcom/samsung/android/widget/SemDatePicker$ValidationCallback;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/app/SemDatePickerDialog;)Lcom/samsung/android/widget/SemDatePicker;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/SemDatePickerDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/samsung/android/app/SemDatePickerDialog$OnDateSetListener;III)V
    .locals 6

    const/4 v5, -0x2

    invoke-static {p1, p2}, Lcom/samsung/android/app/SemDatePickerDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {p0, p1, v3}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    new-instance v3, Lcom/samsung/android/app/SemDatePickerDialog$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/SemDatePickerDialog$1;-><init>(Lcom/samsung/android/app/SemDatePickerDialog;)V

    iput-object v3, p0, Lcom/samsung/android/app/SemDatePickerDialog;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v3, Lcom/samsung/android/app/SemDatePickerDialog$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/SemDatePickerDialog$2;-><init>(Lcom/samsung/android/app/SemDatePickerDialog;)V

    iput-object v3, p0, Lcom/samsung/android/app/SemDatePickerDialog;->mValidationCallback:Lcom/samsung/android/widget/SemDatePicker$ValidationCallback;

    iput-object p3, p0, Lcom/samsung/android/app/SemDatePickerDialog;->mDateSetListener:Lcom/samsung/android/app/SemDatePickerDialog$OnDateSetListener;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/SemDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x10900fd

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x50

    invoke-virtual {v3, v4}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x3e99999a    # 0.3f

    invoke-virtual {v3, v4}, Landroid/view/Window;->setDimAmount(F)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    const v3, 0x10405a8

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {p0, v4, v3, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/high16 v3, 0x1040000

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v5, v3, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const v3, 0x1020499

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/widget/SemDatePicker;

    iput-object v3, p0, Lcom/samsung/android/app/SemDatePickerDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    iget-object v3, p0, Lcom/samsung/android/app/SemDatePickerDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v3, p4, p5, p6, p0}, Lcom/samsung/android/widget/SemDatePicker;->init(IIILcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;)V

    iget-object v3, p0, Lcom/samsung/android/app/SemDatePickerDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    iget-object v4, p0, Lcom/samsung/android/app/SemDatePickerDialog;->mValidationCallback:Lcom/samsung/android/widget/SemDatePicker$ValidationCallback;

    invoke-virtual {v3, v4}, Lcom/samsung/android/widget/SemDatePicker;->setValidationCallback(Lcom/samsung/android/widget/SemDatePicker$ValidationCallback;)V

    const-string/jumbo v3, "input_method"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    iput-object v3, p0, Lcom/samsung/android/app/SemDatePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/SemDatePickerDialog$OnDateSetListener;III)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/SemDatePickerDialog;-><init>(Landroid/content/Context;ILcom/samsung/android/app/SemDatePickerDialog$OnDateSetListener;III)V

    return-void
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 1

    if-nez p1, :cond_0

    const v0, 0x103050c

    return v0

    :cond_0
    return p1
.end method

.method private updateTitle(III)V
    .locals 0

    return-void
.end method


# virtual methods
.method public getDatePicker()Lcom/samsung/android/widget/SemDatePicker;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/SemDatePickerDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/SemDatePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/SemDatePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    packed-switch p2, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/SemDatePickerDialog;->mDateSetListener:Lcom/samsung/android/app/SemDatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/SemDatePickerDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearFocus()V

    iget-object v0, p0, Lcom/samsung/android/app/SemDatePickerDialog;->mDateSetListener:Lcom/samsung/android/app/SemDatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Lcom/samsung/android/app/SemDatePickerDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    iget-object v2, p0, Lcom/samsung/android/app/SemDatePickerDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemDatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/SemDatePickerDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemDatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/app/SemDatePickerDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v4}, Lcom/samsung/android/widget/SemDatePicker;->getDayOfMonth()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/SemDatePickerDialog$OnDateSetListener;->onDateSet(Lcom/samsung/android/widget/SemDatePicker;III)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/SemDatePickerDialog;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/SemDatePickerDialog;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public onDateChanged(Lcom/samsung/android/widget/SemDatePicker;III)V
    .locals 0

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v3, "year"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "month"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v3, "day"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/app/SemDatePickerDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v3, v2, v1, v0, p0}, Lcom/samsung/android/widget/SemDatePicker;->init(IIILcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "year"

    iget-object v2, p0, Lcom/samsung/android/app/SemDatePickerDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemDatePicker;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "month"

    iget-object v2, p0, Lcom/samsung/android/app/SemDatePickerDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemDatePicker;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "day"

    iget-object v2, p0, Lcom/samsung/android/app/SemDatePickerDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemDatePicker;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public updateDate(III)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/SemDatePickerDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/widget/SemDatePicker;->updateDate(III)V

    return-void
.end method
