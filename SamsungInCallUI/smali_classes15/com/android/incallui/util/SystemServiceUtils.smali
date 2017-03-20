.class public Lcom/android/incallui/util/SystemServiceUtils;
.super Ljava/lang/Object;
.source "SystemServiceUtils.java"


# static fields
.field private static final BOOSTING_TIMEOUT:I = 0x7d0

.field private static final LOG_TAG:Ljava/lang/String; = "SystemServiceUtils"

.field private static sCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

.field private static sCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

.field public static sIsExecuteMoveTaskToBack:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    sput-object v0, Lcom/android/incallui/util/SystemServiceUtils;->sCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

    .line 58
    sput-object v0, Lcom/android/incallui/util/SystemServiceUtils;->sCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 61
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/util/SystemServiceUtils;->sIsExecuteMoveTaskToBack:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static awaken()V
    .locals 4

    .prologue
    .line 81
    const-string v2, "dreams"

    invoke-static {v2}, Lcom/android/incallui/service/SecServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 82
    .local v1, "service":Landroid/os/IBinder;
    invoke-static {v1}, Lcom/android/incallui/wrapper/IDreamManagerWrapper;->asInterface(Landroid/os/IBinder;)Lcom/android/incallui/wrapper/IDreamManagerWrapper;

    move-result-object v0

    .line 84
    .local v0, "dream":Lcom/android/incallui/wrapper/IDreamManagerWrapper;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/wrapper/IDreamManagerWrapper;->isDreaming()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    const-string v2, "SystemServiceUtils"

    const-string v3, "daydreaming! awake!"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Lcom/android/incallui/wrapper/IDreamManagerWrapper;->awaken()V

    .line 88
    :cond_0
    return-void
.end method

.method public static boostCPU(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 133
    if-nez p0, :cond_0

    .line 134
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 136
    :cond_0
    sget-object v4, Lcom/android/incallui/util/SystemServiceUtils;->sCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v4, :cond_1

    .line 137
    const/16 v4, 0xe

    invoke-static {p0, v4}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v4

    sput-object v4, Lcom/android/incallui/util/SystemServiceUtils;->sCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

    .line 138
    sget-object v4, Lcom/android/incallui/util/SystemServiceUtils;->sCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v4, :cond_1

    .line 139
    sget-object v4, Lcom/android/incallui/util/SystemServiceUtils;->sCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v4}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency()[I

    move-result-object v1

    .line 140
    .local v1, "coreNumTable":[I
    if-eqz v1, :cond_1

    array-length v4, v1

    if-lez v4, :cond_1

    .line 141
    sget-object v4, Lcom/android/incallui/util/SystemServiceUtils;->sCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

    aget v5, v1, v7

    invoke-virtual {v4, v5}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    .line 146
    .end local v1    # "coreNumTable":[I
    :cond_1
    const/16 v0, 0x7d0

    .line 147
    .local v0, "boostingTimeout":I
    sget-object v4, Lcom/android/incallui/util/SystemServiceUtils;->sCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v4, :cond_2

    .line 149
    :try_start_0
    const-string v4, "SystemServiceUtils"

    const-string v5, "CoreNumLockHelper.acquire()"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    sget-object v4, Lcom/android/incallui/util/SystemServiceUtils;->sCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v4, v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_2
    :goto_0
    sget-object v4, Lcom/android/incallui/util/SystemServiceUtils;->sCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v4, :cond_3

    .line 157
    const/16 v4, 0xc

    invoke-static {p0, v4}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v4

    sput-object v4, Lcom/android/incallui/util/SystemServiceUtils;->sCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 158
    sget-object v4, Lcom/android/incallui/util/SystemServiceUtils;->sCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v4, :cond_3

    .line 159
    sget-object v4, Lcom/android/incallui/util/SystemServiceUtils;->sCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v4}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency()[I

    move-result-object v3

    .line 160
    .local v3, "supportedCPUFreqTable":[I
    if-eqz v3, :cond_3

    .line 161
    sget-object v4, Lcom/android/incallui/util/SystemServiceUtils;->sCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    aget v5, v3, v7

    invoke-virtual {v4, v5}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    .line 165
    .end local v3    # "supportedCPUFreqTable":[I
    :cond_3
    sget-object v4, Lcom/android/incallui/util/SystemServiceUtils;->sCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v4, :cond_4

    .line 167
    :try_start_1
    const-string v4, "SystemServiceUtils"

    const-string v5, "CpuBooster.acquire()"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    sget-object v4, Lcom/android/incallui/util/SystemServiceUtils;->sCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v4, v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 174
    :cond_4
    :goto_1
    return-void

    .line 151
    :catch_0
    move-exception v2

    .line 152
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "SystemServiceUtils"

    const-string v5, "CoreNumLockHelper.acquire() is failed"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v4, "SystemServiceUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "boostCPU: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 169
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 170
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v4, "SystemServiceUtils"

    const-string v5, "CpuBooster.acquire() is failed"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v4, "SystemServiceUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "boostCPU: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public static forceWakeUpScreen(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    if-nez p0, :cond_0

    .line 101
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 104
    :cond_0
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 106
    .local v0, "powerManager":Landroid/os/PowerManager;
    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isDreaming()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 107
    :cond_1
    const-string v1, "SystemServiceUtils"

    const-string v2, "forceWakeUpScreen"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 108
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/incallui/wrapper/PowerManagerWrapper;->wakeUp(Landroid/os/PowerManager;J)V

    .line 110
    :cond_2
    return-void
.end method

.method public static getAppVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 177
    if-nez p0, :cond_0

    .line 178
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 180
    :cond_0
    const-string v3, ""

    .line 181
    .local v3, "versionName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 182
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_1

    .line 184
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 185
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_1

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    :goto_0
    return-object v3

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "SystemServiceUtils"

    const-string v5, "Application Not Found."

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getCameraTask()Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 289
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 290
    .local v2, "context":Landroid/content/Context;
    const-string v7, "activity"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 291
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/4 v7, 0x2

    const/4 v8, 0x3

    invoke-virtual {v0, v7, v8}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v4

    .line 294
    .local v4, "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const/4 v1, 0x0

    .line 296
    .local v1, "cameraTaskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 297
    .local v5, "taskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    if-nez v5, :cond_1

    .line 298
    const-string v8, "SystemServiceUtils"

    const-string v9, "RecentTaskInfo taskInfo == null continue"

    invoke-static {v8, v9, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 301
    :cond_1
    const-string v6, ""

    .line 303
    .local v6, "topActivity":Ljava/lang/String;
    :try_start_0
    iget-object v8, v5, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 304
    const-string v8, "SystemServiceUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RecentTaskInfo  taskInfo "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  topActivity "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :goto_1
    const-string v8, "com.sec.android.app.camera"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "com.sec.android.app.magnifier"

    .line 309
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "com.cyworld.camera"

    .line 310
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 311
    :cond_2
    move-object v1, v5

    .line 315
    .end local v5    # "taskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v6    # "topActivity":Ljava/lang/String;
    :cond_3
    return-object v1

    .line 305
    .restart local v5    # "taskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    .restart local v6    # "topActivity":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 306
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "SystemServiceUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RecentTaskInfo topActivity.getPackageName Exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public static getCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 374
    if-nez p0, :cond_0

    .line 375
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 377
    :cond_0
    const/4 v1, 0x0

    .line 378
    .local v1, "countryIso":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/incallui/wrapper/CountryDetectorWrapper;->getSystemService(Landroid/content/Context;)Lcom/android/incallui/wrapper/CountryDetectorWrapper;

    move-result-object v2

    .line 379
    .local v2, "detector":Lcom/android/incallui/wrapper/CountryDetectorWrapper;
    if-eqz v2, :cond_1

    .line 380
    invoke-virtual {v2}, Lcom/android/incallui/wrapper/CountryDetectorWrapper;->detectCountry()Lcom/android/incallui/wrapper/CountryWrapper;

    move-result-object v0

    .line 381
    .local v0, "country":Lcom/android/incallui/wrapper/CountryWrapper;
    if-eqz v0, :cond_2

    .line 382
    invoke-virtual {v0}, Lcom/android/incallui/wrapper/CountryWrapper;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 388
    .end local v0    # "country":Lcom/android/incallui/wrapper/CountryWrapper;
    :cond_1
    :goto_0
    const-string v3, "SystemServiceUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCountryIso countryIso: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    return-object v1

    .line 384
    .restart local v0    # "country":Lcom/android/incallui/wrapper/CountryWrapper;
    :cond_2
    const-string v3, "SystemServiceUtils"

    const-string v4, "CountryDetector.detectCountry() returned null."

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 393
    if-nez p0, :cond_0

    .line 394
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 396
    :cond_0
    invoke-static {p0}, Lcom/android/incallui/util/SystemServiceUtils;->getCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, "countryIso":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 399
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 400
    const-string v1, "SystemServiceUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No CountryDetector; falling back to countryIso based on locale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    :cond_1
    return-object v0
.end method

.method public static getKnoxKeyguardShowState()Z
    .locals 3

    .prologue
    .line 414
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 415
    .local v0, "mContext":Landroid/content/Context;
    const-string v2, "persona"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    .line 417
    .local v1, "pm":Lcom/samsung/android/knox/SemPersonaManager;
    if-eqz v1, :cond_0

    .line 418
    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxKeyguardShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 419
    const/4 v2, 0x1

    .line 422
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getSimCountryCode(Landroid/content/Context;Lcom/google/i18n/phonenumbers/PhoneNumberUtil;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumUtil"    # Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    .prologue
    .line 426
    if-nez p0, :cond_0

    .line 427
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 429
    :cond_0
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 430
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 431
    .local v1, "simCountryIso":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, "locale":Ljava/lang/String;
    const-string v3, "SystemServiceUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM locale = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " > Upper case = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    return-object v0
.end method

.method public static isCameraAppRunning()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    .line 259
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 260
    .local v2, "context":Landroid/content/Context;
    const-string v6, "activity"

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 261
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 262
    .local v4, "liRunInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v1, 0x0

    .line 264
    .local v1, "cameraAppProcessInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-eqz v4, :cond_4

    .line 265
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 266
    .local v3, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v8, "com.sec.android.app.camera"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v8, "com.sec.android.app.magnifier"

    .line 267
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v8, "com.cyworld.camera"

    .line 268
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 269
    :cond_1
    move-object v1, v3

    .line 277
    .end local v3    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2
    :goto_0
    if-eqz v1, :cond_5

    iget v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v7, 0x64

    if-eq v6, v7, :cond_3

    iget v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_5

    .line 279
    :cond_3
    const-string v6, "SystemServiceUtils"

    const-string v7, "Camera Application is visible in background"

    invoke-static {v6, v7, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 280
    sput-boolean v5, Lcom/android/incallui/util/SystemServiceUtils;->sIsExecuteMoveTaskToBack:Z

    .line 284
    :goto_1
    return v5

    .line 274
    :cond_4
    const-string v6, "SystemServiceUtils"

    const-string v7, "RunningAppProcessInfo list is null"

    invoke-static {v6, v7, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 283
    :cond_5
    const-string v5, "SystemServiceUtils"

    const-string v6, "Camera is not visible "

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static isCameraForeground(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 242
    if-nez p0, :cond_0

    .line 243
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 245
    :cond_0
    const/4 v0, 0x0

    .line 246
    .local v0, "isCameraOn":Z
    const-string v1, "disable_incoming_call_popup_during_camera"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 247
    const-string v1, "SystemServiceUtils"

    const-string v2, "isCameraForeground: DISABLE_INCOMING_CALL_POPUP_DURING_CAMERA"

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 248
    const-string v1, "com.sec.android.app.camera"

    invoke-static {p0, v1}, Lcom/android/incallui/util/PackageHelpers;->isTopActivityRunningEx(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.sec.android.app.ma.recorder"

    .line 249
    invoke-static {p0, v1}, Lcom/android/incallui/util/PackageHelpers;->isTopActivityRunningEx(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 250
    :cond_1
    const/4 v0, 0x1

    .line 254
    :cond_2
    const-string v1, "SystemServiceUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCameraForeground: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 255
    return v0
.end method

.method public static isDeviceOn3G()Z
    .locals 6

    .prologue
    .line 344
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 345
    .local v0, "context":Landroid/content/Context;
    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 347
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    .line 348
    .local v2, "type":I
    const-string v3, "SystemServiceUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDeviceOn3G() type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    const/16 v3, 0xf

    if-ne v2, v3, :cond_1

    .line 355
    :cond_0
    const/4 v3, 0x1

    .line 357
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isDeviceOnLTE()Z
    .locals 6

    .prologue
    .line 330
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 331
    .local v0, "context":Landroid/content/Context;
    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 333
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    .line 334
    .local v2, "type":I
    const-string v3, "SystemServiceUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDeviceOnLTE() type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    .line 337
    const/4 v3, 0x1

    .line 339
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isDeviceOnWiFi()Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 362
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 363
    .local v1, "context":Landroid/content/Context;
    const-string v7, "wifi"

    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 364
    .local v4, "mWifiManager":Landroid/net/wifi/WifiManager;
    const-string v7, "connectivity"

    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 366
    .local v3, "mConnectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v3, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 367
    .local v2, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v7, v8, :cond_0

    move v0, v5

    .line 368
    .local v0, "connected":Z
    :goto_0
    const-string v7, "SystemServiceUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isDeviceOnWiFi - connected : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", wifi enabled : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v0, :cond_1

    :goto_1
    return v5

    .end local v0    # "connected":Z
    :cond_0
    move v0, v6

    .line 367
    goto :goto_0

    .restart local v0    # "connected":Z
    :cond_1
    move v5, v6

    .line 370
    goto :goto_1
.end method

.method public static isDreaming()Z
    .locals 4

    .prologue
    .line 70
    const-string v2, "dreams"

    invoke-static {v2}, Lcom/android/incallui/service/SecServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 71
    .local v1, "service":Landroid/os/IBinder;
    invoke-static {v1}, Lcom/android/incallui/wrapper/IDreamManagerWrapper;->asInterface(Landroid/os/IBinder;)Lcom/android/incallui/wrapper/IDreamManagerWrapper;

    move-result-object v0

    .line 73
    .local v0, "dream":Lcom/android/incallui/wrapper/IDreamManagerWrapper;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/wrapper/IDreamManagerWrapper;->isDreaming()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    const-string v2, "SystemServiceUtils"

    const-string v3, "isDreaming true"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v2, 0x1

    .line 77
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isImsRegistered()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 229
    const-string v4, "enabled"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 230
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getIMSManagerWrapper()Lcom/android/incallui/service/ims/IMSManagerWrapper;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_0
    move v1, v3

    .line 238
    .local v0, "regiInfo":[Lcom/sec/ims/ImsRegistration;
    .local v1, "retVal":Z
    :cond_1
    :goto_0
    return v1

    .line 231
    .end local v0    # "regiInfo":[Lcom/sec/ims/ImsRegistration;
    .end local v1    # "retVal":Z
    :cond_2
    const/4 v1, 0x0

    .line 233
    .restart local v1    # "retVal":Z
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getIMSManagerWrapper()Lcom/android/incallui/service/ims/IMSManagerWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/service/ims/IMSManagerWrapper;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 234
    .restart local v0    # "regiInfo":[Lcom/sec/ims/ImsRegistration;
    if-eqz v0, :cond_1

    .line 235
    if-eqz v0, :cond_3

    array-length v4, v0

    if-lez v4, :cond_3

    move v1, v2

    .line 236
    :goto_1
    const-string v3, "SystemServiceUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRegistered : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    move v1, v3

    .line 235
    goto :goto_1
.end method

.method public static isKeyguardLocked(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 437
    if-nez p0, :cond_0

    .line 438
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 440
    :cond_0
    const-string v2, "keyguard"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 441
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 442
    const-string v2, "SystemServiceUtils"

    const-string v3, "isKeyguardLocked - true"

    invoke-static {v2, v3, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 446
    :goto_0
    return v1

    .line 445
    :cond_1
    const-string v2, "SystemServiceUtils"

    const-string v3, "isKeyguardLocked - false"

    invoke-static {v2, v3, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 446
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMobileDataEnabled()Z
    .locals 6

    .prologue
    .line 406
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 407
    .local v0, "context":Landroid/content/Context;
    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 408
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->semGetDataEnabled()Z

    move-result v1

    .line 409
    .local v1, "mMobileDataEnabled":Z
    const-string v3, "SystemServiceUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isMobileDataEnabled mMobileDataEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 410
    return v1
.end method

.method public static isScreenOn()Z
    .locals 3

    .prologue
    .line 64
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 65
    .local v0, "context":Landroid/content/Context;
    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 66
    .local v1, "pm":Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    return v2
.end method

.method public static isSmsCapable(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    if-nez p0, :cond_0

    .line 121
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 123
    :cond_0
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 124
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    const/4 v0, 0x1

    .line 125
    .local v0, "enable":Z
    if-eqz v1, :cond_1

    .line 126
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v0

    .line 128
    :cond_1
    const-string v2, "SystemServiceUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSmsCapable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return v0
.end method

.method public static isSupportEdgeNotification()Z
    .locals 7

    .prologue
    .line 194
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    .line 195
    .local v0, "context":Landroid/content/Context;
    const/4 v2, 0x0

    .line 196
    .local v2, "isEdgeSupported":Z
    if-nez v0, :cond_0

    move v4, v2

    .line 207
    :goto_0
    return v4

    .line 199
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 200
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_1

    .line 201
    const-string v4, "com.sec.feature.people_edge_notification"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 202
    const-string v4, "SystemServiceUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSupportEdgeNotification EdgeSupport"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v4, v2

    .line 207
    goto :goto_0

    .line 204
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Ljava/lang/NullPointerException;
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static isVoWIFIRegistered()Z
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 211
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v8

    const-string v9, "CscFeature_RIL_SupportEpdg"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 212
    .local v1, "epdgFeatured":Z
    if-nez v1, :cond_1

    .line 225
    :cond_0
    :goto_0
    return v7

    .line 214
    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 215
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 217
    const-string v8, "phone"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 218
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v4, :cond_0

    .line 220
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v5

    .line 221
    .local v5, "type":I
    sget v8, Lcom/android/incallui/wrapper/TelephonyManagerWrapper;->NETWORK_TYPE_IWLAN:I

    if-ne v5, v8, :cond_2

    move v3, v6

    .line 222
    .local v3, "isNetworkTypeIWLAN":Z
    :goto_1
    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isImsRegistered()Z

    move-result v2

    .line 224
    .local v2, "isImsRegistered":Z
    const-string v8, "SystemServiceUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isNetworkTypeIWLAN="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isImsRegistered="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    :goto_2
    move v7, v6

    goto :goto_0

    .end local v2    # "isImsRegistered":Z
    .end local v3    # "isNetworkTypeIWLAN":Z
    :cond_2
    move v3, v7

    .line 221
    goto :goto_1

    .restart local v2    # "isImsRegistered":Z
    .restart local v3    # "isNetworkTypeIWLAN":Z
    :cond_3
    move v6, v7

    .line 225
    goto :goto_2
.end method

.method public static isWiredHeadsetOn()Z
    .locals 3

    .prologue
    .line 451
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 452
    .local v1, "context":Landroid/content/Context;
    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 454
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    return v2
.end method

.method public static makeGoToSleepWithNoLockSound()V
    .locals 4

    .prologue
    .line 113
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 115
    .local v0, "context":Landroid/content/Context;
    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 116
    .local v1, "powerManager":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->semGoToSleep(J)V

    .line 117
    return-void
.end method

.method public static moveCameraTaskToFront()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 319
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 320
    .local v2, "context":Landroid/content/Context;
    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->getCameraTask()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v1

    .line 321
    .local v1, "cameraTaskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    if-eqz v1, :cond_0

    sget-boolean v3, Lcom/android/incallui/util/SystemServiceUtils;->sIsExecuteMoveTaskToBack:Z

    if-eqz v3, :cond_0

    .line 322
    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 323
    .local v0, "am":Landroid/app/ActivityManager;
    iget v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v5, v4}, Landroid/app/ActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 324
    sput-boolean v5, Lcom/android/incallui/util/SystemServiceUtils;->sIsExecuteMoveTaskToBack:Z

    .line 325
    const-string v3, "SystemServiceUtils"

    const-string v4, "Camera is move to front "

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    .end local v0    # "am":Landroid/app/ActivityManager;
    :cond_0
    return-void
.end method

.method public static pokeUserActivity(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    if-nez p0, :cond_0

    .line 92
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 95
    :cond_0
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 96
    .local v0, "powerManager":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/android/incallui/wrapper/PowerManagerWrapper;->userActivity(Landroid/os/PowerManager;JZ)V

    .line 97
    return-void
.end method
