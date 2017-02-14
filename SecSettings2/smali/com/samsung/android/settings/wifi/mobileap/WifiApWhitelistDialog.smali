.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;
.super Landroid/app/AlertDialog;
.source "WifiApWhitelistDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$1;,
        Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$2;,
        Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;,
        Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field focusListener:Landroid/view/View$OnFocusChangeListener;

.field private mButtonCancel:Landroid/widget/Button;

.field private mButtonOk:Landroid/widget/Button;

.field private mDeviceName:Ljava/lang/String;

.field private mEtDeviceName:Landroid/widget/EditText;

.field private mEtMac:Landroid/widget/LinearLayout;

.field private mEtMacArray:[Landroid/widget/EditText;

.field private mEtMacId:[I

.field private mIsTablet:Z

.field private mIsTalkBackEnabled:Z

.field private mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMac:Ljava/lang/String;

.field private mMacFilter:Landroid/text/InputFilter;

.field private mSelectedFontSize:I

.field private mTempSsid:Ljava/lang/String;

.field private mTextNoChange:Ljava/lang/Boolean;

.field private mTvMac:Landroid/widget/TextView;

.field private mType:I

.field private mView:Landroid/view/View;

.field nameWatcher:Landroid/text/TextWatcher;

.field private sToast:Landroid/widget/Toast;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mButtonCancel:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mButtonOk:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)[Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mIsTalkBackEnabled:Z

    return v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mTempSsid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mTextNoChange:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->sToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mTempSsid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mTextNoChange:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->sToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->validate()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "WifiApWhitelistDialog"

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    const/4 v2, 0x6

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mTextNoChange:Ljava/lang/Boolean;

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mIsTalkBackEnabled:Z

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacId:[I

    new-array v0, v2, [Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mMacFilter:Landroid/text/InputFilter;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->focusListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->nameWatcher:Landroid/text/TextWatcher;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->context:Landroid/content/Context;

    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mDeviceName:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mMac:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    const/16 v0, 0x11

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mSelectedFontSize:I

    return-void

    :array_0
    .array-data 4
        0x7f110787
        0x7f110788
        0x7f110789
        0x7f11078a
        0x7f11078b
        0x7f11078c
    .end array-data
.end method

.method private validate()V
    .locals 5

    const/4 v4, 0x2

    const/4 v0, 0x0

    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    const/4 v0, 0x1

    :cond_0
    :goto_0
    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    if-ne v2, v4, :cond_2

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x6

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v2, v4, :cond_5

    const/4 v0, 0x0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mButtonOk:Landroid/widget/Button;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mButtonOk:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mButtonOk:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setFocusable(Z)V

    :cond_3
    return-void

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getMac()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    const v12, 0x7f110787

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/16 v9, 0x8

    const/4 v8, -0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040339

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setView(Landroid/view/View;)V

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setInverseBackgroundForced(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    const v5, 0x7f11070b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->nameWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    const v5, 0x7f110643

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMac:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    const v5, 0x7f11078d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mTvMac:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mIsTablet:Z

    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x6

    if-ge v1, v4, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacId:[I

    aget v6, v6, v1

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    aput-object v4, v5, v1

    const-string/jumbo v4, "BRI"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "CHN"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "CHM"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "CHU"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "CTC"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "CHC"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "TGY"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->nameWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    aget-object v4, v4, v1

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/text/InputFilter;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mMacFilter:Landroid/text/InputFilter;

    aput-object v6, v5, v10

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v5, v11

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    aget-object v4, v4, v1

    const/16 v5, 0x91

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    aget-object v4, v4, v1

    invoke-virtual {v4, v11}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    aget-object v4, v4, v1

    new-instance v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;

    invoke-direct {v5, p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;I)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_1

    :cond_2
    iget v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    if-nez v4, :cond_3

    const v4, 0x7f0b0ce9

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setTitle(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mTvMac:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v4, v12}, Landroid/widget/EditText;->setNextFocusDownId(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v4, v12}, Landroid/widget/EditText;->setNextFocusRightId(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b041e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v8, v4, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b0fd8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v6, -0x2

    invoke-virtual {p0, v6, v4, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->nameWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mButtonOk:Landroid/widget/Button;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mButtonOk:Landroid/widget/Button;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const/4 v4, -0x2

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mButtonCancel:Landroid/widget/Button;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mButtonCancel:Landroid/widget/Button;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mIsTalkBackEnabled:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->validate()V

    return-void

    :cond_3
    iget v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    if-ne v4, v11, :cond_4

    const v4, 0x7f0b0ce9

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setTitle(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMac:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mTvMac:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mMac:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b041e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v8, v4, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_2

    :cond_4
    iget v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    const v4, 0x7f0b0d0f

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setTitle(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMac:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    const v5, 0x7f110784

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    const v5, 0x7f110784

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b0da1

    invoke-static {v5, v6}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    const v5, 0x7f110786

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    const v5, 0x7f110786

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mMac:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiApWhiteList;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mTvMac:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mMac:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b041f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v8, v4, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    :cond_5
    const v4, 0x7f0b0417

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setTitle(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mTvMac:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->selectAll()V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v4, v12}, Landroid/widget/EditText;->setNextFocusDownId(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v4, v12}, Landroid/widget/EditText;->setNextFocusRightId(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mMac:Ljava/lang/String;

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    :goto_3
    const/4 v4, 0x6

    if-ge v1, v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    aget-object v4, v4, v1

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b0417

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v8, v4, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    aget-object v2, v2, v0

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show()V
    .locals 2

    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mDeviceName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mTempSsid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
