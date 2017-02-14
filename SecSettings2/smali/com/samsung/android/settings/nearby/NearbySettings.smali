.class public Lcom/samsung/android/settings/nearby/NearbySettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "NearbySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nearby/NearbySettings$1;,
        Lcom/samsung/android/settings/nearby/NearbySettings$2;
    }
.end annotation


# static fields
.field protected static lengthDeviceNameMax:I


# instance fields
.field private bRegisterReceiver:Z

.field private bSdCardSupport:Z

.field private bSelfFinish:Z

.field private mAcceptDevice:Lcom/samsung/android/settings/nearby/AcceptListPreference;

.field private mActivity:Landroid/app/Activity;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDeviceName:Landroid/preference/PreferenceScreen;

.field private mDownloadFrom:Landroid/preference/ListPreference;

.field private mDownloadTo:Landroid/preference/ListPreference;

.field private mHandler:Landroid/os/Handler;

.field private mNearbyEnabler:Lcom/samsung/android/settings/nearby/NearbyEnabler;

.field private mRejectDevice:Lcom/samsung/android/settings/nearby/RejectListPreference;

.field private mSharedContents:Landroid/preference/MultiSelectListPreference;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/nearby/NearbySettings;)Lcom/samsung/android/settings/nearby/AcceptListPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/samsung/android/settings/nearby/AcceptListPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/nearby/NearbySettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/nearby/NearbySettings;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mDownloadTo:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/nearby/NearbySettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/nearby/NearbySettings;)Lcom/samsung/android/settings/nearby/NearbyEnabler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mNearbyEnabler:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/nearby/NearbySettings;)Lcom/samsung/android/settings/nearby/RejectListPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/samsung/android/settings/nearby/RejectListPreference;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/nearby/NearbySettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->bSelfFinish:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/settings/nearby/NearbySettings;->lengthDeviceNameMax:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->bRegisterReceiver:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->bSelfFinish:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->bSdCardSupport:Z

    iput-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mActivity:Landroid/app/Activity;

    iput-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    new-instance v0, Lcom/samsung/android/settings/nearby/NearbySettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nearby/NearbySettings$1;-><init>(Lcom/samsung/android/settings/nearby/NearbySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/nearby/NearbySettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nearby/NearbySettings$2;-><init>(Lcom/samsung/android/settings/nearby/NearbySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private initPreferences()V
    .locals 5

    const-string/jumbo v1, "NearbySettings"

    const-string/jumbo v2, "initPreferences"

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mNearbyEnabler:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mDeviceName:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mNearbyEnabler:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v2}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->bSdCardSupport:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mDownloadTo:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mDownloadTo:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mDownloadFrom:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mDownloadFrom:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "NearbySettings"

    const-string/jumbo v2, "initPreferences"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isSupportSDCard()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private setBroadcastReceiver()V
    .locals 6

    const-string/jumbo v2, "NearbySettings"

    const-string/jumbo v3, "setBroadcastReceiver"

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-boolean v2, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->bRegisterReceiver:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "com.samsung.android.nearby.mediaserver.REFRESH_DEVICE_LIST"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "com.android.settings.allshare.UPDATE_LIST"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "com.android.settings.allshare.ACTIVITY_START"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-boolean v2, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->bSdCardSupport:Z

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->bRegisterReceiver:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "NearbySettings"

    const-string/jumbo v3, "setBroadcastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unregisterBroadcastReceiver()V
    .locals 5

    const-string/jumbo v1, "NearbySettings"

    const-string/jumbo v2, "unregisterBroadcastReceiver"

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->bRegisterReceiver:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->bRegisterReceiver:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "NearbySettings"

    const-string/jumbo v2, "unregisterBroadcastReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isExternalStorageSdMounted()Z
    .locals 8

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "storage"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    iget-object v4, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mNearbyEnabler:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mNearbyEnabler:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v4}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->getExernalSdPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v4, "mounted"

    invoke-virtual {v2, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "NearbySettings"

    const-string/jumbo v5, "isExternalStorageSdMounted()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "path:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    :cond_0
    :goto_0
    const-string/jumbo v4, "NearbySettings"

    const-string/jumbo v5, "isExternalStorageSdMounted()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v4, "NearbySettings"

    const-string/jumbo v5, "isExternalStorageSdMounted"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 13

    const-string/jumbo v0, "NearbySettings"

    const-string/jumbo v1, "onActivityCreated"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v9}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v0, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    new-instance v0, Lcom/samsung/android/settings/nearby/NearbyEnabler;

    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v3, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mDeviceName:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mSharedContents:Landroid/preference/MultiSelectListPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/samsung/android/settings/nearby/AcceptListPreference;

    iget-object v6, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/samsung/android/settings/nearby/RejectListPreference;

    iget-object v7, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mDownloadTo:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mDownloadFrom:Landroid/preference/ListPreference;

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/settings/nearby/NearbyEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Landroid/preference/PreferenceScreen;Landroid/preference/MultiSelectListPreference;Landroid/preference/MultiSelectListPreference;Landroid/preference/MultiSelectListPreference;Landroid/preference/ListPreference;Landroid/preference/ListPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mNearbyEnabler:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    iget-object v0, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/samsung/android/settings/nearby/AcceptListPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mNearbyEnabler:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nearby/AcceptListPreference;->setEnabler(Lcom/samsung/android/settings/nearby/NearbyEnabler;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/samsung/android/settings/nearby/RejectListPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mNearbyEnabler:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nearby/RejectListPreference;->setEnabler(Lcom/samsung/android/settings/nearby/NearbyEnabler;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->bSdCardSupport:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mDownloadTo:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nearby/NearbySettings;->isExternalStorageSdMounted()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v10

    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v0, "com.android.settings.allshare.ACTIVITY_START"

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "FLAG"

    invoke-virtual {v12, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v11

    const-string/jumbo v0, "NearbySettings"

    const-string/jumbo v1, "onActivityCreated"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v1, "NearbySettings"

    const-string/jumbo v2, "onCreate"

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/settings/nearby/NearbySettings;->isSupportSDCard()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->bSdCardSupport:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/nearby/NearbySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    const-string/jumbo v2, "pref_allshare"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->bSdCardSupport:Z

    if-eqz v1, :cond_1

    const v1, 0x7f080016

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nearby/NearbySettings;->addPreferencesFromResource(I)V

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nearby/NearbySettings;->setHasOptionsMenu(Z)V

    const/16 v1, 0x37

    sput v1, Lcom/samsung/android/settings/nearby/NearbySettings;->lengthDeviceNameMax:I

    :try_start_0
    const-string/jumbo v1, "allshare_device_name"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mDeviceName:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mDeviceName:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    const-string/jumbo v1, "allshare_shared_contents"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/MultiSelectListPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mSharedContents:Landroid/preference/MultiSelectListPreference;

    iget-boolean v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->bSdCardSupport:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "allshare_download_to"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mDownloadTo:Landroid/preference/ListPreference;

    :cond_0
    const-string/jumbo v1, "allshare_download_from"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mDownloadFrom:Landroid/preference/ListPreference;

    const-string/jumbo v1, "allshare_accept_device"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/nearby/AcceptListPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/samsung/android/settings/nearby/AcceptListPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/samsung/android/settings/nearby/AcceptListPreference;

    const v2, 0x7f0b0371

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/nearby/AcceptListPreference;->setPositiveButtonText(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/samsung/android/settings/nearby/AcceptListPreference;

    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/nearby/AcceptListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v1, "allshare_reject_device"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/nearby/RejectListPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/samsung/android/settings/nearby/RejectListPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/samsung/android/settings/nearby/RejectListPreference;

    const v2, 0x7f0b0371

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/nearby/RejectListPreference;->setPositiveButtonText(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/samsung/android/settings/nearby/RejectListPreference;

    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/nearby/RejectListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/settings/nearby/NearbySettings;->setBroadcastReceiver()V

    return-void

    :cond_1
    const v1, 0x7f080017

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nearby/NearbySettings;->addPreferencesFromResource(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "NearbySettings"

    const-string/jumbo v2, "onCreate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception Thread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "NearbySettings"

    const-string/jumbo v2, "onCreateOptionsMenu"

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x7f0b0388

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nearby/NearbySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/settings/nearby/DMSUtil;->isVZWFeature()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/nearby/DMSUtil;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    const/4 v1, 0x1

    invoke-interface {p1, v4, v4, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void

    :cond_1
    const v1, 0x7f0b0387

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nearby/NearbySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 5

    const-string/jumbo v1, "NearbySettings"

    const-string/jumbo v2, "onDestroy"

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->bSelfFinish:Z

    if-nez v1, :cond_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/nearby/NearbySettings;->unregisterBroadcastReceiver()V

    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "NearbySettings"

    const-string/jumbo v2, "onDestroy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const-string/jumbo v2, "NearbySettings"

    const-string/jumbo v3, "onOptionsItemSelected"

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    :pswitch_0
    const-string/jumbo v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/nearby/DMSUtil;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const v0, 0x7f0b0388

    :goto_1
    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->newInstance(I)Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/nearby/NearbySettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "dialog"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0b0387

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    const-string/jumbo v1, "NearbySettings"

    const-string/jumbo v2, "onPause"

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mNearbyEnabler:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mNearbyEnabler:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->pause()V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.nearby.mediaserver.SET_NEARBY_FLAG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "FLAG"

    invoke-virtual {p0}, Lcom/samsung/android/settings/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "SCREEN"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 11

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string/jumbo v6, "NearbySettings"

    const-string/jumbo v7, "onPreferenceClick"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "allshare_accept_device"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "allshare_reject_device"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "allshare_accept_device"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "NearbySettings"

    const-string/jumbo v7, "onPreferenceClick"

    const-string/jumbo v8, "KEY_ALLSHARE_ACCEPTED_DEVICE"

    invoke-static {v6, v7, v8}, Lcom/samsung/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/samsung/android/settings/nearby/AcceptListPreference;

    invoke-virtual {v6}, Lcom/samsung/android/settings/nearby/AcceptListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    const/4 v6, -0x1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v3, Lcom/samsung/android/settings/nearby/ListItemListener;

    invoke-direct {v3, v5}, Lcom/samsung/android/settings/nearby/ListItemListener;-><init>(Landroid/widget/Button;)V

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/samsung/android/settings/nearby/DeleteButtonListener;

    iget-object v6, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-direct {v0, v3, v1, v6, v7}, Lcom/samsung/android/settings/nearby/DeleteButtonListener;-><init>(Lcom/samsung/android/settings/nearby/ListItemListener;Landroid/app/Dialog;Landroid/content/Context;Z)V

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "allshare_reject_device"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "NearbySettings"

    const-string/jumbo v7, "onPreferenceClick"

    const-string/jumbo v8, "KEY_ALLSHARE_REJECTED_DEVICE"

    invoke-static {v6, v7, v8}, Lcom/samsung/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/samsung/android/settings/nearby/RejectListPreference;

    invoke-virtual {v6}, Lcom/samsung/android/settings/nearby/RejectListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    const/4 v6, -0x1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    if-eqz v4, :cond_2

    new-instance v3, Lcom/samsung/android/settings/nearby/ListItemListener;

    invoke-direct {v3, v5}, Lcom/samsung/android/settings/nearby/ListItemListener;-><init>(Landroid/widget/Button;)V

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/samsung/android/settings/nearby/DeleteButtonListener;

    iget-object v6, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-direct {v0, v3, v1, v6, v7}, Lcom/samsung/android/settings/nearby/DeleteButtonListener;-><init>(Lcom/samsung/android/settings/nearby/ListItemListener;Landroid/app/Dialog;Landroid/content/Context;Z)V

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return v9

    :catch_0
    move-exception v2

    const-string/jumbo v6, "NearbySettings"

    const-string/jumbo v7, "onPreferenceClick"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    return v10
.end method

.method public onResume()V
    .locals 5

    const-string/jumbo v2, "NearbySettings"

    const-string/jumbo v3, "onResume"

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    iget-object v2, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mNearbyEnabler:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mNearbyEnabler:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v2}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->resume()V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/nearby/NearbySettings;->initPreferences()V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.nearby.mediaserver.SET_NEARBY_FLAG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "FLAG"

    invoke-virtual {p0}, Lcom/samsung/android/settings/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "SCREEN"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v0, "NearbySettings"

    const-string/jumbo v1, "onSaveInstanceState"

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
