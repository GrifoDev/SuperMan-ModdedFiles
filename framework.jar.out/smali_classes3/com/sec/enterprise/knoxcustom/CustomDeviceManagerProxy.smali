.class public Lcom/sec/enterprise/knoxcustom/CustomDeviceManagerProxy;
.super Ljava/lang/Object;
.source "CustomDeviceManagerProxy.java"


# static fields
.field public static final KEYBOARD_MODE_NORMAL:I = 0x0

.field public static final KEYBOARD_MODE_PREDICTION_OFF:I = 0x1

.field public static final KEYBOARD_MODE_SETTINGS_OFF:I = 0x2

.field public static final NOTIFICATIONS_ALL:I = 0x1f

.field public static final NOTIFICATIONS_BATTERY_FULL:I = 0x2

.field public static final NOTIFICATIONS_BATTERY_LOW:I = 0x1

.field public static final NOTIFICATIONS_NITZ_SET_TIME:I = 0x10

.field public static final NOTIFICATIONS_SAFE_VOLUME:I = 0x4

.field public static final NOTIFICATIONS_STATUS_BAR:I = 0x8

.field public static final SENSOR_ACCELEROMETER:I = 0x2

.field public static final SENSOR_ALL:I = 0x7f

.field public static final SENSOR_GYROSCOPE:I = 0x1

.field public static final SENSOR_LIGHT:I = 0x4

.field public static final SENSOR_MAGNETIC:I = 0x20

.field public static final SENSOR_ORIENTATION:I = 0x8

.field public static final SENSOR_PRESSURE:I = 0x40

.field public static final SENSOR_PROXIMITY:I = 0x10

.field private static final TAG:Ljava/lang/String; = "CustomDeviceManagerProxy"

.field public static final VOLUME_CONTROL_STREAM_DEFAULT:I = 0x0

.field public static final VOLUME_CONTROL_STREAM_MUSIC:I = 0x3

.field public static final VOLUME_CONTROL_STREAM_NOTIFICATION:I = 0x4

.field public static final VOLUME_CONTROL_STREAM_RING:I = 0x2

.field public static final VOLUME_CONTROL_STREAM_SYSTEM:I = 0x1

.field private static mProxy:Lcom/sec/enterprise/knoxcustom/CustomDeviceManagerProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sec/enterprise/knoxcustom/CustomDeviceManagerProxy;
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lcom/sec/enterprise/knoxcustom/CustomDeviceManagerProxy;->mProxy:Lcom/sec/enterprise/knoxcustom/CustomDeviceManagerProxy;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lcom/sec/enterprise/knoxcustom/CustomDeviceManagerProxy;

    invoke-direct {v0}, Lcom/sec/enterprise/knoxcustom/CustomDeviceManagerProxy;-><init>()V

    sput-object v0, Lcom/sec/enterprise/knoxcustom/CustomDeviceManagerProxy;->mProxy:Lcom/sec/enterprise/knoxcustom/CustomDeviceManagerProxy;

    .line 171
    :cond_0
    sget-object v0, Lcom/sec/enterprise/knoxcustom/CustomDeviceManagerProxy;->mProxy:Lcom/sec/enterprise/knoxcustom/CustomDeviceManagerProxy;

    return-object v0
.end method


# virtual methods
.method public getKeyboardMode()I
    .locals 4

    .prologue
    .line 634
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 635
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 636
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getKeyboardMode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 638
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :catch_0
    move-exception v0

    .line 639
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "CustomDeviceManagerProxy"

    const-string/jumbo v3, "PXY-getKeyboardMode returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public getProKioskHideNotificationMessages()I
    .locals 4

    .prologue
    .line 255
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 256
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 257
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getProKioskHideNotificationMessages()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 259
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "CustomDeviceManagerProxy"

    const-string/jumbo v3, "PXY-getProKioskHideNotificationMessages returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public getProKioskNotificationMessagesState()Z
    .locals 4

    .prologue
    .line 227
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 228
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 229
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v2

    invoke-interface {v2}, Landroid/sec/enterprise/IEDMProxy;->getProKioskNotificationMessagesState()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 231
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "CustomDeviceManagerProxy"

    const-string/jumbo v3, "PXY-getProKioskNotificationMessagesState returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public getProKioskState()Z
    .locals 4

    .prologue
    .line 199
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 200
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 201
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v2

    invoke-interface {v2}, Landroid/sec/enterprise/IEDMProxy;->getProKioskState()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 203
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "CustomDeviceManagerProxy"

    const-string/jumbo v3, "PXY-getProKioskState returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public getSensorDisabled()I
    .locals 4

    .prologue
    .line 370
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 371
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 372
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getSensorDisabled()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 374
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "CustomDeviceManagerProxy"

    const-string/jumbo v3, "PXY-getSensorDisabled returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public getToastEnabledState()Z
    .locals 4

    .prologue
    .line 312
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 313
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 314
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getToastEnabledState()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 316
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "CustomDeviceManagerProxy"

    const-string/jumbo v3, "PXY-getToastEnabledState returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public getToastGravity()I
    .locals 4

    .prologue
    .line 557
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 558
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 559
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getToastGravity()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 561
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :catch_0
    move-exception v0

    .line 562
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "CustomDeviceManagerProxy"

    const-string/jumbo v3, "PXY-getToastGravity returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public getToastGravityEnabledState()Z
    .locals 4

    .prologue
    .line 530
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 531
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 532
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getToastGravityEnabledState()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 534
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :catch_0
    move-exception v0

    .line 535
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "CustomDeviceManagerProxy"

    const-string/jumbo v3, "PXY-getToastGravityEnabledState returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public getToastGravityXOffset()I
    .locals 4

    .prologue
    .line 582
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 583
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 584
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getToastGravityXOffset()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 586
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :catch_0
    move-exception v0

    .line 587
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "CustomDeviceManagerProxy"

    const-string/jumbo v3, "PXY-getToastGravityXOffset returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public getToastGravityYOffset()I
    .locals 4

    .prologue
    .line 607
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 608
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 609
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getToastGravityYOffset()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 611
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :catch_0
    move-exception v0

    .line 612
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "CustomDeviceManagerProxy"

    const-string/jumbo v3, "PXY-getToastGravityYOffset returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public getToastShowPackageNameState()Z
    .locals 4

    .prologue
    .line 340
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 341
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 342
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getToastShowPackageNameState()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 344
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "CustomDeviceManagerProxy"

    const-string/jumbo v3, "PXY-getToastShowPackageNameState returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public getVolumeButtonRotationState()Z
    .locals 4

    .prologue
    .line 425
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 426
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 427
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getVolumeButtonRotationState()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 429
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "CustomDeviceManagerProxy"

    const-string/jumbo v3, "PXY-getVolumeButtonRotationState returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public getVolumeControlStream()I
    .locals 4

    .prologue
    .line 284
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 285
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 286
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getVolumeControlStream()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 288
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "CustomDeviceManagerProxy"

    const-string/jumbo v3, "PXY-getVolumeControlStream returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public getVolumePanelEnabledState()Z
    .locals 4

    .prologue
    .line 398
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 399
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 400
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getVolumePanelEnabledState()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 402
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "CustomDeviceManagerProxy"

    const-string/jumbo v3, "PXY-getVolumePanelEnabledState returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public getWifiAutoSwitchDelay()I
    .locals 4

    .prologue
    .line 502
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 503
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 504
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getWifiAutoSwitchDelay()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 506
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :catch_0
    move-exception v0

    .line 507
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "CustomDeviceManagerProxy"

    const-string/jumbo v3, "PXY-getWifiAutoSwitchDelay returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/16 v2, 0x14

    return v2
.end method

.method public getWifiAutoSwitchState()Z
    .locals 4

    .prologue
    .line 452
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 453
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 454
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getWifiAutoSwitchState()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 456
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :catch_0
    move-exception v0

    .line 457
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "CustomDeviceManagerProxy"

    const-string/jumbo v3, "PXY-getWifiAutoSwitchState returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public getWifiAutoSwitchThreshold()I
    .locals 4

    .prologue
    .line 477
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 478
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 479
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getWifiAutoSwitchThreshold()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 481
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :catch_0
    move-exception v0

    .line 482
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "CustomDeviceManagerProxy"

    const-string/jumbo v3, "PXY-getWifiAutoSwitchThreshold returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/16 v2, -0xc8

    return v2
.end method

.method public getWifiState()Z
    .locals 4

    .prologue
    .line 650
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 651
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 652
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getWifiState()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 654
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :catch_0
    move-exception v0

    .line 655
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "CustomDeviceManagerProxy"

    const-string/jumbo v3, "PXY-getWifiState() FAIL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method
