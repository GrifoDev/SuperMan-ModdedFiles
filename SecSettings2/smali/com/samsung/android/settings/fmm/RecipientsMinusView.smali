.class public Lcom/samsung/android/settings/fmm/RecipientsMinusView;
.super Landroid/widget/LinearLayout;
.source "RecipientsMinusView.java"


# static fields
.field private static SETTINGS_FMM_SIM_CHANGE_ADDED_NUM:I

.field private static SETTINGS_FMM_SIM_CHANGE_ALERT_REMOVE:I


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->SETTINGS_FMM_SIM_CHANGE_ADDED_NUM:I

    return v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->SETTINGS_FMM_SIM_CHANGE_ALERT_REMOVE:I

    return v0
.end method

.method static synthetic -set0(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->SETTINGS_FMM_SIM_CHANGE_ADDED_NUM:I

    return p0
.end method

.method static synthetic -set1(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->SETTINGS_FMM_SIM_CHANGE_ALERT_REMOVE:I

    return p0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/fmm/RecipientsMinusView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->remove()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->mContext:Landroid/content/Context;

    return-void
.end method

.method private remove()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPhoneNumber()Ljava/lang/String;
    .locals 2

    const v1, 0x7f1103e4

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v2, 0x7f11044c

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f1103e4

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    new-instance v2, Lcom/samsung/android/settings/fmm/RecipientsMinusView$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/fmm/RecipientsMinusView$1;-><init>(Lcom/samsung/android/settings/fmm/RecipientsMinusView;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v2, Lcom/samsung/android/settings/fmm/RecipientsMinusView$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/fmm/RecipientsMinusView$2;-><init>(Lcom/samsung/android/settings/fmm/RecipientsMinusView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setFocus(Z)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    const v2, 0x7f1103e4

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setSelection(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 2

    const v1, 0x7f1103e4

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
