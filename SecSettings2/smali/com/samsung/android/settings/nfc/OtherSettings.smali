.class public Lcom/samsung/android/settings/nfc/OtherSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "OtherSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nfc/OtherSettings$1;,
        Lcom/samsung/android/settings/nfc/OtherSettings$2;,
        Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;,
        Lcom/samsung/android/settings/nfc/OtherSettings$SettingsPackageMonitor;
    }
.end annotation


# static fields
.field private static final CSC_SALES_CODE:Ljava/lang/String;

.field static final DBG:Z

.field private static final OMC_SALES_CODE:Ljava/lang/String;

.field public static OtherAppInfo_backup:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

.field private static final SALES_CODE:Ljava/lang/String;

.field private static TAP_AND_PAY_CUSTOM_PAYMENT_SERVICES:I


# instance fields
.field private alert:Landroid/app/AlertDialog;

.field private final mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private screen:Landroid/preference/PreferenceScreen;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/nfc/OtherSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    sput-boolean v0, Lcom/samsung/android/settings/nfc/OtherSettings;->DBG:Z

    const-string/jumbo v0, "persist.omc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/nfc/OtherSettings;->OMC_SALES_CODE:Ljava/lang/String;

    const-string/jumbo v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/nfc/OtherSettings;->CSC_SALES_CODE:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/settings/nfc/OtherSettings;->OMC_SALES_CODE:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/nfc/OtherSettings;->OMC_SALES_CODE:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/nfc/OtherSettings;->CSC_SALES_CODE:Ljava/lang/String;

    :goto_0
    sput-object v0, Lcom/samsung/android/settings/nfc/OtherSettings;->SALES_CODE:Ljava/lang/String;

    return-void

    :cond_1
    sget-object v0, Lcom/samsung/android/settings/nfc/OtherSettings;->OMC_SALES_CODE:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/nfc/OtherSettings$SettingsPackageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/nfc/OtherSettings$SettingsPackageMonitor;-><init>(Lcom/samsung/android/settings/nfc/OtherSettings;Lcom/samsung/android/settings/nfc/OtherSettings$SettingsPackageMonitor;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    new-instance v0, Lcom/samsung/android/settings/nfc/OtherSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/OtherSettings$1;-><init>(Lcom/samsung/android/settings/nfc/OtherSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/nfc/OtherSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/OtherSettings$2;-><init>(Lcom/samsung/android/settings/nfc/OtherSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    iget-object v1, v0, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    sput-object v0, Lcom/samsung/android/settings/nfc/OtherSettings;->OtherAppInfo_backup:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    iget-boolean v1, v0, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->isSelected:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

    iget-object v2, v0, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/nfc/OtherBackend;->disableDefaultOtherApp(Landroid/content/ComponentName;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/samsung/android/settings/nfc/OtherSettings;->TAP_AND_PAY_CUSTOM_PAYMENT_SERVICES:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/samsung/android/settings/nfc/OtherSettings;->TAP_AND_PAY_CUSTOM_PAYMENT_SERVICES:I

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->refresh()V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

    iget-object v2, v0, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/nfc/OtherBackend;->enableDefaultOtherApp(Landroid/content/ComponentName;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->refresh()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    sget-boolean v0, Lcom/samsung/android/settings/nfc/OtherSettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OtherPaymentSettings"

    const-string/jumbo v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/samsung/android/settings/nfc/OtherBackend;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/nfc/OtherBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->screen:Landroid/preference/PreferenceScreen;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040192

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    if-eqz v4, :cond_0

    const-string/jumbo v0, "com.gsma.services.nfc.SELECT_DEFAULT_SERVICE"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v4, :cond_0

    sput-object v1, Lcom/samsung/android/settings/nfc/OtherSettings;->OtherAppInfo_backup:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    iget-boolean v4, v1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->isSelected:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

    iget-object v5, v1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/nfc/OtherBackend;->disableDefaultOtherApp(Landroid/content/ComponentName;)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->refresh()V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v4, v1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/nfc/OtherSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    const/4 v4, 0x1

    return v4

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

    iget-object v5, v1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/nfc/OtherBackend;->enableDefaultOtherApp(Landroid/content/ComponentName;)V

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v4, "OtherPaymentSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "HCE Setting Activity is not found. : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v4, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    if-nez v6, :cond_0

    const-class v0, Lcom/samsung/android/settings/nfc/PaymentSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b186c

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/nfc/OtherSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->finishFragment()V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v4
.end method

.method public onPause()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/settings/nfc/OtherSettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OtherPaymentSettings"

    const-string/jumbo v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->alert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 6

    const/4 v5, 0x0

    sget-boolean v2, Lcom/samsung/android/settings/nfc/OtherSettings;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "OtherPaymentSettings"

    const-string/jumbo v3, "onResume()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "SBM"

    sget-object v3, Lcom/samsung/android/settings/nfc/OtherSettings;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getCLFLockStatus()I

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v2, Lcom/samsung/android/settings/nfc/OtherSettings;->DBG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "OtherPaymentSettings"

    const-string/jumbo v3, "NFC Locked. nfc_tapandpay_not_available"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f0b1b98

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/nfc/OtherSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/nfc/OtherSettings$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/nfc/OtherSettings$3;-><init>(Lcom/samsung/android/settings/nfc/OtherSettings;)V

    const v4, 0x104000a

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->alert:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->refresh()V

    return-void
.end method

.method public refresh()V
    .locals 13

    sget-boolean v1, Lcom/samsung/android/settings/nfc/OtherSettings;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "OtherPaymentSettings"

    const-string/jumbo v2, "refresh()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

    invoke-virtual {v1}, Lcom/samsung/android/settings/nfc/OtherBackend;->getOtherAppInfos()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    new-instance v0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;-><init>(Landroid/content/Context;Landroid/nfc/NfcAdapter;Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    iget-object v1, v3, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, v3, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1104b3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1104b2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1104b0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    check-cast v12, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nfc/OtherSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1104b1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1104b0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1104b2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_4
    const/16 v1, 0x8

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_2
.end method

.method public restoreDefaultOtherApp()Z
    .locals 2

    sget-boolean v0, Lcom/samsung/android/settings/nfc/OtherSettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OtherPaymentSettings"

    const-string/jumbo v1, "restoreDefaultOtherApp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/nfc/OtherSettings;->OtherAppInfo_backup:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/settings/nfc/OtherSettings;->OtherAppInfo_backup:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    iget-boolean v0, v0, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->isSelected:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

    sget-object v1, Lcom/samsung/android/settings/nfc/OtherSettings;->OtherAppInfo_backup:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/OtherBackend;->enableDefaultOtherApp(Landroid/content/ComponentName;)V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

    sget-object v1, Lcom/samsung/android/settings/nfc/OtherSettings;->OtherAppInfo_backup:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/OtherBackend;->disableDefaultOtherApp(Landroid/content/ComponentName;)V

    goto :goto_0
.end method
