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

    .prologue
    .line 72
    const-string/jumbo v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "novel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/SemTimePickerDialog;->isNovel:Z

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I
    .param p6, "is24HourView"    # Z

    .prologue
    const/4 v6, -0x2

    .line 118
    invoke-static {p1, p2}, Lcom/samsung/android/app/SemTimePickerDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {p0, p1, v4}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 55
    new-instance v4, Lcom/samsung/android/app/SemTimePickerDialog$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/SemTimePickerDialog$1;-><init>(Lcom/samsung/android/app/SemTimePickerDialog;)V

    .line 54
    iput-object v4, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 120
    iput-object p3, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mTimeSetCallback:Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;

    .line 121
    iput p4, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mInitialHourOfDay:I

    .line 122
    iput p5, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mInitialMinute:I

    .line 123
    iput-boolean p6, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mIs24HourView:Z

    .line 125
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 126
    .local v2, "themeContext":Landroid/content/Context;
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 127
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x1090119

    .line 129
    .local v1, "layoutResId":I
    const v4, 0x1090119

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 130
    .local v3, "view":Landroid/view/View;
    invoke-virtual {p0, v3}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 131
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x50

    invoke-virtual {v4, v5}, Landroid/view/Window;->setGravity(I)V

    .line 132
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v6, v6}, Landroid/view/Window;->setLayout(II)V

    .line 133
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x3e99999a    # 0.3f

    invoke-virtual {v4, v5}, Landroid/view/Window;->setDimAmount(F)V

    .line 134
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 135
    const v4, 0x10405a8

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {p0, v5, v4, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 136
    const/high16 v4, 0x1040000

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v6, v4, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 138
    const v4, 0x10204cd

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/widget/SemTimePicker;

    iput-object v4, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    .line 139
    iget-object v4, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    iget-boolean v5, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mIs24HourView:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemTimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 140
    iget-object v4, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    iget v5, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mInitialHourOfDay:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemTimePicker;->setHour(I)V

    .line 141
    iget-object v4, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    iget v5, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mInitialMinute:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemTimePicker;->setMinute(I)V

    .line 142
    iget-object v4, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v4, p0}, Lcom/samsung/android/widget/SemTimePicker;->setOnTimeChangedListener(Lcom/samsung/android/widget/SemTimePicker$OnTimeChangedListener;)V

    .line 144
    invoke-direct {p0}, Lcom/samsung/android/app/SemTimePickerDialog;->updateTitle()V

    .line 146
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    iput-object v4, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;
    .param p3, "hourOfDay"    # I
    .param p4, "minute"    # I
    .param p5, "is24HourView"    # Z

    .prologue
    .line 97
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/SemTimePickerDialog;-><init>(Landroid/content/Context;ILcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;IIZ)V

    .line 96
    return-void
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I

    .prologue
    .line 101
    if-nez p1, :cond_0

    .line 102
    const v0, 0x103050e

    return v0

    .line 104
    :cond_0
    return p1
.end method

.method private updateTitle()V
    .locals 1

    .prologue
    .line 171
    const v0, 0x1040414

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setTitle(I)V

    .line 170
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x0

    .line 196
    packed-switch p2, :pswitch_data_0

    .line 195
    :goto_0
    return-void

    .line 198
    :pswitch_0
    iget-boolean v0, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mIsStartAnimation:Z

    if-eqz v0, :cond_0

    .line 199
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mTimeSetCallback:Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearFocus()V

    .line 203
    iget-object v0, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mTimeSetCallback:Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;

    iget-object v1, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    iget-object v2, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemTimePicker;->getHour()I

    move-result v2

    .line 204
    iget-object v3, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemTimePicker;->getMinute()I

    move-result v3

    .line 203
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;->onTimeSet(Lcom/samsung/android/widget/SemTimePicker;II)V

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_2

    .line 207
    iget-object v0, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 208
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 207
    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 210
    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 213
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_3

    .line 214
    iget-object v0, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 215
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 214
    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 217
    :cond_3
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    goto :goto_0

    .line 196
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 156
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 157
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mIsStartAnimation:Z

    .line 159
    iget-object v0, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    new-instance v1, Lcom/samsung/android/app/SemTimePickerDialog$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/SemTimePickerDialog$2;-><init>(Lcom/samsung/android/app/SemTimePickerDialog;)V

    const/16 v2, 0x11b

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/widget/SemTimePicker;->startAnimation(ILcom/samsung/android/widget/SemAnimationListener;)V

    .line 151
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 255
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 256
    const-string/jumbo v2, "hour"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 257
    .local v0, "hour":I
    const-string/jumbo v2, "minute"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 258
    .local v1, "minute":I
    iget-object v2, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    const-string/jumbo v3, "is24hour"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/widget/SemTimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 259
    iget-object v2, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v2, v0}, Lcom/samsung/android/widget/SemTimePicker;->setHour(I)V

    .line 260
    iget-object v2, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v2, v1}, Lcom/samsung/android/widget/SemTimePicker;->setMinute(I)V

    .line 262
    invoke-direct {p0}, Lcom/samsung/android/app/SemTimePickerDialog;->updateTitle()V

    .line 254
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 240
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 241
    .local v0, "state":Landroid/os/Bundle;
    const-string/jumbo v1, "hour"

    iget-object v2, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemTimePicker;->getHour()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 242
    const-string/jumbo v1, "minute"

    iget-object v2, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemTimePicker;->getMinute()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 243
    const-string/jumbo v1, "is24hour"

    iget-object v2, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemTimePicker;->is24HourView()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 244
    return-object v0
.end method

.method public onTimeChanged(Lcom/samsung/android/widget/SemTimePicker;II)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/widget/SemTimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 182
    return-void
.end method

.method public updateTime(II)V
    .locals 1
    .param p1, "hourOfDay"    # I
    .param p2, "minuteOfHour"    # I

    .prologue
    .line 229
    iget-object v0, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemTimePicker;->setHour(I)V

    .line 230
    iget-object v0, p0, Lcom/samsung/android/app/SemTimePickerDialog;->mTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v0, p2}, Lcom/samsung/android/widget/SemTimePicker;->setMinute(I)V

    .line 228
    return-void
.end method
