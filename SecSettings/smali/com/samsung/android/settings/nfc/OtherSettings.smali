.class public Lcom/samsung/android/settings/nfc/OtherSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OtherSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nfc/OtherSettings$1;,
        Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;,
        Lcom/samsung/android/settings/nfc/OtherSettings$SettingsPackageMonitor;
    }
.end annotation


# static fields
.field static final DBG:Z

.field private static TAP_AND_PAY_CUSTOM_PAYMENT_SERVICES:I

.field private static final isSupportFelica:Z


# instance fields
.field private isDisabled:Z

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private screen:Landroid/support/v7/preference/PreferenceScreen;


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

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/nfc/OtherSettings;->isSupportFelica:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/nfc/OtherSettings$SettingsPackageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/nfc/OtherSettings$SettingsPackageMonitor;-><init>(Lcom/samsung/android/settings/nfc/OtherSettings;Lcom/samsung/android/settings/nfc/OtherSettings$SettingsPackageMonitor;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->isDisabled:Z

    new-instance v0, Lcom/samsung/android/settings/nfc/OtherSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/OtherSettings$1;-><init>(Lcom/samsung/android/settings/nfc/OtherSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xe4b

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    sget-boolean v1, Lcom/samsung/android/settings/nfc/OtherSettings;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "OtherPaymentSettings"

    const-string/jumbo v2, "onClick"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    sget-boolean v1, Lcom/samsung/android/settings/nfc/OtherSettings;->isSupportFelica:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->screen:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->isDisabled:Z

    :cond_1
    iget-object v1, v0, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/samsung/android/settings/nfc/OtherSettings;->isSupportFelica:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

    iget-object v2, v0, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/nfc/OtherBackend;->checkDefaultOtherApp(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

    iget-object v2, v0, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/nfc/OtherBackend;->disableDefaultOtherApp(Landroid/content/ComponentName;)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b04be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/samsung/android/settings/nfc/OtherSettings;->TAP_AND_PAY_CUSTOM_PAYMENT_SERVICES:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b04c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sget v3, Lcom/samsung/android/settings/nfc/OtherSettings;->TAP_AND_PAY_CUSTOM_PAYMENT_SERVICES:I

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->refresh()V

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

    iget-object v2, v0, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/nfc/OtherBackend;->enableDefaultOtherApp(Landroid/content/ComponentName;)V

    goto :goto_0

    :cond_5
    iget-boolean v1, v0, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->isSelected:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

    iget-object v2, v0, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/nfc/OtherBackend;->disableDefaultOtherApp(Landroid/content/ComponentName;)V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

    iget-object v2, v0, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/nfc/OtherBackend;->enableDefaultOtherApp(Landroid/content/ComponentName;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->refresh()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

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

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->screen:Landroid/support/v7/preference/PreferenceScreen;

    return-void
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

    sget-boolean v4, Lcom/samsung/android/settings/nfc/OtherSettings;->isSupportFelica:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

    iget-object v5, v1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/nfc/OtherBackend;->checkDefaultOtherApp(Landroid/content/ComponentName;)Z

    move-result v4

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

    :cond_2
    iget-boolean v4, v1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->isSelected:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

    iget-object v5, v1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/nfc/OtherBackend;->disableDefaultOtherApp(Landroid/content/ComponentName;)V

    goto :goto_0

    :cond_3
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

.method public onPause()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/settings/nfc/OtherSettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OtherPaymentSettings"

    const-string/jumbo v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    sget-boolean v0, Lcom/samsung/android/settings/nfc/OtherSettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OtherPaymentSettings"

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->refresh()V

    return-void
.end method

.method public refresh()V
    .locals 18

    sget-boolean v2, Lcom/samsung/android/settings/nfc/OtherSettings;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "OtherPaymentSettings"

    const-string/jumbo v3, "refresh()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/nfc/OtherSettings;->screen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/OtherBackend;->getOtherAppInfos()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    sget-boolean v2, Lcom/samsung/android/settings/nfc/OtherSettings;->isSupportFelica:Z

    if-eqz v2, :cond_1

    new-instance v10, Landroid/support/v7/preference/SecPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v10, v2}, Landroid/support/v7/preference/SecPreference;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d01d5

    invoke-virtual {v10, v2}, Landroid/support/v7/preference/SecPreference;->setLayoutResource(I)V

    const v2, 0x7f12129a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/nfc/OtherSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/support/v7/preference/SecPreference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/support/v7/preference/SecPreference;->setSelectable(Z)V

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/support/v7/preference/SecPreference;->setSingleLineTitle(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/nfc/OtherSettings;->screen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v2, v10}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    new-instance v1, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/nfc/OtherSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    move-object/from16 v5, p0

    move-object/from16 v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;-><init>(Landroid/content/Context;Landroid/nfc/NfcAdapter;Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    iget-object v2, v4, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->setSelectable(Z)V

    iget-object v2, v4, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/samsung/android/settings/nfc/OtherSettings;->isSupportFelica:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "OtherPaymentSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Couldn\'t load banner drawable of service "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v4, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/nfc/OtherSettings;->screen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    :cond_3
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/nfc/OtherSettings;->screen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d01ae

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v9, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    const v2, 0x7f0a05ae

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    const v2, 0x7f0a05ac

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    const v2, 0x7f0a05b0

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v14, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/nfc/OtherSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f010039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    invoke-virtual {v11}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    check-cast v16, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v9, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/nfc/OtherSettings;->setEmptyView(Landroid/view/View;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/nfc/OtherSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/nfc/OtherSettings;->screen:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/nfc/OtherSettings;->screen:Landroid/support/v7/preference/PreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/nfc/OtherSettings;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    return-void

    :cond_5
    const v2, 0x7f0a05af

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    const v2, 0x7f0a05b0

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    const v2, 0x7f0a05ac

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_6
    const-string/jumbo v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "gtactive2lte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "gtactive2wifi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f01003a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120096

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f01003b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f010038

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/nfc/OtherSettings;->screen:Landroid/support/v7/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/settings/nfc/OtherSettings;->isDisabled:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_3
.end method

.method public restoreOtherAppStatus(Landroid/content/ComponentName;ZZ)Z
    .locals 7

    const/4 v6, 0x1

    sget-boolean v3, Lcom/samsung/android/settings/nfc/OtherSettings;->DBG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "OtherPaymentSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restoreOtherAppStatus - isBufferFull : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p3, :cond_3

    const-string/jumbo v3, "OtherPaymentSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "LMRT is full, so restore app : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", expected restore state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    xor-int/lit8 v5, p2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-static {v3}, Landroid/nfc/cardemulation/CardEmulation;->getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/CardEmulation;

    move-result-object v3

    const-string/jumbo v4, "other"

    invoke-virtual {v3, v4}, Landroid/nfc/cardemulation/CardEmulation;->getServices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->isSelectedOtherService()Z

    move-result v3

    if-nez v3, :cond_4

    xor-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

    invoke-virtual {v3, p1}, Lcom/samsung/android/settings/nfc/OtherBackend;->enableDefaultOtherApp(Landroid/content/ComponentName;)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->refresh()V

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->screen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->isDisabled:Z

    return v6

    :cond_4
    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->isSelectedOtherService()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz p2, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

    invoke-virtual {v3, p1}, Lcom/samsung/android/settings/nfc/OtherBackend;->disableDefaultOtherApp(Landroid/content/ComponentName;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v3, "OtherPaymentSettings"

    const-string/jumbo v4, "It doesn\'t need to restore."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
