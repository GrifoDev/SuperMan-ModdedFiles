.class public Lcom/samsung/android/settings/wifi/WifiApDialogSec;
.super Landroid/app/AlertDialog;
.source "WifiApDialogSec.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;,
        Lcom/samsung/android/settings/wifi/WifiApDialogSec$2;,
        Lcom/samsung/android/settings/wifi/WifiApDialogSec$3;,
        Lcom/samsung/android/settings/wifi/WifiApDialogSec$4;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final MAX_CLIENT:I

.field private static mSecurityTypeIndex:I

.field private static sSalesCode:Ljava/lang/String;


# instance fields
.field private CheckBoxChannel2g:Landroid/widget/RadioButton;

.field private CheckBoxChannel5g:Landroid/widget/RadioButton;

.field private CheckBoxChannel5gPrefer:Landroid/widget/CheckBox;

.field private advanced:Landroid/widget/CheckBox;

.field private bTimeOutSpinner:Z

.field private customView:Landroid/view/View;

.field focusListener:Landroid/view/View$OnFocusChangeListener;

.field private hideSsidDoNotShowAgain:Z

.field private isTimeoutValueChanged:Z

.field private mAdvancedShowLayout:Landroid/widget/LinearLayout;

.field private mBand2gTextView:Landroid/widget/TextView;

.field private mChannel:Landroid/widget/Spinner;

.field private mChannel2gLayout:Landroid/widget/LinearLayout;

.field private mChannel5g:Landroid/widget/TextView;

.field private mChannel5gLayout:Landroid/widget/LinearLayout;

.field private mChannel5gLayoutPrefer:Landroid/widget/LinearLayout;

.field private mChannel5genabled:Z

.field public mChecked5GPrefer:Z

.field private mContext:Landroid/content/Context;

.field public mDismissIfOpen:Z

.field private mHideSsid:Landroid/widget/CheckBox;

.field private mHideSsidDoNotShowAgain:Landroid/widget/CheckBox;

.field private mHideSsidDoNotShowAgainLayout:Landroid/widget/LinearLayout;

.field private mLast2gChannel:I

.field private mLast5gChannel:I

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMacaddrAcl:I

.field private mNumBasedOnCharger:I

.field private mNumBasedOnCountry:I

.field private mPassword:Landroid/widget/EditText;

.field private mPasswordErrorText:Landroid/widget/TextView;

.field private mPasswordShowLayout:Landroid/widget/LinearLayout;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSaveButtonClicked:Z

.field private mSecurity:Landroid/widget/Spinner;

.field private mSecurityMsg:Landroid/widget/TextView;

.field private mSelectedBand:I

.field private mSelectedChannel:I

.field private mSelectedMaxClient:I

.field private mSelectedTimeoutValue:I

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mSsid:Landroid/widget/EditText;

.field private mSsidErrorText:Landroid/widget/TextView;

.field private mSsidHideLayout:Landroid/widget/LinearLayout;

.field private mTempPassworld:Ljava/lang/String;

.field private mTempSecurityTypeIndex:I

.field private mTempSsid:Ljava/lang/String;

.field mTempWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mUserSelectOpenSecurity:Z

.field private mView:Landroid/view/View;

.field mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private maxClientSpinner:Landroid/widget/Spinner;

.field passwordWatcher:Landroid/text/TextWatcher;

.field ssidWatcher:Landroid/text/TextWatcher;

.field private timeoutSettingsSpinner:Landroid/widget/Spinner;

.field private wifiAp5gDoNotShowAgain:Z

.field private wifiAp5gItem:[Ljava/lang/String;

.field private wifiAp5gItemBasedOnCharger:[Ljava/lang/String;

.field private wifiAp5gItemBasedOnCountry:[Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel2g:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel5g:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCountry:I

    return v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPasswordErrorText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    return v0
.end method

.method static synthetic -get14(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSharedPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic -get15(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get16(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsidErrorText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get17(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempPassworld:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get18(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempSsid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get20(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItem:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get21(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItemBasedOnCharger:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get22(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItemBasedOnCountry:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel5g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsidDoNotShowAgain:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    return v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCharger:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/wifi/WifiApDialogSec;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCharger:I

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/wifi/WifiApDialogSec;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/wifi/WifiApDialogSec;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSharedPref:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic -set3(Lcom/samsung/android/settings/wifi/WifiApDialogSec;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempPassworld:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set4(Lcom/samsung/android/settings/wifi/WifiApDialogSec;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempSsid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set6(Lcom/samsung/android/settings/wifi/WifiApDialogSec;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItem:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getChgType()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->restartFocusedViewInput()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->validate()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/settings/Utils;->MHSDBG:Z

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->DBG:Z

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    sget v0, Lcom/android/settings/Utils;->MAX_CLIENT_4_MOBILEAP:I

    sput v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->MAX_CLIENT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChecked5GPrefer:Z

    iput v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempSecurityTypeIndex:I

    iput v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mMacaddrAcl:I

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempSsid:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempPassworld:Ljava/lang/String;

    iput v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    iput v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast5gChannel:I

    iput v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedBand:I

    iput v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedMaxClient:I

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->hideSsidDoNotShowAgain:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gDoNotShowAgain:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel5genabled:Z

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "36"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItemBasedOnCharger:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "149"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItemBasedOnCountry:[Ljava/lang/String;

    iput v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCharger:I

    iput v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCountry:I

    iput v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedTimeoutValue:I

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isTimeoutValueChanged:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSaveButtonClicked:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mUserSelectOpenSecurity:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mDismissIfOpen:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->bTimeOutSpinner:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;-><init>(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec$2;-><init>(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->focusListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec$3;-><init>(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->ssidWatcher:Landroid/text/TextWatcher;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec$4;-><init>(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->passwordWatcher:Landroid/text/TextWatcher;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p3, :cond_4

    invoke-static {p1}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    :cond_0
    iget v0, p3, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_5

    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    :goto_0
    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    const/16 v1, 0xf

    if-gt v0, v1, :cond_1

    iput v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    iput v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    const-string/jumbo v0, "WifiApDialogSec"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Changing MHS Channel to Auto "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mMacaddrAcl:I

    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_MAXCLIENT_MENU:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedMaxClient:I

    :cond_2
    const-string/jumbo v0, "TMO"

    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "NEWCO"

    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getTimeoutValueFromSheredPreference(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getTimeoutIndexFromValue(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedTimeoutValue:I

    :cond_4
    return-void

    :cond_5
    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast5gChannel:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;ZZ)V
    .locals 4

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChecked5GPrefer:Z

    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempSecurityTypeIndex:I

    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mMacaddrAcl:I

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempSsid:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempPassworld:Ljava/lang/String;

    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast5gChannel:I

    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedBand:I

    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedMaxClient:I

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->hideSsidDoNotShowAgain:Z

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gDoNotShowAgain:Z

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel5genabled:Z

    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v1, "36"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItemBasedOnCharger:[Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v1, "149"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItemBasedOnCountry:[Ljava/lang/String;

    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCharger:I

    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCountry:I

    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedTimeoutValue:I

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isTimeoutValueChanged:Z

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSaveButtonClicked:Z

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mUserSelectOpenSecurity:Z

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mDismissIfOpen:Z

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->bTimeOutSpinner:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;-><init>(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec$2;-><init>(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->focusListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec$3;-><init>(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->ssidWatcher:Landroid/text/TextWatcher;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec$4;-><init>(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->passwordWatcher:Landroid/text/TextWatcher;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p4, :cond_5

    iput-object p4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    const-string/jumbo v0, "WifiApDialogSec"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WifiApDialogSec2 - mSecurityTypeIndex ?  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "   permitDismiss ?   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "   continueOpen ?   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mDismissIfOpen:Z

    if-eqz p6, :cond_6

    sput v3, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    :cond_0
    :goto_1
    iget v0, p3, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_7

    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    :goto_2
    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    const/16 v1, 0xf

    if-gt v0, v1, :cond_1

    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    const-string/jumbo v0, "WifiApDialogSec"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Changing MHS Channel to Auto "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mMacaddrAcl:I

    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_MAXCLIENT_MENU:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedMaxClient:I

    :cond_2
    const-string/jumbo v0, "TMO"

    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "NEWCO"

    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getTimeoutValueFromSheredPreference(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getTimeoutIndexFromValue(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedTimeoutValue:I

    :cond_4
    return-void

    :cond_5
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    goto/16 :goto_0

    :cond_6
    if-nez p6, :cond_0

    sget v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mDismissIfOpen:Z

    goto :goto_1

    :cond_7
    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast5gChannel:I

    goto :goto_2
.end method

.method private getChgType()Z
    .locals 8

    const-string/jumbo v0, "/sys/class/sec/switch/chg_type"

    const/4 v1, 0x0

    const-string/jumbo v3, ""

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "WifiApDialogSec"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ChgType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v1, v2

    :cond_1
    :goto_1
    const-string/jumbo v5, "0"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    const/4 v5, 0x1

    return v5

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v4

    :goto_2
    :try_start_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_4
    throw v5

    :catch_3
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    return v5

    :catchall_1
    move-exception v5

    move-object v1, v2

    goto :goto_3

    :catch_4
    move-exception v4

    move-object v1, v2

    goto :goto_2
.end method

.method public static getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sput v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    return v1

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sput v3, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    return v3

    :cond_1
    sput v2, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    return v2
.end method

.method private getTimeoutIndexFromValue(I)I
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, -0x1

    return v0

    :sswitch_0
    const/4 v0, 0x0

    return v0

    :sswitch_1
    const/4 v0, 0x1

    return v0

    :sswitch_2
    const/4 v0, 0x2

    return v0

    :sswitch_3
    const/4 v0, 0x3

    return v0

    :sswitch_4
    const/4 v0, 0x4

    return v0

    :sswitch_5
    const/4 v0, 0x5

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12c -> :sswitch_1
        0x258 -> :sswitch_2
        0x4b0 -> :sswitch_3
        0x708 -> :sswitch_4
        0xe10 -> :sswitch_5
    .end sparse-switch
.end method

.method private getTimeoutValueFromIndex(I)I
    .locals 1

    const/16 v0, 0x4b0

    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/16 v0, 0x12c

    return v0

    :pswitch_2
    const/16 v0, 0x258

    return v0

    :pswitch_3
    return v0

    :pswitch_4
    const/16 v0, 0x708

    return v0

    :pswitch_5
    const/16 v0, 0xe10

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getTimeoutValueFromSheredPreference(Landroid/content/Context;)I
    .locals 3

    const-string/jumbo v0, "SAMSUNG_HOTSPOT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSharedPref:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSharedPref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "CONNECTION_TIMEOUT"

    sget v2, Lcom/android/settings/Utils;->DEFAULT_TIMEOUT_MOBILEAP:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private isHotspotTestMode()Z
    .locals 14

    const/4 v10, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "wifi"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    const/16 v11, 0xbf

    iput v11, v7, Landroid/os/Message;->what:I

    invoke-virtual {v9, v7}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v11

    if-ne v11, v10, :cond_2

    const/4 v8, 0x1

    :goto_0
    sget-boolean v11, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->DBG:Z

    if-eqz v11, :cond_1

    const-string/jumbo v0, "/data/misc/wifi/hotspot_info"

    const/4 v1, 0x0

    const-string/jumbo v3, ""

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string/jumbo v11, " "

    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v11, v5

    const/4 v12, 0x2

    if-lt v11, v12, :cond_0

    const-string/jumbo v11, "ATT_HOTSPOT"

    const/4 v12, 0x0

    aget-object v12, v5, v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x1

    aget-object v11, v5, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-ne v11, v10, :cond_3

    const/4 v6, 0x1

    :goto_2
    const-string/jumbo v11, "WifiApDialogSec"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "ATT_HOTSPOT ? "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v4

    move-object v1, v2

    :goto_3
    :try_start_2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_4
    if-nez v6, :cond_6

    :goto_5
    return v8

    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_0
    move-exception v10

    :goto_6
    if-eqz v1, :cond_5

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    :goto_7
    throw v10

    :catch_3
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :cond_6
    move v8, v10

    goto :goto_5

    :catchall_1
    move-exception v10

    move-object v1, v2

    goto :goto_6

    :catch_4
    move-exception v4

    goto :goto_3
.end method

.method private isWifiSharingEnabled()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_wifi_sharing"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_0

    return v4

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_wifi_sharing"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WifiApDialogSec"

    const-string/jumbo v2, "Wifi Sharing not defined"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v3
.end method

.method private restartFocusedViewInput()V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->restartViewInput(Landroid/view/View;)V

    goto :goto_0
.end method

.method private restartViewInput(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private saveTempConfig()V
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string/jumbo v2, "TMO"

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "NEWCO"

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "USC"

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_0
    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    :goto_1
    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mMacaddrAcl:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :cond_1
    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_MAXCLIENT_MENU:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedMaxClient:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    :cond_2
    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempSecurityTypeIndex:I

    packed-switch v2, :pswitch_data_0

    :cond_3
    :goto_2
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-void

    :cond_4
    move v2, v4

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto :goto_1

    :pswitch_0
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    :pswitch_1
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_2

    :pswitch_2
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setAdapterToSpinner(Landroid/widget/Spinner;I)V
    .locals 4

    const-string/jumbo v1, "WifiApDialogSec"

    const-string/jumbo v2, "Enter to setAdapterToSpinner"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f040334

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method private setTimeout(I)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "SAMSUNG_HOTSPOT"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSharedPref:Landroid/content/SharedPreferences;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "CONNECTION_TIMEOUT"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private showSecurityFields()V
    .locals 6

    const v5, 0x7f11074b

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v2, 0x7f110752

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityMsg:Landroid/widget/TextView;

    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityMsg:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityMsg:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getCheckShowPassword()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x90

    :goto_0
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->invalidate()V

    return-void

    :cond_3
    const/16 v1, 0x80

    goto :goto_0
.end method

.method private validate()V
    .locals 14

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    const-string/jumbo v0, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "isWifiApSettingUserModificationAllowed"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "isOpenWifiApAllowed"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v8, :cond_1

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v0, "isWifiApSettingUserModificationAllowed"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v7, 0x0

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v9, :cond_3

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    sget v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    if-nez v0, :cond_2

    const-string/jumbo v0, "isOpenWifiApAllowed"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_2

    const/4 v7, 0x0

    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_4

    if-nez v11, :cond_5

    :cond_4
    const/4 v7, 0x0

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    :cond_6
    sget v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    if-eq v0, v12, :cond_7

    sget v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    if-ne v0, v13, :cond_a

    :cond_7
    if-nez v10, :cond_a

    :goto_0
    const/4 v7, 0x0

    :cond_8
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_9
    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :catchall_1
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_a
    sget v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    if-eq v0, v12, :cond_b

    sget v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    if-ne v0, v13, :cond_8

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_8

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->validate()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public dismissSpinnerPopup()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->semDismissPopup()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->semDismissPopup()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->maxClientSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->maxClientSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->maxClientSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->semDismissPopup()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->semDismissPopup()V

    :cond_3
    return-void
.end method

.method public getCheckShowPassword()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v1, 0x7f11074c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string/jumbo v2, "TMO"

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "NEWCO"

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "USC"

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    :goto_1
    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedBand:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mMacaddrAcl:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_MAXCLIENT_MENU:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedMaxClient:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    :cond_1
    sget v2, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x0

    return-object v2

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto :goto_1

    :pswitch_0
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    return-object v0

    :pswitch_1
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :cond_4
    return-object v0

    :pswitch_2
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :cond_5
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getOpenWarningFlag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mUserSelectOpenSecurity:Z

    return v0
.end method

.method public getTempConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method public getTimeoutValueChangedFlag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isTimeoutValueChanged:Z

    return v0
.end method

.method public isSaveButtonClicked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSaveButtonClicked:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v1, 0x7f11074a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    :cond_1
    sget v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 12

    const/16 v8, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string/jumbo v9, "WifiApDialogSec"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onCheckedChanged, isChecked = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getCheckShowPassword()Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x90

    :goto_1
    or-int/lit8 v6, v6, 0x1

    invoke-virtual {v7, v6}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->invalidate()V

    goto :goto_0

    :cond_1
    const/16 v6, 0x80

    goto :goto_1

    :sswitch_1
    const-string/jumbo v8, "TMO"

    sget-object v9, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "NEWCO"

    sget-object v9, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    :cond_2
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    const v9, 0x7f0b0e04

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "SAMSUNG_HOTSPOT"

    invoke-virtual {v8, v9, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSharedPref:Landroid/content/SharedPreferences;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSharedPref:Landroid/content/SharedPreferences;

    const-string/jumbo v9, "HIDE_SSID_DO_NOTSHOW_AGAIN"

    invoke-interface {v8, v9, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_4

    :goto_2
    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->hideSsidDoNotShowAgain:Z

    const-string/jumbo v6, "WifiApDialogSec"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "hideSsidDoNotShowAgain = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->hideSsidDoNotShowAgain:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->hideSsidDoNotShowAgain:Z

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->showHideSsidWarningDialog()V

    goto/16 :goto_0

    :cond_4
    move v6, v7

    goto :goto_2

    :sswitch_2
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v9, 0x7f110757

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->advanced:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v7

    :goto_3
    invoke-virtual {v9, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->advanced:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v8, "input_method"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v1, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto/16 :goto_0

    :cond_5
    move v6, v8

    goto :goto_3

    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->restartFocusedViewInput()V

    goto/16 :goto_0

    :sswitch_3
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel2g:Landroid/widget/RadioButton;

    invoke-virtual {v9}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_7

    move v9, v7

    :goto_4
    iput v9, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedBand:I

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    if-eqz v2, :cond_8

    move v9, v7

    :goto_5
    invoke-virtual {v10, v9}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel5g:Landroid/widget/TextView;

    if-eqz v2, :cond_9

    :goto_6
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel5g:Landroid/widget/RadioButton;

    if-eqz v2, :cond_a

    :goto_7
    invoke-virtual {v8, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_0

    :cond_7
    move v9, v6

    goto :goto_4

    :cond_8
    move v9, v8

    goto :goto_5

    :cond_9
    move v8, v7

    goto :goto_6

    :cond_a
    move v7, v6

    goto :goto_7

    :sswitch_4
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel5g:Landroid/widget/RadioButton;

    invoke-virtual {v9}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_c

    move v9, v6

    :goto_8
    iput v9, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedBand:I

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    if-eqz v3, :cond_d

    move v9, v8

    :goto_9
    invoke-virtual {v10, v9}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel5g:Landroid/widget/TextView;

    if-eqz v3, :cond_b

    move v8, v7

    :cond_b
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel2g:Landroid/widget/RadioButton;

    if-eqz v3, :cond_e

    :goto_a
    invoke-virtual {v8, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItem:[Ljava/lang/String;

    if-eqz v6, :cond_0

    const-string/jumbo v6, "149"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iget v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast5gChannel:I

    goto/16 :goto_0

    :cond_c
    move v9, v7

    goto :goto_8

    :cond_d
    move v9, v7

    goto :goto_9

    :cond_e
    move v7, v6

    goto :goto_a

    :sswitch_5
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel5gPrefer:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_f

    const-string/jumbo v6, "149"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iget v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast5gChannel:I

    goto/16 :goto_0

    :cond_f
    iput v7, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iget v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f11074c -> :sswitch_0
        0x7f110750 -> :sswitch_1
        0x7f110756 -> :sswitch_2
        0x7f110759 -> :sswitch_5
        0x7f11075c -> :sswitch_3
        0x7f11075e -> :sswitch_4
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f040329

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d0205

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v11, 0x7f110751

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Spinner;

    iput-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    const v11, 0x7f0c0044

    invoke-direct {p0, v10, v11}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v11, 0x7f11074a

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Spinner;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->setView(Landroid/view/View;)V

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->setInverseBackgroundForced(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->sSalesCode:Ljava/lang/String;

    new-instance v7, Lcom/android/settings/Utils$LengthFilter;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-direct {v7, v10}, Lcom/android/settings/Utils$LengthFilter;-><init>(Landroid/content/Context;)V

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v11, 0x7f11049d

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v11, 0x7f110749

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    iput-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v11, 0x7f11074e

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsidErrorText:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    const v11, 0x7f0b114a

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setHint(I)V

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v11, 0x7f1106fa

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    iput-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v11, 0x7f110753

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPasswordErrorText:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v11, 0x7f11074f

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsidHideLayout:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsidHideLayout:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v11, 0x7f110750

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    iput-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    const v12, 0x7f0b0cfd

    invoke-static {v11, v12}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsidHideLayout:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v11, 0x7f110754

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPasswordShowLayout:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPasswordShowLayout:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v11, 0x7f110755

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mAdvancedShowLayout:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mAdvancedShowLayout:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v11, 0x7f110756

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    iput-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->advanced:Landroid/widget/CheckBox;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->advanced:Landroid/widget/CheckBox;

    invoke-virtual {v10, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v11, 0x7f11075f

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Spinner;

    iput-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v10, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    const v11, 0x7f0c004a

    invoke-direct {p0, v10, v11}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v11, 0x7f11075b

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel2gLayout:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v11, 0x7f11075d

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel5gLayout:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v11, 0x7f110758

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel5gLayoutPrefer:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v11, 0x7f11075c

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RadioButton;

    iput-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel2g:Landroid/widget/RadioButton;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v11, 0x7f11075e

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RadioButton;

    iput-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel5g:Landroid/widget/RadioButton;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v11, 0x7f110759

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    iput-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel5gPrefer:Landroid/widget/CheckBox;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel5gPrefer:Landroid/widget/CheckBox;

    invoke-virtual {v10, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel2g:Landroid/widget/RadioButton;

    invoke-virtual {v10, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel5g:Landroid/widget/RadioButton;

    invoke-virtual {v10, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v11, 0x7f110760

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel5g:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v11, 0x7f11075a

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mBand2gTextView:Landroid/widget/TextView;

    const/4 v5, 0x0

    sget-boolean v10, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_5G:Z

    if-nez v10, :cond_6

    :cond_0
    sget-boolean v10, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_5G:Z

    if-nez v10, :cond_8

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isWifiSharingEnabled()Z

    move-result v10

    if-eqz v10, :cond_8

    const-string/jumbo v10, "WifiApDialogSec"

    const-string/jumbo v11, "Wifi Sharing Enabled and 5Ghz not supported So make advanced menu invisible"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mAdvancedShowLayout:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    const v10, 0x7f0b1179

    invoke-virtual {v3, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v12, -0x1

    invoke-virtual {p0, v12, v10, v11}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const v10, 0x7f0b117b

    invoke-virtual {v3, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v12, -0x2

    invoke-virtual {p0, v12, v10, v11}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v10, v10, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v10, :cond_d

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v10, v10, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string/jumbo v11, "\tUSER#DEFINED#PWD#\n"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    const v11, 0x7f0b0e08

    invoke-static {v10, v11}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->setTitle(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v11, v11, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    const-string/jumbo v10, "TMO"

    sget-object v11, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string/jumbo v10, "NEWCO"

    sget-object v11, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string/jumbo v10, "USC"

    sget-object v11, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    :cond_2
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v10, v10, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v10, :cond_e

    const/4 v10, 0x0

    :goto_2
    invoke-virtual {v11, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_3
    sget v10, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_10

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_4
    sget v10, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_3

    sget v10, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_4

    :cond_3
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v10, v10, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v10, :cond_11

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v10, v10, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string/jumbo v11, "\tUSER#DEFINED#PWD#\n"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->requestFocus()Z

    :cond_4
    :goto_5
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    invoke-virtual {v10, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->ssidWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    const/4 v11, 0x1

    new-array v11, v11, [Landroid/text/InputFilter;

    new-instance v12, Lcom/android/settings/Utils$EmojiInputFilter;

    iget-object v13, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/settings/Utils$EmojiInputFilter;-><init>(Landroid/content/Context;)V

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    const/4 v11, 0x1

    new-array v11, v11, [Landroid/text/InputFilter;

    new-instance v12, Lcom/android/settings/Utils$EmojiInputFilter;

    iget-object v13, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/settings/Utils$EmojiInputFilter;-><init>(Landroid/content/Context;)V

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->passwordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v11, 0x7f11074c

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    invoke-virtual {v10, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget-boolean v10, Lcom/android/settings/Utils;->ENABLE_SHOW_PASSWORD_AS_DEFAULT:Z

    if-eqz v10, :cond_12

    const/4 v4, 0x1

    :goto_6
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v11, 0x7f11074c

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "wifi_ap_show_passwd"

    invoke-static {v11, v12, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_13

    const/4 v11, 0x1

    :goto_7
    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v10, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v11, 0x7f110762

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Spinner;

    iput-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->maxClientSpinner:Landroid/widget/Spinner;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->maxClientSpinner:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    sget-boolean v10, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_MAXCLIENT_MENU:Z

    if-eqz v10, :cond_1a

    const-string/jumbo v10, "TMO"

    sget-object v11, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string/jumbo v10, "NEWCO"

    sget-object v11, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19

    :cond_5
    sget v2, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->MAX_CLIENT:I

    if-lez v2, :cond_15

    new-array v8, v2, [Ljava/lang/String;

    const/4 v6, 0x0

    :goto_8
    if-ge v6, v2, :cond_14

    add-int/lit8 v10, v6, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isWifiSharingEnabled()Z

    move-result v10

    if-eqz v10, :cond_0

    const-string/jumbo v10, "WifiApDialogSec"

    const-string/jumbo v11, "Making band and channel selection invisible "

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel5gLayoutPrefer:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/Spinner;->setVisibility(I)V

    iget v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    const/16 v11, 0xe

    if-ge v10, v11, :cond_7

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel5gPrefer:Landroid/widget/CheckBox;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    :cond_7
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel5gPrefer:Landroid/widget/CheckBox;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    :cond_8
    sget-boolean v10, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_5G:Z

    if-nez v10, :cond_9

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    iget v11, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    invoke-virtual {v10, v11}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_0

    :cond_9
    const/4 v10, 0x1

    iput v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCountry:I

    iget v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCharger:I

    iget v11, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCountry:I

    add-int/2addr v10, v11

    if-lez v10, :cond_1

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel2gLayout:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel5gLayout:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCharger:I

    iget v11, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCountry:I

    add-int/2addr v10, v11

    new-array v10, v10, [Ljava/lang/String;

    iput-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItem:[Ljava/lang/String;

    const/4 v6, 0x0

    :goto_9
    iget v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCharger:I

    if-ge v6, v10, :cond_a

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItem:[Ljava/lang/String;

    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItemBasedOnCharger:[Ljava/lang/String;

    aget-object v11, v11, v6

    aput-object v11, v10, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_a
    iget v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCountry:I

    if-lez v10, :cond_b

    iget v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCharger:I

    :goto_a
    iget v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCharger:I

    iget v11, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCountry:I

    add-int/2addr v10, v11

    if-ge v6, v10, :cond_b

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItem:[Ljava/lang/String;

    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItemBasedOnCountry:[Ljava/lang/String;

    iget v12, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCharger:I

    sub-int v12, v6, v12

    aget-object v11, v11, v12

    aput-object v11, v10, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_b
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItem:[Ljava/lang/String;

    const v12, 0x1090008

    invoke-direct {v1, v10, v12, v11}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v10, 0x1090009

    invoke-virtual {v1, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    const/16 v11, 0xe

    if-ge v10, v11, :cond_c

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel2g:Landroid/widget/RadioButton;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel5g:Landroid/widget/RadioButton;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel5g:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    iget v11, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    invoke-virtual {v10, v11}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_0

    :cond_c
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel2g:Landroid/widget/RadioButton;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel5g:Landroid/widget/RadioButton;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel5g:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_d
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    const v11, 0x7f0b0e03

    invoke-static {v10, v11}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_e
    const/4 v10, 0x1

    goto/16 :goto_2

    :cond_f
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v11, v11, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_3

    :cond_10
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    sget v11, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    invoke-virtual {v10, v11}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_4

    :cond_11
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v11, v11, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_12
    const/4 v4, 0x0

    goto/16 :goto_6

    :cond_13
    const/4 v11, 0x0

    goto/16 :goto_7

    :cond_14
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    const v11, 0x7f040334

    invoke-direct {v0, v10, v11, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v10, 0x1090009

    invoke-virtual {v0, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->maxClientSpinner:Landroid/widget/Spinner;

    invoke-virtual {v10, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_15
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v10, :cond_16

    if-eqz v2, :cond_18

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v10, v10, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-ge v2, v10, :cond_18

    add-int/lit8 v10, v2, -0x1

    iput v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedMaxClient:I

    :cond_16
    :goto_b
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->maxClientSpinner:Landroid/widget/Spinner;

    invoke-virtual {v10, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->maxClientSpinner:Landroid/widget/Spinner;

    iget v11, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedMaxClient:I

    invoke-virtual {v10, v11}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_c
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v11, 0x7f110764

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Spinner;

    iput-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    const-string/jumbo v10, "TMO"

    sget-object v11, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_17

    const-string/jumbo v10, "NEWCO"

    sget-object v11, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b

    :cond_17
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    const v11, 0x7f0c0048

    invoke-direct {p0, v10, v11}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v10, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    iget v11, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedTimeoutValue:I

    invoke-virtual {v10, v11}, Landroid/widget/Spinner;->setSelection(I)V

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->bTimeOutSpinner:Z

    :goto_d
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->showSecurityFields()V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->validate()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "input_method"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodManager;

    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void

    :cond_18
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v10, v10, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedMaxClient:I

    goto :goto_b

    :cond_19
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v10, :cond_16

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v10, v10, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedMaxClient:I

    goto :goto_b

    :cond_1a
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v11, 0x7f110761

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->maxClientSpinner:Landroid/widget/Spinner;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/Spinner;->setVisibility(I)V

    goto/16 :goto_c

    :cond_1b
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v11, 0x7f110763

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/Spinner;->setVisibility(I)V

    goto :goto_d
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {p1, v4}, Landroid/widget/AdapterView;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    new-instance v5, Lcom/samsung/android/settings/wifi/WifiApDialogSec$5;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec$5;-><init>(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :sswitch_0
    sget v4, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    iput v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempSecurityTypeIndex:I

    sput p3, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    const-string/jumbo v4, "TMO"

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "NEWCO"

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    if-nez v4, :cond_3

    const v4, 0x7f0b0cb6

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_3
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mUserSelectOpenSecurity:Z

    const-string/jumbo v4, "VZW"

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "WifiApDialogSec"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onItemSelected - mSecurityTypeIndex ?  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  mDismissIfOpen ? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mDismissIfOpen:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v4, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mDismissIfOpen:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mUserSelectOpenSecurity:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->saveTempConfig()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->dismiss()V

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->showSecurityFields()V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->validate()V

    goto/16 :goto_0

    :sswitch_1
    sget v4, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    iput v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempSecurityTypeIndex:I

    sput p3, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    const-string/jumbo v4, "WifiApDialogSec"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onItemSelected - mSecurityTypeIndex ?  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_9

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_5
    :goto_1
    const-string/jumbo v4, "TMO"

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v4, "NEWCO"

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    if-nez v4, :cond_7

    const v4, 0x7f0b0cb6

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_7
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mUserSelectOpenSecurity:Z

    const-string/jumbo v4, "VZW"

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string/jumbo v4, "WifiApDialogSec"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onItemSelected - mSecurityTypeIndex ?  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  mDismissIfOpen ? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mDismissIfOpen:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v4, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    if-nez v4, :cond_8

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mDismissIfOpen:Z

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mUserSelectOpenSecurity:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->saveTempConfig()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->dismiss()V

    :cond_8
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->showSecurityFields()V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->validate()V

    goto/16 :goto_0

    :cond_9
    const/4 v4, 0x1

    if-ne p3, v4, :cond_5

    const/4 v4, 0x2

    sput v4, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    goto/16 :goto_1

    :sswitch_2
    iput p3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    iput p3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    goto/16 :goto_0

    :sswitch_3
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItem:[Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItem:[Ljava/lang/String;

    aget-object v4, v4, p3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iget v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast5gChannel:I

    goto/16 :goto_0

    :sswitch_4
    iput p3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedMaxClient:I

    goto/16 :goto_0

    :sswitch_5
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isTimeoutValueChanged:Z

    iput p3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedTimeoutValue:I

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->bTimeOutSpinner:Z

    if-nez v4, :cond_b

    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    const/16 v4, 0x4d

    iput v4, v3, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "feature"

    const-string/jumbo v5, "MHTO"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_c

    const-string/jumbo v4, "extra"

    const-string/jumbo v5, "NEVER TIMEOUT"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_2
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    :cond_b
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->bTimeOutSpinner:Z

    iget v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedTimeoutValue:I

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getTimeoutValueFromIndex(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->setTimeout(I)V

    goto/16 :goto_0

    :cond_c
    const/4 v4, 0x1

    if-ne p3, v4, :cond_d

    const-string/jumbo v4, "extra"

    const-string/jumbo v5, "5 MINS"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_d
    const/4 v4, 0x2

    if-ne p3, v4, :cond_e

    const-string/jumbo v4, "extra"

    const-string/jumbo v5, "10 MINS"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_e
    const/4 v4, 0x3

    if-ne p3, v4, :cond_f

    const-string/jumbo v4, "extra"

    const-string/jumbo v5, "20 MINS"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_f
    const/4 v4, 0x4

    if-ne p3, v4, :cond_10

    const-string/jumbo v4, "extra"

    const-string/jumbo v5, "30 MINS"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_10
    const/4 v4, 0x5

    if-ne p3, v4, :cond_a

    const-string/jumbo v4, "extra"

    const-string/jumbo v5, "60 MINS"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x7f11074a -> :sswitch_0
        0x7f110751 -> :sswitch_1
        0x7f11075f -> :sswitch_2
        0x7f110760 -> :sswitch_3
        0x7f110762 -> :sswitch_4
        0x7f110764 -> :sswitch_5
    .end sparse-switch
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

.method public onWindowFocusChanged(Z)V
    .locals 7

    const/4 v2, 0x0

    const-string/jumbo v0, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "isWifiApSettingUserModificationAllowed"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v2, 0x7f11074a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v2, 0x7f110750

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v0, "isWifiApSettingUserModificationAllowed"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v2, 0x7f11074c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v2, 0x7f110756

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->validate()V

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v2, 0x7f11074c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v2, 0x7f110756

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public setSaveButtonClicked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSaveButtonClicked:Z

    return-void
.end method

.method public setTimeoutValueChangedFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isTimeoutValueChanged:Z

    return-void
.end method

.method public show()V
    .locals 3

    const v2, 0x7f110757

    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v1, 0x7f110756

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showHideSsidWarningDialog()V
    .locals 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04032c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->customView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->customView:Landroid/view/View;

    const v3, 0x7f11076b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsidDoNotShowAgainLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->customView:Landroid/view/View;

    const v3, 0x7f11072b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsidDoNotShowAgain:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->customView:Landroid/view/View;

    const v3, 0x7f11076a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0d4f

    invoke-static {v2, v3}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0d4d

    invoke-static {v2, v3}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->customView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/WifiApDialogSec$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec$6;-><init>(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V

    const v3, 0x7f0b1412

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/WifiApDialogSec$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec$7;-><init>(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public showSoftInput()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_1
.end method
