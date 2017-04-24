.class public Lcom/android/systemui/statusbar/DeviceState;
.super Ljava/lang/Object;
.source "DeviceState.java"


# static fields
.field private static mHandler:Landroid/os/Handler;

.field private static mImsManager:Lcom/sec/ims/ImsManager;

.field static final mPhoneCount:I


# direct methods
.method static synthetic -get0()Lcom/sec/ims/ImsManager;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/DeviceState;->mImsManager:Lcom/sec/ims/ImsManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sec/ims/ImsManager;)Lcom/sec/ims/ImsManager;
    .locals 0

    sput-object p0, Lcom/android/systemui/statusbar/DeviceState;->mImsManager:Lcom/sec/ims/ImsManager;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/DeviceState;->mPhoneCount:I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/DeviceState;->mImsManager:Lcom/sec/ims/ImsManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActiveSimCount(Landroid/content/Context;)I
    .locals 5

    const/4 v0, 0x0

    const-string/jumbo v1, "NOT_READY"

    const/4 v2, 0x0

    :goto_0
    sget v3, Lcom/android/systemui/statusbar/DeviceState;->mPhoneCount:I

    if-ge v2, v3, :cond_1

    const-string/jumbo v3, "gsm.sim.state"

    const-string/jumbo v4, "NOT_READY"

    invoke-static {v3, v2, v4}, Lcom/android/systemui/statusbar/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "READY"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0, v2}, Lcom/android/systemui/statusbar/DeviceState;->getSimSettingState(Landroid/content/Context;I)I

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static getImsManager(Landroid/content/Context;)Lcom/sec/ims/ImsManager;
    .locals 3

    sget-object v1, Lcom/android/systemui/statusbar/DeviceState;->mImsManager:Lcom/sec/ims/ImsManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/DeviceState;->mImsManager:Lcom/sec/ims/ImsManager;

    return-object v1

    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/DeviceState;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "DeviceState"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/systemui/statusbar/DeviceState;->mHandler:Landroid/os/Handler;

    :cond_1
    sget-object v1, Lcom/android/systemui/statusbar/DeviceState;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/statusbar/DeviceState$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/DeviceState$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v1, Lcom/android/systemui/statusbar/DeviceState;->mImsManager:Lcom/sec/ims/ImsManager;

    return-object v1
.end method

.method public static getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-ltz p1, :cond_0

    array-length v3, v2

    if-ge p1, v3, :cond_0

    aget-object v3, v2, p1

    if-eqz v3, :cond_0

    aget-object v1, v2, p1

    :cond_0
    if-nez v1, :cond_1

    :goto_0
    return-object p2

    :cond_1
    move-object p2, v1

    goto :goto_0
.end method

.method public static getNetworkCurrentLocation(I)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "ril.currentplmn"

    const-string/jumbo v1, ""

    invoke-static {v0, p0, v1}, Lcom/android/systemui/statusbar/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkOperatorNumeric(I)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "gsm.operator.numeric"

    const-string/jumbo v1, ""

    invoke-static {v0, p0, v1}, Lcom/android/systemui/statusbar/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNumberOfSim(Landroid/content/Context;)I
    .locals 2

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static getOperatorNumeric(I)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "gsm.sim.operator.numeric"

    const-string/jumbo v1, ""

    invoke-static {v0, p0, v1}, Lcom/android/systemui/statusbar/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getReadySimCount()I
    .locals 5

    const/4 v0, 0x0

    const-string/jumbo v1, "NOT_READY"

    const/4 v2, 0x0

    :goto_0
    sget v3, Lcom/android/systemui/statusbar/DeviceState;->mPhoneCount:I

    if-ge v2, v3, :cond_1

    const-string/jumbo v3, "gsm.sim.state"

    const-string/jumbo v4, "NOT_READY"

    invoke-static {v3, v2, v4}, Lcom/android/systemui/statusbar/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "READY"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static getSimSettingState(Landroid/content/Context;I)I
    .locals 4

    const/4 v3, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "phone1_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "phone2_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static isFotaUpdate(Landroid/content/Context;)Z
    .locals 8

    const-string/jumbo v6, "FingerprintVersion"

    const-string/jumbo v7, "unknown"

    invoke-static {p0, v6, v7}, Lcom/android/systemui/Prefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "CSCVersion"

    const-string/jumbo v7, "unknown"

    invoke-static {p0, v6, v7}, Lcom/android/systemui/Prefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "SalesCode"

    const-string/jumbo v7, "unknown"

    invoke-static {p0, v6, v7}, Lcom/android/systemui/Prefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "ro.build.fingerprint"

    const-string/jumbo v7, "unknown"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "ril.official_cscver"

    const-string/jumbo v7, "unknown"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "ro.csc.sales_code"

    const-string/jumbo v7, "unknown"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    return v6

    :cond_0
    const-string/jumbo v6, "DeviceState"

    const-string/jumbo v7, "isFotaUpdate!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "FingerprintVersion"

    invoke-static {p0, v6, v1}, Lcom/android/systemui/Prefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "CSCVersion"

    invoke-static {p0, v6, v0}, Lcom/android/systemui/Prefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "SalesCode"

    invoke-static {p0, v6, v2}, Lcom/android/systemui/Prefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6
.end method

.method public static isLightSensorAvailable(Landroid/content/Context;)Z
    .locals 6

    const-string/jumbo v5, "sensor"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/4 v5, 0x5

    if-ne v3, v5, :cond_0

    const/4 v5, 0x1

    return v5

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    return v5
.end method

.method public static isLocationMenuNeed(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/sec/ims/settings/GlobalSettingsLoader;->loadGlobalSettings(Landroid/content/Context;)Lcom/sec/ims/settings/GlobalSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/ims/settings/GlobalSettings;->getVowifiNeedLocationMenu()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    const-string/jumbo v2, "DeviceState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isLocationMenuNeed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMobileKeyboardConnected(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static isMultisim()Z
    .locals 2

    const/4 v0, 0x1

    sget v1, Lcom/android/systemui/statusbar/DeviceState;->mPhoneCount:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNoSimState()Z
    .locals 4

    const-string/jumbo v0, "NOT_READY"

    const/4 v1, 0x0

    :goto_0
    sget v2, Lcom/android/systemui/statusbar/DeviceState;->mPhoneCount:I

    if-ge v1, v2, :cond_1

    const-string/jumbo v2, "gsm.sim.state"

    const-string/jumbo v3, "NOT_READY"

    invoke-static {v2, v1, v3}, Lcom/android/systemui/statusbar/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "ABSENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public static isQuickConnectSupported(Landroid/content/Context;)Z
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.android.oneconnect"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "DeviceState"

    const-string/jumbo v3, "NameNotFoundException!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method public static isSimCardInserted(I)Z
    .locals 4

    const/4 v1, 0x0

    const-string/jumbo v2, "ril.ICC_TYPE"

    const-string/jumbo v3, "0"

    invoke-static {v2, p0, v3}, Lcom/android/systemui/statusbar/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static isSimReady()Z
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const-string/jumbo v2, "DeviceState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " isSimReady ? "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isMultisim()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->getReadySimCount()I

    move-result v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isMultisim()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->getReadySimCount()I

    move-result v1

    if-nez v1, :cond_1

    return v4

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isMultisim()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    return v4

    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public static isSupportSFinder(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.sec.feature.findo"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTablet()Z
    .locals 2

    const-string/jumbo v0, "ro.build.characteristics"

    const-string/jumbo v1, "phone"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isTelephonyIdle(Landroid/content/Context;)Z
    .locals 6

    const/4 v3, 0x0

    const-string/jumbo v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    const/4 v1, 0x1

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isMultisim()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v4

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/android/internal/telephony/ITelephony;->isIdleForSubscriber(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->isIdleForSubscriber(ILjava/lang/String;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->isIdle(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    :catchall_0
    move-exception v3

    return v1
.end method

.method public static isVoLTESupportedSIM(Landroid/content/Context;)Z
    .locals 7

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/android/systemui/statusbar/DeviceState;->getImsManager(Landroid/content/Context;)Lcom/sec/ims/ImsManager;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v4, "mmtel"

    const/16 v5, 0xd

    invoke-virtual {v2, v4, v5}, Lcom/sec/ims/ImsManager;->isServiceAvailable(Ljava/lang/String;I)Z

    move-result v1

    invoke-virtual {v2}, Lcom/sec/ims/ImsManager;->hasVoLteSim()Z

    move-result v0

    const-string/jumbo v4, "DeviceState"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isVoLTESupportedSIM hasVoLteSim "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static isVoWifiProvisioned(Landroid/content/Context;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v3, "133"

    aput-object v3, v0, v4

    invoke-static {p0}, Lcom/android/systemui/statusbar/DeviceState;->getImsManager(Landroid/content/Context;)Lcom/sec/ims/ImsManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/sec/ims/ImsManager;->getConfigValues([Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v4, "1"

    const-string/jumbo v3, "133"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    :cond_0
    return v4
.end method

.method public static isVolteEnabled(Landroid/content/Context;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v5, "93"

    aput-object v5, v0, v7

    invoke-static {p0}, Lcom/android/systemui/statusbar/DeviceState;->getImsManager(Landroid/content/Context;)Lcom/sec/ims/ImsManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lcom/sec/ims/ImsManager;->getConfigValues([Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string/jumbo v6, "1"

    const-string/jumbo v5, "93"

    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v5, "volte"

    invoke-virtual {v2, v5}, Lcom/sec/ims/ImsManager;->getRegistrationInfoByServiceType(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration;

    move-result-object v4

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    const-string/jumbo v5, "mmtel"

    invoke-virtual {v4, v5}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v8

    :cond_0
    return v7
.end method
