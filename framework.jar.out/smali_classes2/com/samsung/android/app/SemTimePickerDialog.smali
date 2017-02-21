.class public Lcom/samsung/android/app/SemTimePickerDialog;
.super Landroid/app/AlertDialog;
.source "SemTimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/samsung/android/widget/SemTimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/SemTimePickerDialog$1;,
        Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;
    }
.end annotation


# static fields
.field private static final HOUR:Ljava/lang/String; = "hour"

.field private static final IS_24_HOUR:Ljava/lang/String; = "is24hour"

.field private static final MINUTE:Ljava/lang/String; = "minute"

.field private static final isNovel:Z


# instance fields
.field private final mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mInitialHourOfDay:I

.field private final mInitialMinute:I

.field private final mIs24HourView:Z

.field private mIsStartAnimation:Z

.field private final mTimePicker:Lcom/samsung/android/widget/SemTimePicker;

.field private final mTimeSetCallback:Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/app/SemTimePickerDialog;)Lcom/samsung/android/widget/SemTimePicker;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/app/SemTimePickerDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mIsStartAnimation:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "novel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/SemTimePickerDialog;->isNovel:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 7

    const/4 v6, -0x2

    invoke-static {p1, p2}, Lcom/samsung/android/app/SemTimePickerDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {p0, p1, v4}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    new-instance v4, Lcom/samsung/android/app/SemTimePickerDialog$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/SemTimePickerDialog$1;-><init>(Lcom/samsung/android/app/SemTimePickerDialog;)V

    iput-object v4, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    iput-object p3, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mTimeSetCallback:Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;

    iput p4, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mInitialHourOfDay:I

    iput p5, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mInitialMinute:I

    iput-boolean p6, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mIs24HourView:Z

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090119

    const v4, 0x1090119

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x50

    invoke-virtual {v4, v5}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v6, v6}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x3e99999a    # 0.3f

    invoke-virtual {v4, v5}, Landroid/view/Window;->setDimAmount(F)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    const v4, 0x10405a8

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {p0, v5, v4, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/high16 v4, 0x1040000

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v6, v4, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const v4, 0x10204cd

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/widget/SemTimePicker;

    iput-object v4, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    iget-object v4, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    iget-boolean v5, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mIs24HourView:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemTimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    iget-object v4, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    iget v5, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mInitialHourOfDay:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemTimePicker;->setHour(I)V

    iget-object v4, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    iget v5, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mInitialMinute:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemTimePicker;->setMinute(I)V

    iget-object v4, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v4, p0}, Lcom/samsung/android/widget/SemTimePicker;->setOnTimeChangedListener(Lcom/samsung/android/widget/SemTimePicker$OnTimeChangedListener;)V

    invoke-direct {p0}, Lcom/samsung/android/app/SemTimePickerDialog;->updateTitle()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    iput-object v4, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/SemTimePickerDialog;-><init>(Landroid/content/Context;ILcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;IIZ)V

    return-void
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 1

    if-nez p1, :cond_0

    const v0, 0x103050e

    return v0

    :cond_0
    return p1
.end method

.method private updateTitle()V
    .locals 1

    const v0, 0x1040414

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setTitle(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mIsStartAnimation:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mTimeSetCallback:Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearFocus()V

    iget-object v0, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mTimeSetCallback:Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;

    iget-object v1, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    iget-object v2, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemTimePicker;->getHour()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemTimePicker;->getMinute()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;->onTimeSet(Lcom/samsung/android/widget/SemTimePicker;II)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_3
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mIsStartAnimation:Z

    iget-object v0, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    new-instance v1, Lcom/samsung/android/app/SemTimePickerDialog$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/SemTimePickerDialog$2;-><init>(Lcom/samsung/android/app/SemTimePickerDialog;)V

    const/16 v2, 0x11b

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/widget/SemTimePicker;->startAnimation(ILcom/samsung/android/widget/SemAnimationListener;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v2, "hour"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v2, "minute"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    const-string/jumbo v3, "is24hour"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/widget/SemTimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    iget-object v2, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v2, v0}, Lcom/samsung/android/widget/SemTimePicker;->setHour(I)V

    iget-object v2, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v2, v1}, Lcom/samsung/android/widget/SemTimePicker;->setMinute(I)V

    invoke-direct {p0}, Lcom/samsung/android/app/SemTimePickerDialog;->updateTitle()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "hour"

    iget-object v2, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemTimePicker;->getHour()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "minute"

    iget-object v2, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemTimePicker;->getMinute()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "is24hour"

    iget-object v2, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemTimePicker;->is24HourView()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public onTimeChanged(Lcom/samsung/android/widget/SemTimePicker;II)V
    .locals 0

    return-void
.end method

.method public updateTime(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemTimePicker;->setHour(I)V

    iget-object v0, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v0, p2}, Lcom/samsung/android/widget/SemTimePicker;->setMinute(I)V

    return-void
.end method
