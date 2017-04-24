.class public Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;
.super Ljava/lang/Object;
.source "WifiConfigControllerBase.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$1;,
        Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$2;,
        Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;
    }
.end annotation


# static fields
.field protected static final DBG:Z

.field private static final mApMaskCheckVsie:[I

.field private static final mIgnorableApMASK:[I


# instance fields
.field protected focusListener:Landroid/view/View$OnFocusChangeListener;

.field protected final mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field protected mAccessPointSecurity:I

.field private mAdvancedOptionsLayout:Landroid/widget/LinearLayout;

.field private mAutoGenFirstTime:Z

.field private mAutoReconnectOptionsLayout:Landroid/widget/LinearLayout;

.field protected mAutoRecoonectCheckbox:Landroid/widget/CheckBox;

.field protected final mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

.field protected mContext:Landroid/content/Context;

.field protected mDns1View:Landroid/widget/EditText;

.field protected mDns2View:Landroid/widget/EditText;

.field protected mEapAnonymousErrorText:Landroid/widget/TextView;

.field protected mEapAnonymousView:Landroid/widget/EditText;

.field protected mEapCaCertSpinner:Landroid/widget/Spinner;

.field protected mEapDomainView:Landroid/widget/TextView;

.field protected mEapIdentityErrorText:Landroid/widget/TextView;

.field protected mEapIdentityView:Landroid/widget/EditText;

.field protected mEapMethodSpinner:Landroid/widget/Spinner;

.field protected mEapUserCertSpinner:Landroid/widget/Spinner;

.field mEditTexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private mGateway:Ljava/lang/String;

.field protected mGatewayView:Landroid/widget/EditText;

.field protected mInitDnsAddress:Ljava/lang/String;

.field protected mInitDnsAddress2:Ljava/lang/String;

.field protected mInitGwAddress:Ljava/lang/String;

.field protected mInitIpAddress:Ljava/lang/String;

.field protected mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

.field protected final mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field protected mIpAddressView:Landroid/widget/EditText;

.field protected mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

.field protected mIpSettingsSpinner:Landroid/widget/Spinner;

.field protected mIsCheckedCckm:Z

.field protected mIsCheckedFt:Z

.field protected mIsRequestHideKeyboard:Z

.field protected mLinkProperties:Landroid/net/LinkProperties;

.field protected mMode:I

.field protected mNetworkPrefixLengthView:Landroid/widget/TextView;

.field protected mPasswordErrorText:Landroid/widget/TextView;

.field protected mPasswordView:Landroid/widget/EditText;

.field protected mPasswordWatcher:Landroid/text/TextWatcher;

.field protected mPhase1Spinner:Landroid/widget/Spinner;

.field protected mPhase2Adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mPhase2Spinner:Landroid/widget/Spinner;

.field protected mProxyAuthId:Landroid/widget/TextView;

.field protected mProxyAuthPassword:Landroid/widget/TextView;

.field protected mProxyAuthenticationLayout:Landroid/widget/LinearLayout;

.field protected mProxyExclusionListView:Landroid/widget/TextView;

.field protected mProxyHostView:Landroid/widget/TextView;

.field protected mProxyPacView:Landroid/widget/TextView;

.field protected mProxyPortView:Landroid/widget/TextView;

.field protected mProxySettingsSpinner:Landroid/widget/Spinner;

.field protected mSecuritySpinner:Landroid/widget/Spinner;

.field protected mShowPasswordView:Landroid/widget/CheckBox;

.field private mSpinnerTintColor:I

.field protected mSsidErrorText:Landroid/widget/TextView;

.field protected mSsidView:Landroid/widget/EditText;

.field protected mSsidWatcher:Landroid/text/TextWatcher;

.field private mTempSsid:Ljava/lang/String;

.field private final mTextViewChangedHandler:Landroid/os/Handler;

.field protected final mView:Landroid/view/View;

.field protected final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mTempSsid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mTempSsid:Ljava/lang/String;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    new-array v0, v3, [I

    const v1, 0x2ba8c0

    aput v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIgnorableApMASK:[I

    new-array v0, v3, [I

    const v1, 0xa14ac

    aput v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mApMaskCheckVsie:[I

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settingslib/wifi/AccessPoint;ILandroid/os/Bundle;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsCheckedFt:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsCheckedCckm:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsRequestHideKeyboard:Z

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitIpAddress:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitGwAddress:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitDnsAddress:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitDnsAddress2:Ljava/lang/String;

    sget-object v2, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v2, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mGateway:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEditTexts:Ljava/util/ArrayList;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAutoGenFirstTime:Z

    new-instance v2, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$1;-><init>(Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;)V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->focusListener:Landroid/view/View$OnFocusChangeListener;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mTempSsid:Ljava/lang/String;

    new-instance v2, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$2;-><init>(Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;)V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSsidWatcher:Landroid/text/TextWatcher;

    new-instance v2, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;-><init>(Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;)V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordWatcher:Landroid/text/TextWatcher;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez p3, :cond_1

    :goto_0
    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPointSecurity:I

    iput p4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mMode:I

    if-eqz p5, :cond_0

    const-string/jumbo v1, "args_linkproperties"

    invoke-virtual {p5, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "args_linkproperties"

    invoke-virtual {p5, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/LinkProperties;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mLinkProperties:Landroid/net/LinkProperties;

    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mTextViewChangedHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0205

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSpinnerTintColor:I

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->getInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void

    :cond_1
    invoke-virtual {p3}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v1

    goto :goto_0
.end method

.method private addCaptivePortalRow(Landroid/view/ViewGroup;I)V
    .locals 13

    const/4 v12, 0x0

    const v11, 0x7f110410

    const/4 v10, 0x1

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->loginUrl:Ljava/lang/String;

    if-nez v5, :cond_0

    const-string/jumbo v7, "WifiConfigController"

    const-string/jumbo v8, "Invalid URL for Captive portal login"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v7, "\""

    const-string/jumbo v8, ""

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    const-string/jumbo v7, "//"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const-string/jumbo v8, "//"

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x2

    if-le v7, v8, :cond_4

    sget-boolean v7, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v7, :cond_1

    const-string/jumbo v7, "WifiConfigController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "addCaptivePortalRow: indexof(//):"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "//"

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v7, "//"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v5, v12, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, "//"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    sget-boolean v7, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v7, :cond_2

    const-string/jumbo v7, "WifiConfigController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "addCaptivePortalRow: front - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", rear - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v10, :cond_3

    const-string/jumbo v7, "/"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string/jumbo v7, "/"

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v12, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    sget-boolean v7, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v7, :cond_5

    const-string/jumbo v7, "WifiConfigController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "addCaptivePortalRow: url - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", linkName - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "<a href=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "</a>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v7}, Lcom/android/settings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f040353

    invoke-virtual {v7, v8, p1, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const v7, 0x7f11027f

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, p2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setLinksClickable(Z)V

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const/16 v8, 0xf

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    invoke-virtual {v4, v10}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v10}, Landroid/view/ViewGroup;->setEnabled(Z)V

    invoke-virtual {p1, v10}, Landroid/view/ViewGroup;->setClickable(Z)V

    return-void
.end method

.method private checkIp4vAddress(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method private findEditTextFromLayout(Landroid/view/ViewGroup;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->findEditTextFromLayout(Landroid/view/ViewGroup;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    instance-of v2, v0, Landroid/widget/EditText;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEditTexts:Ljava/util/ArrayList;

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method private generateBlankFields(Ljava/net/Inet4Address;)V
    .locals 9

    const-string/jumbo v6, "WifiConfigController"

    const-string/jumbo v7, "generateBlankFields"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v7}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0b0159

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x18

    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-static {p1, v4}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x1

    aput-byte v7, v0, v6

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mGatewayView:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mDns1View:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v7}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0b0156

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    if-ltz v4, :cond_4

    const/16 v6, 0x20

    if-le v4, v6, :cond_0

    :cond_4
    const/16 v4, 0x18

    goto :goto_0

    :catch_0
    move-exception v1

    const/16 v4, 0x18

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v5

    goto :goto_1
.end method

.method private getIpv4Address(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2c

    if-ne v5, v6, :cond_0

    add-int/lit8 v4, v1, 0x2

    move v1, v4

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_2

    if-eqz v4, :cond_2

    move v0, v1

    const/4 v5, 0x1

    if-ne p2, v5, :cond_1

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_1
    add-int/lit8 v5, v1, 0x1

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method private setAdapterToSpinner(Landroid/widget/Spinner;I)V
    .locals 4

    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f04036b

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method private setAutoReconnectEnabled(Z)V
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput v3, v1, Landroid/net/wifi/WifiConfiguration;->autoReconnect:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x47

    iput v3, v2, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "netId"

    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "autoReconnect"

    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->autoReconnect:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v4, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$6;

    invoke-direct {v4, p0, p1, v1}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$6;-><init>(Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;ZLandroid/net/wifi/WifiConfiguration;)V

    invoke-virtual {v3, v1, v4}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public OpenWebPage()V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mGateway:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "WifiConfigController"

    const-string/jumbo v3, "Go to Webpage: Activity not found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method protected addGatewayRow(Landroid/view/ViewGroup;I)V
    .locals 13

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v8}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v8, :cond_0

    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string/jumbo v8, "WifiConfigController"

    const-string/jumbo v9, "Go to Webpage: SEC_MOBILE_AP"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v8}, Lcom/android/settingslib/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    sget-object v9, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIgnorableApMASK:[I

    const/4 v8, 0x0

    array-length v10, v9

    :goto_0
    if-ge v8, v10, :cond_4

    aget v5, v9, v8

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v11

    const v12, 0xffffff

    and-int/2addr v11, v12

    if-ne v11, v5, :cond_3

    const-string/jumbo v8, "WifiConfigController"

    const-string/jumbo v9, "Go to Webpage: Masked Android Hotspot"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getCheckVsieForSns()Z

    move-result v8

    if-eqz v8, :cond_7

    sget-object v9, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mApMaskCheckVsie:[I

    const/4 v8, 0x0

    array-length v10, v9

    :goto_1
    if-ge v8, v10, :cond_7

    aget v5, v9, v8

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v11

    const v12, 0xffffff

    and-int/2addr v11, v12

    if-ne v11, v5, :cond_6

    sget-boolean v8, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v8, :cond_5

    const-string/jumbo v8, "WifiConfigController"

    const-string/jumbo v9, "This has a LO Gateway Address"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_7
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_9

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v8}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    sget-object v9, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v8, v9, :cond_9

    iget v8, v2, Landroid/net/DhcpInfo;->gateway:I

    if-eqz v8, :cond_9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "http://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v9}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mGateway:Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mGateway:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "WifiConfigController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Go to Webpage: gateway addr: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mGateway:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v8, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageHTTPResponse:I

    if-eqz v8, :cond_a

    sget v8, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageHTTPResponse:I

    const/16 v9, 0xc8

    if-eq v8, v9, :cond_8

    sget v8, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageHTTPResponse:I

    const/16 v9, 0x191

    if-ne v8, v9, :cond_9

    :cond_8
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v8}, Lcom/android/settings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f040353

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    const v8, 0x7f11027f

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, p2}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v8, Landroid/text/style/UnderlineSpan;

    invoke-direct {v8}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v9

    const/4 v10, 0x0

    const/16 v11, 0x21

    invoke-virtual {v1, v8, v10, v9, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const v8, 0x7f110410

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x7f110410

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    new-instance v9, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$4;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$4;-><init>(Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v8, 0x1

    sput-boolean v8, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageLinkViewed:Z

    :cond_9
    :goto_2
    return-void

    :cond_a
    new-instance v3, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;

    invoke-direct {v3, p0, p1, p2, v7}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;-><init>(Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;Landroid/view/ViewGroup;ILjava/lang/StringBuilder;)V

    sget-object v8, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mGateway:Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v3, v8, v9}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2
.end method

.method protected addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mMode:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v3, 0x7f11079a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0, v2, v4, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040345

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :goto_0
    const v2, 0x7f11027f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f110410

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040346

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mTextViewChangedHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$8;-><init>(Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public dismissSpinnerPopup()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSecuritySpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSecuritySpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->semDismissPopup()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->semDismissPopup()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPhase1Spinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPhase1Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->semDismissPopup()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPhase2Spinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->semDismissPopup()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapCaCertSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->semDismissPopup()V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapUserCertSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->semDismissPopup()V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->semDismissPopup()V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->semDismissPopup()V

    :cond_6
    return-void
.end method

.method protected enableSubmitIfAppropriate()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getButtonFromType(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->isSubmittable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getButtonFromType(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->isSubmittable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method protected getDefaultEapFieldsIndex()I
    .locals 4

    const/4 v3, 0x3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/Utils;->EAPMETHOD_SETTING:Ljava/lang/String;

    const-string/jumbo v2, "SIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    const-string/jumbo v2, "SingTel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/Utils;->CONFIG_VENDOR_SSID_LIST:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPointSecurity:I

    if-ne v1, v3, :cond_0

    const/4 v0, 0x4

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/android/settings/Utils;->EAPMETHOD_SETTING:Ljava/lang/String;

    const-string/jumbo v2, "AKA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    const-string/jumbo v2, "LGU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/Utils;->CONFIG_VENDOR_SSID_LIST:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPointSecurity:I

    if-ne v1, v3, :cond_0

    const/4 v0, 0x5

    goto :goto_0
.end method

.method protected getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;
    .locals 2

    :try_start_0
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    check-cast v1, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method protected getSignalString()Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0055

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    if-le v0, v3, :cond_0

    array-length v3, v1

    if-ge v0, v3, :cond_0

    aget-object v2, v1, v0

    :cond_0
    return-object v2

    :cond_1
    return-object v2
.end method

.method protected hasSubmitButton()Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v0, v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getButtonFromType(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/WifiConfigUiBase;->getButtonFromType(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hideForgetButton()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getButtonFromType(I)Landroid/widget/Button;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method protected hideSoftKeyboard()V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->hideSoftKeyboard(Landroid/view/View;)V

    return-void
.end method

.method protected hideSoftKeyboard(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "WifiConfigController"

    const-string/jumbo v1, "    **** hideSoftKeyboard *****"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public hideSubmitButton()V
    .locals 4

    const/16 v3, 0x8

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getButtonFromType(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getButtonFromType(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected initIpConfigFieldsFromLinkProperties(Landroid/net/LinkProperties;)V
    .locals 15

    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v9, 0x0

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/LinkAddress;

    invoke-virtual {v8}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v2

    sget-boolean v12, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v12, :cond_1

    const-string/jumbo v12, "WifiConfigController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "showIpConfigFields ip "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->checkIp4vAddress(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-virtual {v8}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v12

    invoke-virtual {v12}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitIpAddress:Ljava/lang/String;

    if-nez v12, :cond_2

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitIpAddress:Ljava/lang/String;

    :cond_2
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v12, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v9, 0x1

    :cond_3
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpAddressView:Landroid/widget/EditText;

    iget-object v13, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->length()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setSelection(I)V

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/RouteInfo;

    invoke-virtual {v10}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v12

    invoke-virtual {v12}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    sget-boolean v12, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v12, :cond_5

    const-string/jumbo v12, "WifiConfigController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "showIpConfigFields gw "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v10}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->checkIp4vAddress(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c

    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitGwAddress:Ljava/lang/String;

    if-nez v12, :cond_6

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitGwAddress:Ljava/lang/String;

    :cond_6
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v12, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v9, 0x1

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v3, 0x0

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v12

    if-eqz v12, :cond_e

    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mDns1View:Landroid/widget/EditText;

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v12

    if-eqz v12, :cond_12

    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mDns2View:Landroid/widget/EditText;

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_3
    return-void

    :cond_a
    if-nez v9, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {v8}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->getIpv4Address(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitIpAddress:Ljava/lang/String;

    if-nez v12, :cond_b

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitIpAddress:Ljava/lang/String;

    :cond_b
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v12, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-direct {p0, v6, v1}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->getIpv4Address(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_c
    if-nez v9, :cond_4

    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->getIpv4Address(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitGwAddress:Ljava/lang/String;

    if-nez v12, :cond_d

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitGwAddress:Ljava/lang/String;

    :cond_d
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v12, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_e
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    sget-boolean v12, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v12, :cond_f

    const-string/jumbo v12, "WifiConfigController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "showIpConfigFields dns1 "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->checkIp4vAddress(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_11

    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitDnsAddress:Ljava/lang/String;

    if-nez v12, :cond_10

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitDnsAddress:Ljava/lang/String;

    :cond_10
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v12, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_11
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mDns1View:Landroid/widget/EditText;

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitDnsAddress:Ljava/lang/String;

    if-nez v12, :cond_8

    const-string/jumbo v12, ""

    iput-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitDnsAddress:Ljava/lang/String;

    goto/16 :goto_2

    :cond_12
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    sget-boolean v12, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v12, :cond_13

    const-string/jumbo v12, "WifiConfigController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "showIpConfigFields dns2 "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->checkIp4vAddress(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_15

    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitDnsAddress2:Ljava/lang/String;

    if-nez v12, :cond_14

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitDnsAddress2:Ljava/lang/String;

    :cond_14
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v12, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_15
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mDns2View:Landroid/widget/EditText;

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitDnsAddress2:Ljava/lang/String;

    if-nez v12, :cond_9

    const-string/jumbo v12, ""

    iput-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitDnsAddress2:Ljava/lang/String;

    goto/16 :goto_3
.end method

.method public isNeedToReconnect()Z
    .locals 7

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    if-eq v4, v5, :cond_1

    sget-boolean v4, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "WifiConfigController"

    const-string/jumbo v5, "change ip assignment method by user"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v6

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitIpAddress:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitIpAddress:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-boolean v4, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "WifiConfigController"

    const-string/jumbo v5, "changed ip address by user"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v6

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitGwAddress:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitGwAddress:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    sget-boolean v4, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v4, :cond_4

    const-string/jumbo v4, "WifiConfigController"

    const-string/jumbo v5, "changed gateway address by user"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v6

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitDnsAddress:Ljava/lang/String;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitDnsAddress:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    sget-boolean v4, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v4, :cond_6

    const-string/jumbo v4, "WifiConfigController"

    const-string/jumbo v5, "changed dns1 address by user"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v6

    :cond_7
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitDnsAddress2:Ljava/lang/String;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitDnsAddress2:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    sget-boolean v4, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v4, :cond_8

    const-string/jumbo v4, "WifiConfigController"

    const-string/jumbo v5, "changed dns2 address by user"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return v6

    :cond_9
    const/4 v4, 0x0

    return v4
.end method

.method protected isSubmittable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 10

    const v9, 0x7f1107bf

    const/16 v8, 0x8

    const v7, 0x7f1107db

    const v6, 0x7f1107d9

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v3

    const v4, 0x7f11074c

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    if-eqz p2, :cond_1

    const/16 v3, 0x90

    :goto_0
    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setInputType(I)V

    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->updateImeOptionsForEditText()V

    return-void

    :cond_1
    const/16 v3, 0x80

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v3

    const v4, 0x7f1107bc

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->setAutoReconnectEnabled(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v3

    const v4, 0x7f1107be

    if-ne v3, v4, :cond_5

    if-eqz p2, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->hideSoftKeyboard()V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    move-result-object v3

    const-string/jumbo v4, "ON"

    invoke-virtual {v3, v5, v4}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->insertLog(ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v3

    if-ne v3, v6, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsCheckedFt:Z

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsCheckedFt:Z

    if-eqz v3, :cond_0

    iput-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsCheckedCckm:Z

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v3

    if-ne v3, v7, :cond_7

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsCheckedCckm:Z

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsCheckedCckm:Z

    if-eqz v3, :cond_0

    iput-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsCheckedFt:Z

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v3

    const v4, 0x7f1107d3

    if-ne v3, v4, :cond_0

    if-eqz p2, :cond_8

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v4, 0x7f1107d4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->enableSubmitIfAppropriate()V

    goto/16 :goto_1

    :cond_8
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v4, 0x7f1107d4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->isSubmittable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase;->dispatchSubmit()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSecuritySpinner:Landroid/widget/Spinner;

    if-ne p1, v1, :cond_2

    iput p3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPointSecurity:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->showSecurityFields()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->showKeyMgmtFields()V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->showWarningMessagesIfAppropriate()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->enableSubmitIfAppropriate()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->updateImeOptionsForEditText()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_6

    const-string/jumbo v0, "PEAP"

    :goto_1
    const-string/jumbo v1, "SIM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "AKA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "AKA\'"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSsidView:Landroid/widget/EditText;

    if-nez v1, :cond_7

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsRequestHideKeyboard:Z

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eq p1, v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapCaCertSpinner:Landroid/widget/Spinner;

    if-ne p1, v1, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->showSecurityFields()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v1, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->showProxyFields()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SP_PRX_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->insertLog(ILjava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->showIpConfigFields()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SP_IP_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->insertLog(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsRequestHideKeyboard:Z

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapIdentityView:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v2, 0x7f1107be

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_1

    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsRequestHideKeyboard:Z

    goto :goto_2
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->isSubmittable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase;->dispatchSubmit()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected setInvisibleAutoReconnectView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f1107bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAutoReconnectOptionsLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAutoReconnectOptionsLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method protected setVisibleAutoReconnectView()V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v1, Lcom/android/settings/Utils;->ENABLE_MENU_AUTOJOIN:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/settings/Utils;->ENABLE_WIFI_CONNECTION_TYPE:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "ATT"

    sget-object v2, Lcom/android/settings/Utils;->CONFIG_AUTOCONNECT_HOTSPOT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v2, 0x7f1107bb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAutoReconnectOptionsLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAutoReconnectOptionsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v2, 0x7f1107bc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAutoRecoonectCheckbox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAutoRecoonectCheckbox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_4

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->autoReconnect:I

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAutoRecoonectCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAutoRecoonectCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method protected setupAdvancedOptionsView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f1107bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAdvancedOptionsLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAdvancedOptionsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f1107be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAdvancedOptionsLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method protected setupApInformation()V
    .locals 14

    const/4 v3, 0x0

    iget v10, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mMode:I

    if-nez v10, :cond_6

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v11, 0x7f1104de

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    :goto_0
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v10}, Lcom/android/settingslib/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v10}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v10

    if-lez v10, :cond_0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "Mbps"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->getSignalString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    if-eqz v6, :cond_7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f0b1268

    invoke-virtual {p0, v3, v11, v10}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_1
    :goto_1
    move-object v4, v3

    iget v10, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPointSecurity:I

    if-nez v10, :cond_2

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v11, 0x7f1104de

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    :cond_2
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f0b1267

    invoke-virtual {p0, v4, v11, v10}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v10}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v10}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v10

    sget-object v11, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v10, v11, :cond_8

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-object v10, v9, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v10, :cond_3

    iget-object v10, v9, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v10}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f0b126c

    invoke-virtual {p0, v3, v11, v10}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_3
    :goto_2
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    const v11, 0x7f0b126e

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    iget-object v12, v1, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f0b126d

    invoke-virtual {p0, v3, v11, v10}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_4
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v10}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v10

    const-string/jumbo v11, "SEC_FLOATING_FEATURE_WLAN_SUPPORT_AP_LINK"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    check-cast v10, Lcom/android/settings/wifi/WifiDialog;

    iget-boolean v10, v10, Lcom/android/settings/wifi/WifiDialog;->isSetupWizard:Z

    if-nez v10, :cond_5

    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v8, v10, :cond_5

    iget v10, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_5

    iget-boolean v10, v1, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    if-nez v10, :cond_f

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v10}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v10

    const/4 v11, 0x3

    if-eq v10, v11, :cond_5

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v10}, Lcom/android/settingslib/wifi/AccessPoint;->isVendorAp()Z

    move-result v10

    if-eqz v10, :cond_e

    :cond_5
    :goto_3
    return-void

    :cond_6
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v11, 0x7f1107bf

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    goto/16 :goto_0

    :cond_7
    if-eqz v7, :cond_1

    const v10, 0x7f0b1268

    invoke-virtual {p0, v3, v10, v7}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v2

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v10}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    if-eqz v2, :cond_9

    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v8, v10, :cond_9

    iget v10, v2, Landroid/net/DhcpInfo;->ipAddress:I

    if-eqz v10, :cond_9

    iget v10, v2, Landroid/net/DhcpInfo;->ipAddress:I

    invoke-static {v10}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f0b126c

    invoke-virtual {p0, v3, v11, v10}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_9
    sget-boolean v10, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v10, :cond_3

    iget v10, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mMode:I

    if-nez v10, :cond_3

    iget v10, v2, Landroid/net/DhcpInfo;->netmask:I

    if-eqz v10, :cond_a

    iget v10, v2, Landroid/net/DhcpInfo;->netmask:I

    invoke-static {v10}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f0b0c25

    invoke-virtual {p0, v3, v11, v10}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_a
    iget v10, v2, Landroid/net/DhcpInfo;->gateway:I

    if-eqz v10, :cond_b

    iget v10, v2, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v10}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f0b12ad

    invoke-virtual {p0, v3, v11, v10}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_b
    iget v10, v2, Landroid/net/DhcpInfo;->dns1:I

    if-eqz v10, :cond_c

    iget v10, v2, Landroid/net/DhcpInfo;->dns1:I

    invoke-static {v10}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f0b12ab

    invoke-virtual {p0, v3, v11, v10}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_c
    iget v10, v2, Landroid/net/DhcpInfo;->dns2:I

    if-eqz v10, :cond_d

    iget v10, v2, Landroid/net/DhcpInfo;->dns2:I

    invoke-static {v10}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f0b12ac

    invoke-virtual {p0, v3, v11, v10}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_d
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f0b0c26

    invoke-virtual {p0, v3, v11, v10}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto/16 :goto_2

    :cond_e
    const v10, 0x7f0b0c54

    invoke-virtual {p0, v3, v10}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->addGatewayRow(Landroid/view/ViewGroup;I)V

    goto/16 :goto_3

    :cond_f
    const v10, 0x7f0b0c54

    invoke-direct {p0, v4, v10}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->addCaptivePortalRow(Landroid/view/ViewGroup;I)V

    goto/16 :goto_3
.end method

.method protected setupConnectionWarningView()V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v3, 0x7f110189

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    const v4, 0x7f0b0c23

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected setupEapPhase()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f1107a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPhase1Spinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPhase1Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSpinnerTintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPhase1Spinner:Landroid/widget/Spinner;

    const v1, 0x7f0c0062

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f1107a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSpinnerTintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPhase2Spinner:Landroid/widget/Spinner;

    const v1, 0x7f0c0064

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    return-void
.end method

.method protected setupIpAndProxySettings()V
    .locals 3

    const v2, 0x7f1107d3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f1107c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpSettingsSpinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSpinnerTintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpSettingsSpinner:Landroid/widget/Spinner;

    const v1, 0x7f0c0065

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpSettingsSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f1107ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxySettingsSpinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSpinnerTintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxySettingsSpinner:Landroid/widget/Spinner;

    const v1, 0x7f0c0066

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxySettingsSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f1107d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxyAuthenticationLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method protected setupPasswordView()V
    .locals 4

    const/4 v3, 0x0

    const v2, 0x7f11074c

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f1106fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f1107b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordErrorText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    const v1, 0x7f0b0cc1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    const v1, 0x8000

    invoke-virtual {v0, v1, v3}, Landroid/widget/EditText;->semSetActionModeMenuItemEnabled(IZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mShowPasswordView:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mMode:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordErrorText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    const v2, 0x7f0b170e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d020d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    const v1, 0x7f0b127d

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    :cond_1
    return-void
.end method

.method protected setupSecuritySpinner()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f11074a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSecuritySpinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSecuritySpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSpinnerTintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSecuritySpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSecuritySpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORT_WAPI:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSecuritySpinner:Landroid/widget/Spinner;

    const v1, 0x7f0c0040

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSecuritySpinner:Landroid/widget/Spinner;

    const v1, 0x7f0c003e

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    goto :goto_0
.end method

.method protected setupSsidView()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f110749

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSsidView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f11079b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSsidErrorText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSsidView:Landroid/widget/EditText;

    const v1, 0x7f0b1266

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSsidView:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Lcom/android/settings/Utils$EmojiInputFilter;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/Utils$EmojiInputFilter;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSsidView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSsidWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSsidView:Landroid/widget/EditText;

    const v1, 0x8000

    invoke-virtual {v0, v1, v4}, Landroid/widget/EditText;->semSetActionModeMenuItemEnabled(IZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method protected showEapFieldsByMethod(I)V
    .locals 0

    return-void
.end method

.method protected showIpConfigFields()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToUseEnterpriseSsid(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToChangeUserPolicy(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpAddressView:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mDns1View:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mDns2View:Landroid/widget/EditText;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mGatewayView:Landroid/widget/EditText;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected showKeyMgmtFields()V
    .locals 8

    const v7, 0x7f1107db

    const v6, 0x7f1107da

    const v5, 0x7f1107d9

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v0, :cond_4

    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPointSecurity:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f1107d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f1107d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f1107d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "WifiConfigController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "accessPoint.keyMgmts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getKeyMgmts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getKeyMgmts()Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getKeyMgmts()Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getKeyMgmts()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f1107d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getKeyMgmts()Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getKeyMgmts()Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f1107d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsCheckedFt:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsCheckedFt:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f1107d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :cond_7
    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getKeyMgmts()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsCheckedFt:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsCheckedCckm:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsCheckedCckm:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f1107d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method protected showProxyFields()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToUseEnterpriseSsid(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToChangeUserPolicy(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxyPortView:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxyExclusionListView:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxyAuthId:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxyAuthId:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxyAuthPassword:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxyAuthPassword:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected showSecurityFields()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mShowPasswordView:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mShowPasswordView:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToShowPasswordHiddenView(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mShowPasswordView:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mShowPasswordView:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToUseEnterpriseSsid(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToChangeUserPolicy(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mShowPasswordView:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "WifiPolicy"

    const-string/jumbo v2, "Enterprise Wifi settings not editable"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPhase1Spinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPhase1Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPhase2Spinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapCaCertSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapUserCertSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_1
.end method

.method protected showSoftKeyboard()V
    .locals 4

    sget-boolean v1, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiConfigController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showSoftKeyboard requestHideKeyboard:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsRequestHideKeyboard:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsRequestHideKeyboard:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "WifiConfigController"

    const-string/jumbo v2, "    **** showSoftKeyboard : ignored (Accessory Keyboard Mode) *****"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string/jumbo v1, "WifiConfigController"

    const-string/jumbo v2, "    **** showSoftKeyboard *****"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0
.end method

.method public showSoftKeyboardOnResume()V
    .locals 6

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->findEditTextFromLayout(Landroid/view/ViewGroup;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->startWithFocusOnTopEditText()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$7;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$7;-><init>(Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;Landroid/view/View;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected showWarningMessagesIfAppropriate()V
    .locals 0

    return-void
.end method

.method protected startWithFocusOnTopEditText()V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->findEditTextFromLayout(Landroid/view/ViewGroup;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    return-void
.end method

.method protected updateImeOptionsForEditText()V
    .locals 9

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    check-cast v5, Landroid/view/ViewGroup;

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->findEditTextFromLayout(Landroid/view/ViewGroup;)V

    sget-boolean v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v6, :cond_0

    const-string/jumbo v6, "WifiConfigController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateImeOptions - prev:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " new:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v3, v6, :cond_1

    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    :cond_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v0}, Landroid/widget/EditText;->getId()I

    move-result v7

    if-ne v6, v7, :cond_3

    sget-boolean v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v6, :cond_2

    const-string/jumbo v6, "WifiConfigController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateImeOptions - keyboard shown:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodManager;->semIsInputMethodShown()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v6, v0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_8

    instance-of v6, v2, Landroid/widget/EditText;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEditTexts:Ljava/util/ArrayList;

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    sget-boolean v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v6, :cond_5

    const-string/jumbo v6, "WifiConfigController"

    const-string/jumbo v7, "updateImeOptions - focused view is invisible"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->hideSoftKeyboard()V

    :cond_6
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    return-void

    :cond_7
    sget-boolean v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v6, :cond_6

    const-string/jumbo v6, "WifiConfigController"

    const-string/jumbo v7, "updateImeOptions - focused view is visible"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    sget-boolean v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v6, :cond_9

    const-string/jumbo v6, "WifiConfigController"

    const-string/jumbo v7, "updateImeOptions - focused view is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v6, v0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->hideSoftKeyboard(Landroid/view/View;)V

    goto :goto_1
.end method

.method protected validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I
    .locals 14

    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpAddressView:Landroid/widget/EditText;

    if-nez v11, :cond_0

    const/4 v11, 0x0

    return v11

    :cond_0
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    const v11, 0x7f0b12a7

    return v11

    :cond_1
    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v7

    if-nez v7, :cond_2

    const v11, 0x7f0b12a7

    return v11

    :cond_2
    :try_start_0
    iget-boolean v11, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAutoGenFirstTime:Z

    if-eqz v11, :cond_3

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAutoGenFirstTime:Z

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->generateBlankFields(Ljava/net/Inet4Address;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    const/4 v10, -0x1

    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    iget-boolean v11, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAutoGenFirstTime:Z

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v12}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0b0159

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :try_start_1
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-ltz v10, :cond_5

    const/16 v11, 0x20

    if-le v10, v11, :cond_7

    :cond_5
    const v11, 0x7f0b12aa

    return v11

    :catch_0
    move-exception v3

    const v11, 0x7f0b12a7

    return v11

    :cond_6
    const v11, 0x7f0b12aa

    return v11

    :cond_7
    new-instance v11, Landroid/net/LinkAddress;

    invoke-direct {v11, v7, v10}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v11, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8

    const v11, 0x7f0b12a8

    return v11

    :catch_1
    move-exception v4

    const v11, 0x7f0b12aa

    return v11

    :cond_8
    const/4 v6, 0x0

    :try_start_2
    invoke-static {v5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v6

    iput-object v6, p1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9

    const v11, 0x7f0b12a9

    return v11

    :catch_2
    move-exception v3

    const v11, 0x7f0b12a8

    return v11

    :cond_9
    const/4 v2, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b

    :try_start_3
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v2

    iget-object v11, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_a

    :try_start_4
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v2

    iget-object v11, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    const/4 v11, 0x0

    return v11

    :catch_3
    move-exception v3

    const v11, 0x7f0b12a9

    return v11

    :cond_b
    iget-object v11, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_4
    move-exception v3

    const v11, 0x7f0b12a9

    return v11
.end method
