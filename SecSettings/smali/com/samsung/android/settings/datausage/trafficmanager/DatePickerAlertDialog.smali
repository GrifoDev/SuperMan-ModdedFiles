.class public Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;
.super Lcom/samsung/android/app/SemDatePickerDialog;
.source "DatePickerAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$1;,
        Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$2;,
        Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$3;,
        Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$OnDateSetListener;
    }
.end annotation


# instance fields
.field private final mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private final mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

.field private final mDateSetListener:Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$OnDateSetListener;

.field mEndTime:J

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field mStartTime:J

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mToast:Landroid/widget/Toast;

.field private final mValidationCallback:Lcom/samsung/android/widget/SemDatePicker$ValidationCallback;

.field final themeContext:Landroid/content/Context;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;)Lcom/samsung/android/widget/SemDatePicker;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;)Landroid/widget/TabHost;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$OnDateSetListener;IIII)V
    .locals 9

    const/4 v2, 0x0

    const/4 v8, -0x2

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/SemDatePickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/app/SemDatePickerDialog$OnDateSetListener;III)V

    iput-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mToast:Landroid/widget/Toast;

    new-instance v0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$1;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$2;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    new-instance v0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$3;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mValidationCallback:Lcom/samsung/android/widget/SemDatePicker$ValidationCallback;

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->initialize()V

    iput-object p2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mDateSetListener:Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$OnDateSetListener;

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->themeContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->themeContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v0, 0x7f0d00b5

    invoke-virtual {v6, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->setView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v8, v8}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->themeContext:Landroid/content/Context;

    const v1, 0x7f1205f9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->themeContext:Landroid/content/Context;

    const v1, 0x7f1205f6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v8, v0, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const v0, 0x7f0a07a7

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/widget/SemDatePicker;

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v0, p3, p4, p5, p0}, Lcom/samsung/android/widget/SemDatePicker;->init(IIILcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mValidationCallback:Lcom/samsung/android/widget/SemDatePicker$ValidationCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemDatePicker;->setValidationCallback(Lcom/samsung/android/widget/SemDatePicker$ValidationCallback;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->themeContext:Landroid/content/Context;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->initTab(Landroid/view/View;)V

    return-void
.end method

.method private initTab(Landroid/view/View;)V
    .locals 7

    const v6, 0x1020011

    const v4, 0x7f0a037f

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TabHost;

    iput-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mTabHost:Landroid/widget/TabHost;

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->setup()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f120904

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v3, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f120903

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4, v0}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mTabHost:Landroid/widget/TabHost;

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    return-void
.end method

.method private initialize()V
    .locals 11

    const/4 v10, 0x5

    const/4 v7, 0x0

    const-string/jumbo v3, "DatePickerAlertDialog"

    const-string/jumbo v6, "initialize()"

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v3, 0xb

    invoke-virtual {v0, v3, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    invoke-virtual {v0, v3, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xd

    invoke-virtual {v0, v3, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xe

    invoke-virtual {v0, v3, v7}, Ljava/util/Calendar;->set(II)V

    const-string/jumbo v3, "DatePickerAlertDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "initialize(), the current time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mStartTime:J

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v10, v3}, Ljava/util/Calendar;->set(II)V

    const-string/jumbo v3, "DatePickerAlertDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "init end month:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "DatePickerAlertDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "init end day:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mEndTime:J

    return-void
.end method


# virtual methods
.method public getDatePicker()Lcom/samsung/android/widget/SemDatePicker;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->getWindow()Landroid/view/Window;

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
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mDateSetListener:Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$OnDateSetListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemDatePicker;->clearFocus()V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mDateSetListener:Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$OnDateSetListener;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    iget-wide v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mStartTime:J

    iget-wide v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mEndTime:J

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$OnDateSetListener;->onDateSet(Lcom/samsung/android/widget/SemDatePicker;JJ)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->cancel()V

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

    invoke-super {p0, p1}, Lcom/samsung/android/app/SemDatePickerDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public onDateChanged(Lcom/samsung/android/widget/SemDatePicker;III)V
    .locals 11

    const/4 v10, 0x1

    const/4 v7, 0x5

    const/4 v9, -0x1

    const/4 v8, 0x0

    const-string/jumbo v4, "DatePickerAlertDialog"

    const-string/jumbo v5, "onDateChanged()"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "DatePickerAlertDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "year:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " month:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " day:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v10, p2}, Ljava/util/Calendar;->set(II)V

    const/4 v4, 0x2

    invoke-virtual {v0, v4, p3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v7, p4}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xb

    invoke-virtual {v0, v4, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    invoke-virtual {v0, v4, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xd

    invoke-virtual {v0, v4, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xe

    invoke-virtual {v0, v4, v8}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f120904

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f120904

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mTabHost:Landroid/widget/TabHost;

    if-eqz v4, :cond_0

    const-string/jumbo v4, "DatePickerAlertDialog"

    const-string/jumbo v5, "mTabHost is not null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string/jumbo v4, "DatePickerAlertDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "currentTab is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "DatePickerAlertDialog"

    const-string/jumbo v5, "current time is start time"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mStartTime:J

    :goto_0
    iget-wide v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mStartTime:J

    iget-wide v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mEndTime:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_5

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f12096a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->themeContext:Landroid/content/Context;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mToast:Landroid/widget/Toast;

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->themeContext:Landroid/content/Context;

    invoke-static {v4, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mToast:Landroid/widget/Toast;

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_2
    const-string/jumbo v4, "DatePickerAlertDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mStartTime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mStartTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", mEndTime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mEndTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    add-int/lit8 v4, p4, 0x1

    invoke-virtual {v0, v7, v4}, Ljava/util/Calendar;->set(II)V

    const-string/jumbo v4, "DatePickerAlertDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "current time is end time,  month:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "DatePickerAlertDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "current time is end time, day:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mEndTime:J

    goto/16 :goto_0

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mToast:Landroid/widget/Toast;

    invoke-virtual {v4, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/samsung/android/app/SemDatePickerDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v3, "year"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "month"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v3, "day"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v3, v2, v1, v0, p0}, Lcom/samsung/android/widget/SemDatePicker;->init(IIILcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/app/SemDatePickerDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "year"

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemDatePicker;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "month"

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemDatePicker;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "day"

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemDatePicker;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public updateDate(III)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/widget/SemDatePicker;->updateDate(III)V

    return-void
.end method
