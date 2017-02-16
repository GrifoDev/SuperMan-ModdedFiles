.class final Landroid/app/SystemServiceRegistry;
.super Ljava/lang/Object;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SystemServiceRegistry$100;,
        Landroid/app/SystemServiceRegistry$101;,
        Landroid/app/SystemServiceRegistry$10;,
        Landroid/app/SystemServiceRegistry$11;,
        Landroid/app/SystemServiceRegistry$12;,
        Landroid/app/SystemServiceRegistry$13;,
        Landroid/app/SystemServiceRegistry$14;,
        Landroid/app/SystemServiceRegistry$15;,
        Landroid/app/SystemServiceRegistry$16;,
        Landroid/app/SystemServiceRegistry$17;,
        Landroid/app/SystemServiceRegistry$18;,
        Landroid/app/SystemServiceRegistry$19;,
        Landroid/app/SystemServiceRegistry$1;,
        Landroid/app/SystemServiceRegistry$20;,
        Landroid/app/SystemServiceRegistry$21;,
        Landroid/app/SystemServiceRegistry$22;,
        Landroid/app/SystemServiceRegistry$23;,
        Landroid/app/SystemServiceRegistry$24;,
        Landroid/app/SystemServiceRegistry$25;,
        Landroid/app/SystemServiceRegistry$26;,
        Landroid/app/SystemServiceRegistry$27;,
        Landroid/app/SystemServiceRegistry$28;,
        Landroid/app/SystemServiceRegistry$29;,
        Landroid/app/SystemServiceRegistry$2;,
        Landroid/app/SystemServiceRegistry$30;,
        Landroid/app/SystemServiceRegistry$31;,
        Landroid/app/SystemServiceRegistry$32;,
        Landroid/app/SystemServiceRegistry$33;,
        Landroid/app/SystemServiceRegistry$34;,
        Landroid/app/SystemServiceRegistry$35;,
        Landroid/app/SystemServiceRegistry$36;,
        Landroid/app/SystemServiceRegistry$37;,
        Landroid/app/SystemServiceRegistry$38;,
        Landroid/app/SystemServiceRegistry$39;,
        Landroid/app/SystemServiceRegistry$3;,
        Landroid/app/SystemServiceRegistry$40;,
        Landroid/app/SystemServiceRegistry$41;,
        Landroid/app/SystemServiceRegistry$42;,
        Landroid/app/SystemServiceRegistry$43;,
        Landroid/app/SystemServiceRegistry$44;,
        Landroid/app/SystemServiceRegistry$45;,
        Landroid/app/SystemServiceRegistry$46;,
        Landroid/app/SystemServiceRegistry$47;,
        Landroid/app/SystemServiceRegistry$48;,
        Landroid/app/SystemServiceRegistry$49;,
        Landroid/app/SystemServiceRegistry$4;,
        Landroid/app/SystemServiceRegistry$50;,
        Landroid/app/SystemServiceRegistry$51;,
        Landroid/app/SystemServiceRegistry$52;,
        Landroid/app/SystemServiceRegistry$53;,
        Landroid/app/SystemServiceRegistry$54;,
        Landroid/app/SystemServiceRegistry$55;,
        Landroid/app/SystemServiceRegistry$56;,
        Landroid/app/SystemServiceRegistry$57;,
        Landroid/app/SystemServiceRegistry$58;,
        Landroid/app/SystemServiceRegistry$59;,
        Landroid/app/SystemServiceRegistry$5;,
        Landroid/app/SystemServiceRegistry$60;,
        Landroid/app/SystemServiceRegistry$61;,
        Landroid/app/SystemServiceRegistry$62;,
        Landroid/app/SystemServiceRegistry$63;,
        Landroid/app/SystemServiceRegistry$64;,
        Landroid/app/SystemServiceRegistry$65;,
        Landroid/app/SystemServiceRegistry$66;,
        Landroid/app/SystemServiceRegistry$67;,
        Landroid/app/SystemServiceRegistry$68;,
        Landroid/app/SystemServiceRegistry$69;,
        Landroid/app/SystemServiceRegistry$6;,
        Landroid/app/SystemServiceRegistry$70;,
        Landroid/app/SystemServiceRegistry$71;,
        Landroid/app/SystemServiceRegistry$72;,
        Landroid/app/SystemServiceRegistry$73;,
        Landroid/app/SystemServiceRegistry$74;,
        Landroid/app/SystemServiceRegistry$75;,
        Landroid/app/SystemServiceRegistry$76;,
        Landroid/app/SystemServiceRegistry$77;,
        Landroid/app/SystemServiceRegistry$78;,
        Landroid/app/SystemServiceRegistry$79;,
        Landroid/app/SystemServiceRegistry$7;,
        Landroid/app/SystemServiceRegistry$80;,
        Landroid/app/SystemServiceRegistry$81;,
        Landroid/app/SystemServiceRegistry$82;,
        Landroid/app/SystemServiceRegistry$83;,
        Landroid/app/SystemServiceRegistry$84;,
        Landroid/app/SystemServiceRegistry$85;,
        Landroid/app/SystemServiceRegistry$86;,
        Landroid/app/SystemServiceRegistry$87;,
        Landroid/app/SystemServiceRegistry$88;,
        Landroid/app/SystemServiceRegistry$89;,
        Landroid/app/SystemServiceRegistry$8;,
        Landroid/app/SystemServiceRegistry$90;,
        Landroid/app/SystemServiceRegistry$91;,
        Landroid/app/SystemServiceRegistry$92;,
        Landroid/app/SystemServiceRegistry$93;,
        Landroid/app/SystemServiceRegistry$94;,
        Landroid/app/SystemServiceRegistry$95;,
        Landroid/app/SystemServiceRegistry$96;,
        Landroid/app/SystemServiceRegistry$97;,
        Landroid/app/SystemServiceRegistry$98;,
        Landroid/app/SystemServiceRegistry$99;,
        Landroid/app/SystemServiceRegistry$9;,
        Landroid/app/SystemServiceRegistry$CachedServiceFetcher;,
        Landroid/app/SystemServiceRegistry$ServiceFetcher;,
        Landroid/app/SystemServiceRegistry$StaticApplicationContextServiceFetcher;,
        Landroid/app/SystemServiceRegistry$StaticServiceFetcher;
    }
.end annotation


# static fields
.field private static final SYSTEM_SERVICE_FETCHERS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/SystemServiceRegistry$ServiceFetcher",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final SYSTEM_SERVICE_NAMES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SystemServiceRegistry"

.field private static sServiceCacheSize:I


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Landroid/app/SystemServiceRegistry;->sServiceCacheSize:I

    return v0
.end method

.method static synthetic -set0(I)I
    .locals 0

    sput p0, Landroid/app/SystemServiceRegistry;->sServiceCacheSize:I

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 264
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 263
    sput-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/HashMap;

    .line 266
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 265
    sput-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/HashMap;

    .line 273
    const-string/jumbo v0, "accessibility"

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    .line 274
    new-instance v2, Landroid/app/SystemServiceRegistry$1;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$1;-><init>()V

    .line 273
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 280
    const-string/jumbo v0, "captioning"

    const-class v1, Landroid/view/accessibility/CaptioningManager;

    .line 281
    new-instance v2, Landroid/app/SystemServiceRegistry$2;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$2;-><init>()V

    .line 280
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 287
    const-string/jumbo v0, "account"

    const-class v1, Landroid/accounts/AccountManager;

    .line 288
    new-instance v2, Landroid/app/SystemServiceRegistry$3;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$3;-><init>()V

    .line 287
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 296
    const-string/jumbo v0, "activity"

    const-class v1, Landroid/app/ActivityManager;

    .line 297
    new-instance v2, Landroid/app/SystemServiceRegistry$4;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$4;-><init>()V

    .line 296
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 304
    const-string/jumbo v0, "iccc"

    const-class v1, Lcom/samsung/android/iccc/IntegrityControlCheckCenter;

    .line 305
    new-instance v2, Landroid/app/SystemServiceRegistry$5;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$5;-><init>()V

    .line 304
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 313
    const-string/jumbo v0, "alarm"

    const-class v1, Landroid/app/AlarmManager;

    .line 314
    new-instance v2, Landroid/app/SystemServiceRegistry$6;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$6;-><init>()V

    .line 313
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 322
    const-string/jumbo v0, "audio"

    const-class v1, Landroid/media/AudioManager;

    .line 323
    new-instance v2, Landroid/app/SystemServiceRegistry$7;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$7;-><init>()V

    .line 322
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 329
    const-string/jumbo v0, "media_router"

    const-class v1, Landroid/media/MediaRouter;

    .line 330
    new-instance v2, Landroid/app/SystemServiceRegistry$8;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$8;-><init>()V

    .line 329
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 336
    const-string/jumbo v0, "bluetooth"

    const-class v1, Landroid/bluetooth/BluetoothManager;

    .line 337
    new-instance v2, Landroid/app/SystemServiceRegistry$9;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$9;-><init>()V

    .line 336
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 343
    const-string/jumbo v0, "hdmi_control"

    const-class v1, Landroid/hardware/hdmi/HdmiControlManager;

    .line 344
    new-instance v2, Landroid/app/SystemServiceRegistry$10;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$10;-><init>()V

    .line 343
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 351
    const-string/jumbo v0, "clipboard"

    const-class v1, Landroid/content/ClipboardManager;

    .line 352
    new-instance v2, Landroid/app/SystemServiceRegistry$11;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$11;-><init>()V

    .line 351
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 362
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/HashMap;

    const-class v1, Landroid/text/ClipboardManager;

    const-string/jumbo v2, "clipboard"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const-string/jumbo v0, "semclipboard"

    const-class v1, Lcom/samsung/android/content/clipboard/SemClipboardManager;

    .line 365
    new-instance v2, Landroid/app/SystemServiceRegistry$12;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$12;-><init>()V

    .line 364
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 372
    const-string/jumbo v0, "connectivity"

    const-class v1, Landroid/net/ConnectivityManager;

    .line 373
    new-instance v2, Landroid/app/SystemServiceRegistry$13;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$13;-><init>()V

    .line 372
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 381
    const-string/jumbo v0, "country_detector"

    const-class v1, Landroid/location/CountryDetector;

    .line 382
    new-instance v2, Landroid/app/SystemServiceRegistry$14;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$14;-><init>()V

    .line 381
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 389
    const-string/jumbo v0, "device_policy"

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    .line 390
    new-instance v2, Landroid/app/SystemServiceRegistry$15;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$15;-><init>()V

    .line 389
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 396
    const-string/jumbo v0, "download"

    const-class v1, Landroid/app/DownloadManager;

    .line 397
    new-instance v2, Landroid/app/SystemServiceRegistry$16;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$16;-><init>()V

    .line 396
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 403
    const-string/jumbo v0, "batterymanager"

    const-class v1, Landroid/os/BatteryManager;

    .line 404
    new-instance v2, Landroid/app/SystemServiceRegistry$17;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$17;-><init>()V

    .line 403
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 410
    const-string/jumbo v0, "nfc"

    const-class v1, Landroid/nfc/NfcManager;

    .line 411
    new-instance v2, Landroid/app/SystemServiceRegistry$18;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$18;-><init>()V

    .line 410
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 417
    const-string/jumbo v0, "dropbox"

    const-class v1, Landroid/os/DropBoxManager;

    .line 418
    new-instance v2, Landroid/app/SystemServiceRegistry$19;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$19;-><init>()V

    .line 417
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 433
    const-string/jumbo v0, "input"

    const-class v1, Landroid/hardware/input/InputManager;

    .line 434
    new-instance v2, Landroid/app/SystemServiceRegistry$20;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$20;-><init>()V

    .line 433
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 440
    const-string/jumbo v0, "display"

    const-class v1, Landroid/hardware/display/DisplayManager;

    .line 441
    new-instance v2, Landroid/app/SystemServiceRegistry$21;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$21;-><init>()V

    .line 440
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 447
    const-string/jumbo v0, "input_method"

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    .line 448
    new-instance v2, Landroid/app/SystemServiceRegistry$22;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$22;-><init>()V

    .line 447
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 454
    const-string/jumbo v0, "textservices"

    const-class v1, Landroid/view/textservice/TextServicesManager;

    .line 455
    new-instance v2, Landroid/app/SystemServiceRegistry$23;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$23;-><init>()V

    .line 454
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 461
    const-string/jumbo v0, "keyguard"

    const-class v1, Landroid/app/KeyguardManager;

    .line 462
    new-instance v2, Landroid/app/SystemServiceRegistry$24;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$24;-><init>()V

    .line 461
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 468
    const-string/jumbo v0, "layout_inflater"

    const-class v1, Landroid/view/LayoutInflater;

    .line 469
    new-instance v2, Landroid/app/SystemServiceRegistry$25;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$25;-><init>()V

    .line 468
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 475
    const-string/jumbo v0, "location"

    const-class v1, Landroid/location/LocationManager;

    .line 476
    new-instance v2, Landroid/app/SystemServiceRegistry$26;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$26;-><init>()V

    .line 475
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 483
    const-string/jumbo v0, "sec_location"

    const-class v1, Lcom/samsung/android/location/SemLocationManager;

    .line 484
    new-instance v2, Landroid/app/SystemServiceRegistry$27;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$27;-><init>()V

    .line 483
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 499
    const-string/jumbo v0, "netpolicy"

    const-class v1, Landroid/net/NetworkPolicyManager;

    .line 500
    new-instance v2, Landroid/app/SystemServiceRegistry$28;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$28;-><init>()V

    .line 499
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 507
    const-string/jumbo v0, "notification"

    const-class v1, Landroid/app/NotificationManager;

    .line 508
    new-instance v2, Landroid/app/SystemServiceRegistry$29;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$29;-><init>()V

    .line 507
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 524
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Common_SupportHuxWiFiPromptDataOveruse"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    const-string/jumbo v0, "wifioffload"

    const-class v1, Landroid/net/wifi/WifiOffloadManager;

    .line 527
    new-instance v2, Landroid/app/SystemServiceRegistry$30;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$30;-><init>()V

    .line 526
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 540
    :cond_0
    const-string/jumbo v0, "servicediscovery"

    const-class v1, Landroid/net/nsd/NsdManager;

    .line 541
    new-instance v2, Landroid/app/SystemServiceRegistry$31;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$31;-><init>()V

    .line 540
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 549
    const-string/jumbo v0, "power"

    const-class v1, Landroid/os/PowerManager;

    .line 550
    new-instance v2, Landroid/app/SystemServiceRegistry$32;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$32;-><init>()V

    .line 549
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 562
    const-string/jumbo v0, "CustomFrequencyManagerService"

    const-class v1, Landroid/os/CustomFrequencyManager;

    .line 563
    new-instance v2, Landroid/app/SystemServiceRegistry$33;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$33;-><init>()V

    .line 562
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 574
    const-string/jumbo v0, "recovery"

    const-class v1, Landroid/os/RecoverySystem;

    .line 575
    new-instance v2, Landroid/app/SystemServiceRegistry$34;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$34;-><init>()V

    .line 574
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 586
    const-string/jumbo v0, "search"

    const-class v1, Landroid/app/SearchManager;

    .line 587
    new-instance v2, Landroid/app/SystemServiceRegistry$35;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$35;-><init>()V

    .line 586
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 594
    const-string/jumbo v0, "sensor"

    const-class v1, Landroid/hardware/SensorManager;

    .line 595
    new-instance v2, Landroid/app/SystemServiceRegistry$36;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$36;-><init>()V

    .line 594
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 602
    const-string/jumbo v0, "sensorhub"

    const-class v1, Lcom/samsung/android/sensorhub/SensorHubManager;

    .line 603
    new-instance v2, Landroid/app/SystemServiceRegistry$37;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$37;-><init>()V

    .line 602
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 610
    const-string/jumbo v0, "statusbar"

    const-class v1, Landroid/app/StatusBarManager;

    .line 611
    new-instance v2, Landroid/app/SystemServiceRegistry$38;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$38;-><init>()V

    .line 610
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 617
    const-string/jumbo v0, "storage"

    const-class v1, Landroid/os/storage/StorageManager;

    .line 618
    new-instance v2, Landroid/app/SystemServiceRegistry$39;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$39;-><init>()V

    .line 617
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 624
    const-string/jumbo v0, "phone"

    const-class v1, Landroid/telephony/TelephonyManager;

    .line 625
    new-instance v2, Landroid/app/SystemServiceRegistry$40;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$40;-><init>()V

    .line 624
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 631
    const-string/jumbo v0, "telephony_subscription_service"

    const-class v1, Landroid/telephony/SubscriptionManager;

    .line 632
    new-instance v2, Landroid/app/SystemServiceRegistry$41;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$41;-><init>()V

    .line 631
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 638
    const-string/jumbo v0, "carrier_config"

    const-class v1, Landroid/telephony/CarrierConfigManager;

    .line 639
    new-instance v2, Landroid/app/SystemServiceRegistry$42;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$42;-><init>()V

    .line 638
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 645
    const-string/jumbo v0, "telecom"

    const-class v1, Landroid/telecom/TelecomManager;

    .line 646
    new-instance v2, Landroid/app/SystemServiceRegistry$43;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$43;-><init>()V

    .line 645
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 652
    const-string/jumbo v0, "uimode"

    const-class v1, Landroid/app/UiModeManager;

    .line 653
    new-instance v2, Landroid/app/SystemServiceRegistry$44;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$44;-><init>()V

    .line 652
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 659
    const-string/jumbo v0, "usb"

    const-class v1, Landroid/hardware/usb/UsbManager;

    .line 660
    new-instance v2, Landroid/app/SystemServiceRegistry$45;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$45;-><init>()V

    .line 659
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 667
    const-string/jumbo v0, "serial"

    const-class v1, Landroid/hardware/SerialManager;

    .line 668
    new-instance v2, Landroid/app/SystemServiceRegistry$46;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$46;-><init>()V

    .line 667
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 675
    const-string/jumbo v0, "vibrator"

    const-class v1, Landroid/os/Vibrator;

    .line 676
    new-instance v2, Landroid/app/SystemServiceRegistry$47;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$47;-><init>()V

    .line 675
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 682
    const-string/jumbo v0, "wallpaper"

    const-class v1, Landroid/app/WallpaperManager;

    .line 683
    new-instance v2, Landroid/app/SystemServiceRegistry$48;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$48;-><init>()V

    .line 682
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 691
    const-string/jumbo v0, "context_aware"

    const-class v1, Lcom/samsung/android/contextaware/ContextAwareManager;

    .line 692
    new-instance v2, Landroid/app/SystemServiceRegistry$49;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$49;-><init>()V

    .line 691
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 698
    const-string/jumbo v0, "scontext"

    const-class v1, Landroid/hardware/scontext/SContextManager;

    .line 699
    new-instance v2, Landroid/app/SystemServiceRegistry$50;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$50;-><init>()V

    .line 698
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 705
    const-string/jumbo v0, "motion_recognition"

    const-class v1, Landroid/hardware/motion/MotionRecognitionManager;

    .line 706
    new-instance v2, Landroid/app/SystemServiceRegistry$51;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$51;-><init>()V

    .line 705
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 712
    const-string/jumbo v0, "barbeam"

    const-class v1, Landroid/app/BarBeamCommandImpl;

    new-instance v2, Landroid/app/SystemServiceRegistry$52;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$52;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 720
    const-string/jumbo v0, "wifi"

    const-class v1, Landroid/net/wifi/WifiManager;

    .line 721
    new-instance v2, Landroid/app/SystemServiceRegistry$53;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$53;-><init>()V

    .line 720
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 730
    const-string/jumbo v0, "sem_statusbar"

    const-class v1, Landroid/app/SemStatusBarManager;

    .line 731
    new-instance v2, Landroid/app/SystemServiceRegistry$54;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$54;-><init>()V

    .line 730
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 738
    const-string/jumbo v0, "wifihs20"

    const-class v1, Landroid/net/wifi/hs20/WifiHs20Manager;

    .line 739
    new-instance v2, Landroid/app/SystemServiceRegistry$55;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$55;-><init>()V

    .line 738
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 749
    const-string/jumbo v0, "wifip2p"

    const-class v1, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 750
    new-instance v2, Landroid/app/SystemServiceRegistry$56;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$56;-><init>()V

    .line 749
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 758
    const-string/jumbo v0, "wifinan"

    const-class v1, Landroid/net/wifi/nan/WifiNanManager;

    .line 759
    new-instance v2, Landroid/app/SystemServiceRegistry$57;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$57;-><init>()V

    .line 758
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 770
    const-string/jumbo v0, "wifiscanner"

    const-class v1, Landroid/net/wifi/WifiScanner;

    .line 771
    new-instance v2, Landroid/app/SystemServiceRegistry$58;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$58;-><init>()V

    .line 770
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 780
    const-string/jumbo v0, "rttmanager"

    const-class v1, Landroid/net/wifi/RttManager;

    .line 781
    new-instance v2, Landroid/app/SystemServiceRegistry$59;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$59;-><init>()V

    .line 780
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 790
    const-string/jumbo v0, "ethernet"

    const-class v1, Landroid/net/EthernetManager;

    .line 791
    new-instance v2, Landroid/app/SystemServiceRegistry$60;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$60;-><init>()V

    .line 790
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 799
    const-string/jumbo v0, "window"

    const-class v1, Landroid/view/WindowManager;

    .line 800
    new-instance v2, Landroid/app/SystemServiceRegistry$61;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$61;-><init>()V

    .line 799
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 817
    const-string/jumbo v0, "ktuca"

    const-class v1, Landroid/ktuca/KtUcaManager;

    .line 818
    new-instance v2, Landroid/app/SystemServiceRegistry$62;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$62;-><init>()V

    .line 817
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 826
    const-string/jumbo v0, "user"

    const-class v1, Landroid/os/UserManager;

    .line 827
    new-instance v2, Landroid/app/SystemServiceRegistry$63;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$63;-><init>()V

    .line 826
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 835
    const-string/jumbo v0, "appops"

    const-class v1, Landroid/app/AppOpsManager;

    .line 836
    new-instance v2, Landroid/app/SystemServiceRegistry$64;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$64;-><init>()V

    .line 835
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 844
    const-string/jumbo v0, "camera"

    const-class v1, Landroid/hardware/camera2/CameraManager;

    .line 845
    new-instance v2, Landroid/app/SystemServiceRegistry$65;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$65;-><init>()V

    .line 844
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 851
    const-string/jumbo v0, "launcherapps"

    const-class v1, Landroid/content/pm/LauncherApps;

    .line 852
    new-instance v2, Landroid/app/SystemServiceRegistry$66;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$66;-><init>()V

    .line 851
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 858
    const-string/jumbo v0, "restrictions"

    const-class v1, Landroid/content/RestrictionsManager;

    .line 859
    new-instance v2, Landroid/app/SystemServiceRegistry$67;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$67;-><init>()V

    .line 858
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 867
    const-string/jumbo v0, "print"

    const-class v1, Landroid/print/PrintManager;

    .line 868
    new-instance v2, Landroid/app/SystemServiceRegistry$68;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$68;-><init>()V

    .line 867
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 877
    const-string/jumbo v0, "consumer_ir"

    const-class v1, Landroid/hardware/ConsumerIrManager;

    .line 878
    new-instance v2, Landroid/app/SystemServiceRegistry$69;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$69;-><init>()V

    .line 877
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 884
    const-string/jumbo v0, "media_session"

    const-class v1, Landroid/media/session/MediaSessionManager;

    .line 885
    new-instance v2, Landroid/app/SystemServiceRegistry$70;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$70;-><init>()V

    .line 884
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 891
    const-string/jumbo v0, "trust"

    const-class v1, Landroid/app/trust/TrustManager;

    .line 892
    new-instance v2, Landroid/app/SystemServiceRegistry$71;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$71;-><init>()V

    .line 891
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 899
    const-string/jumbo v0, "fingerprint"

    const-class v1, Landroid/hardware/fingerprint/FingerprintManager;

    .line 900
    new-instance v2, Landroid/app/SystemServiceRegistry$72;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$72;-><init>()V

    .line 899
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 908
    const-string/jumbo v0, "tv_input"

    const-class v1, Landroid/media/tv/TvInputManager;

    .line 909
    new-instance v2, Landroid/app/SystemServiceRegistry$73;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$73;-><init>()V

    .line 908
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 917
    const-string/jumbo v0, "network_score"

    const-class v1, Landroid/net/NetworkScoreManager;

    .line 918
    new-instance v2, Landroid/app/SystemServiceRegistry$74;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$74;-><init>()V

    .line 917
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 924
    const-string/jumbo v0, "usagestats"

    const-class v1, Landroid/app/usage/UsageStatsManager;

    .line 925
    new-instance v2, Landroid/app/SystemServiceRegistry$75;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$75;-><init>()V

    .line 924
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 933
    const-string/jumbo v0, "netstats"

    const-class v1, Landroid/app/usage/NetworkStatsManager;

    .line 934
    new-instance v2, Landroid/app/SystemServiceRegistry$76;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$76;-><init>()V

    .line 933
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 940
    const-string/jumbo v0, "jobscheduler"

    const-class v1, Landroid/app/job/JobScheduler;

    .line 941
    new-instance v2, Landroid/app/SystemServiceRegistry$77;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$77;-><init>()V

    .line 940
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 948
    const-string/jumbo v0, "persistent_data_block"

    const-class v1, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 949
    new-instance v2, Landroid/app/SystemServiceRegistry$78;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$78;-><init>()V

    .line 948
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 963
    const-string/jumbo v0, "media_projection"

    const-class v1, Landroid/media/projection/MediaProjectionManager;

    .line 964
    new-instance v2, Landroid/app/SystemServiceRegistry$79;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$79;-><init>()V

    .line 963
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 970
    const-string/jumbo v0, "appwidget"

    const-class v1, Landroid/appwidget/AppWidgetManager;

    .line 971
    new-instance v2, Landroid/app/SystemServiceRegistry$80;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$80;-><init>()V

    .line 970
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 978
    const-string/jumbo v0, "midi"

    const-class v1, Landroid/media/midi/MidiManager;

    .line 979
    new-instance v2, Landroid/app/SystemServiceRegistry$81;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$81;-><init>()V

    .line 978
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 989
    const-string/jumbo v0, "radio"

    const-class v1, Landroid/hardware/radio/RadioManager;

    .line 990
    new-instance v2, Landroid/app/SystemServiceRegistry$82;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$82;-><init>()V

    .line 989
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 996
    const-string/jumbo v0, "hardware_properties"

    const-class v1, Landroid/os/HardwarePropertiesManager;

    .line 997
    new-instance v2, Landroid/app/SystemServiceRegistry$83;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$83;-><init>()V

    .line 996
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1012
    const-string/jumbo v0, "CocktailBarService"

    const-class v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;

    .line 1013
    new-instance v2, Landroid/app/SystemServiceRegistry$84;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$84;-><init>()V

    .line 1012
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1038
    const-string/jumbo v0, "AODManagerService"

    const-class v1, Lcom/samsung/android/aod/AODManager;

    .line 1039
    new-instance v2, Landroid/app/SystemServiceRegistry$85;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$85;-><init>()V

    .line 1038
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1048
    const-string/jumbo v0, "soundtrigger"

    const-class v1, Landroid/media/soundtrigger/SoundTriggerManager;

    .line 1049
    new-instance v2, Landroid/app/SystemServiceRegistry$86;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$86;-><init>()V

    .line 1048
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1056
    const-string/jumbo v0, "shortcut"

    const-class v1, Landroid/content/pm/ShortcutManager;

    .line 1057
    new-instance v2, Landroid/app/SystemServiceRegistry$87;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$87;-><init>()V

    .line 1056
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1063
    const-string/jumbo v0, "systemhealth"

    const-class v1, Landroid/os/health/SystemHealthManager;

    .line 1064
    new-instance v2, Landroid/app/SystemServiceRegistry$88;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$88;-><init>()V

    .line 1063
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1070
    const-string/jumbo v0, "contexthub"

    const-class v1, Landroid/hardware/location/ContextHubManager;

    .line 1071
    new-instance v2, Landroid/app/SystemServiceRegistry$89;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$89;-><init>()V

    .line 1070
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1079
    const-string/jumbo v0, "persona"

    const-class v1, Lcom/samsung/android/knox/SemPersonaManager;

    .line 1080
    new-instance v2, Landroid/app/SystemServiceRegistry$90;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$90;-><init>()V

    .line 1079
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1088
    const-string/jumbo v0, "rcp"

    const-class v1, Lcom/samsung/android/knox/SemRemoteContentManager;

    .line 1089
    new-instance v2, Landroid/app/SystemServiceRegistry$91;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$91;-><init>()V

    .line 1088
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1097
    const-string/jumbo v0, "1"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 1098
    const-string/jumbo v0, "execute"

    const-class v1, Lcom/samsung/android/app/SemExecutableManager;

    .line 1099
    new-instance v2, Landroid/app/SystemServiceRegistry$92;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$92;-><init>()V

    .line 1098
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1108
    :cond_1
    const-string/jumbo v0, "spengestureservice"

    const-class v1, Lcom/samsung/android/content/smartclip/SpenGestureManager;

    .line 1109
    new-instance v2, Landroid/app/SystemServiceRegistry$93;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$93;-><init>()V

    .line 1108
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1119
    const-string/jumbo v0, "ABTPersistenceService"

    const-class v1, Lcom/absolute/android/persistence/ABTPersistenceManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$94;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$94;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1129
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_CHIP_VENDOR"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    .line 1130
    const-string/jumbo v0, "FMPlayer"

    const-class v1, Lcom/samsung/android/media/fmradio/SemFmPlayer;

    .line 1131
    new-instance v2, Landroid/app/SystemServiceRegistry$95;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$95;-><init>()V

    .line 1130
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1140
    :cond_2
    const-string/jumbo v0, "mDNIe"

    const-class v1, Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 1141
    new-instance v2, Landroid/app/SystemServiceRegistry$96;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$96;-><init>()V

    .line 1140
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1184
    const-string/jumbo v0, "DisplaySolution"

    const-class v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 1185
    new-instance v2, Landroid/app/SystemServiceRegistry$97;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$97;-><init>()V

    .line 1184
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1195
    const-string/jumbo v0, "AAS"

    const-class v1, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;

    .line 1196
    new-instance v2, Landroid/app/SystemServiceRegistry$98;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$98;-><init>()V

    .line 1195
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1206
    const-string/jumbo v0, "HqmManagerService"

    const-class v1, Landroid/os/SemHqmManager;

    .line 1207
    new-instance v2, Landroid/app/SystemServiceRegistry$99;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$99;-><init>()V

    .line 1206
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1220
    const-string/jumbo v0, "vr"

    const-class v1, Lcom/samsung/android/vr/GearVrManager;

    .line 1221
    new-instance v2, Landroid/app/SystemServiceRegistry$100;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$100;-><init>()V

    .line 1220
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1233
    const-string/jumbo v0, "CodecSolution"

    const-class v1, Lcom/samsung/android/codecsolution/SemCodecSolutionManager;

    .line 1234
    new-instance v2, Landroid/app/SystemServiceRegistry$101;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$101;-><init>()V

    .line 1233
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 258
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createServiceCache()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1261
    sget v0, Landroid/app/SystemServiceRegistry;->sServiceCacheSize:I

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static getSystemService(Landroid/app/ContextImpl;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "ctx"    # Landroid/app/ContextImpl;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1268
    sget-object v2, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SystemServiceRegistry$ServiceFetcher;

    .line 1269
    .local v0, "fetcher":Landroid/app/SystemServiceRegistry$ServiceFetcher;, "Landroid/app/SystemServiceRegistry$ServiceFetcher<*>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/app/SystemServiceRegistry$ServiceFetcher;->getService(Landroid/app/ContextImpl;)Ljava/lang/Object;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public static getSystemServiceName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1276
    .local p0, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V
    .locals 1
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/app/SystemServiceRegistry$ServiceFetcher",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1285
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "serviceFetcher":Landroid/app/SystemServiceRegistry$ServiceFetcher;, "Landroid/app/SystemServiceRegistry$ServiceFetcher<TT;>;"
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1286
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1284
    return-void
.end method
