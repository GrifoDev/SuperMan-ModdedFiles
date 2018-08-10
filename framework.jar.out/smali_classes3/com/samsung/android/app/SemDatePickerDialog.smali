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
    .locals 7

    const/4 v5, 0x0

    const/4 v6, -0x2

    invoke-static {p1, p2}, Lcom/samsung/android/app/SemDatePickerDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {p0, p1, v4}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    new-instance v4, Lcom/samsung/android/app/SemDatePickerDialog$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/SemDatePickerDialog$1;-><init>(Lcom/samsung/android/app/SemDatePickerDialog;)V

    iput-object v4, p0, Lcom/samsung/android/app/SemDatePickerDialog;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v4, Lcom/samsung/android/app/SemDatePickerDialog$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/SemDatePickerDialog$2;-><init>(Lcom/samsung/android/app/SemDatePickerDialog;)V

    iput-object v4, p0, Lcom/samsung/android/app/SemDatePickerDialog;->mValidationCallback:Lcom/samsung/android/widget/SemDatePicker$ValidationCallback;

    iput-object p3, p0, Lcom/samsung/android/app/SemDatePickerDialog;->mDateSetListener:Lcom/samsung/android/app/SemDatePickerDialog$OnDateSetListener;

    invoke-virtual {p0}, Lcom/samsung/android/app/SemDatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x1090103

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/SemDatePickerDialog;->setView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/SemDatePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x50

    invoke-virtual {v4, v5}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/SemDatePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v6, v6}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p0}, Lcom/samsung/android/app/SemDatePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x3e99999a    # 0.3f

    invoke-virtual {v4, v5}, Landroid/view/Window;->setDimAmount(F)V

    invoke-virtual {p0}, Lcom/samsung/android/app/SemDatePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    const v4, 0x10402ce

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {p0, v5, v4, p0}, Lcom/samsung/android/app/SemDatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/high16 v4, 0x1040000

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v6, v4, p0}, Lcom/samsung/android/app/SemDatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const v4, 0x1020477

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/widget/SemDatePicker;

    iput-object v4, p0, Lcom/samsung/android/app/SemDatePickerDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    iget-object v4, p0, Lcom/samsung/android/app/SemDatePickerDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v4, p4, p5, p6, p0}, Lcom/samsung/android/widget/SemDatePicker;->init(IIILcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;)V

    iget-object v4, p0, Lcom/samsung/android/app/SemDatePickerDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    iget-object v5, p0, Lcom/samsung/android/app/SemDatePickerDialog;->mValidationCallback:Lcom/samsung/android/widget/SemDatePicker$ValidationCallback;

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemDatePicker;->setValidationCallback(Lcom/samsung/android/widget/SemDatePicker$ValidationCallback;)V

    const-string/jumbo v4, "input_method"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    iput-object v4, p0, Lcom/samsung/android/app/SemDatePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p1}, Lcom/samsung/android/app/SemDatePickerDialog;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/SemDatePickerDialog;->isFreeFormWindow(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/SemDatePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    const v5, 0x1030378

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :cond_0
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

.method private isFreeFormWindow(Landroid/app/Activity;)Z
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowStackId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    return v3

    :cond_0
    return v3
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 4

    if-nez p1, :cond_1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1110053

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v0, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_0

    const v1, 0x103037e

    :goto_0
    return v1

    :cond_0
    const v1, 0x103037c

    goto :goto_0

    :cond_1
    return p1
.end method

.method private static scanForActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    return-object p0

    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/SemDatePickerDialog;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
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

    invoke-virtual {p0}, Lcom/samsung/android/app/SemDatePickerDialog;->getWindow()Landroid/view/Window;

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

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemDatePicker;->clearFocus()V

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
    invoke-virtual {p0}, Lcom/samsung/android/app/SemDatePickerDialog;->cancel()V

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

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/SemDatePickerDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/SemDatePickerDialog;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/SemDatePickerDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/SemDatePickerDialog;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

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

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "month"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v3, "day"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

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

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "month"

    iget-object v2, p0, Lcom/samsung/android/app/SemDatePickerDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemDatePicker;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "day"

    iget-object v2, p0, Lcom/samsung/android/app/SemDatePickerDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemDatePicker;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public updateDate(III)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/SemDatePickerDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/widget/SemDatePicker;->updateDate(III)V

    return-void
.end method
