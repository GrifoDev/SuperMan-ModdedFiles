.class public Lcom/android/internal/notification/SystemNotificationChannels;
.super Ljava/lang/Object;
.source "SystemNotificationChannels.java"


# static fields
.field public static ACCOUNT:Ljava/lang/String;

.field public static ALERTS:Ljava/lang/String;

.field public static CAR_MODE:Ljava/lang/String;

.field public static DEVELOPER:Ljava/lang/String;

.field public static DEVICE_ADMIN:Ljava/lang/String;

.field public static DOWNLOAD_BOOSTER:Ljava/lang/String;

.field public static ENTERPRISE_BILLING:Ljava/lang/String;

.field public static ETHERNET:Ljava/lang/String;

.field public static FOREGROUND_SERVICE:Ljava/lang/String;

.field public static NETWORK_ALERTS:Ljava/lang/String;

.field public static NETWORK_AVAILABLE:Ljava/lang/String;

.field public static NETWORK_CONNECTIONS:Ljava/lang/String;

.field public static NETWORK_STATUS:Ljava/lang/String;

.field public static PHYSICAL_KEYBOARD:Ljava/lang/String;

.field public static RETAIL_MODE:Ljava/lang/String;

.field public static SECURITY:Ljava/lang/String;

.field public static UPDATES:Ljava/lang/String;

.field public static USB:Ljava/lang/String;

.field public static VIRTUAL_KEYBOARD:Ljava/lang/String;

.field public static VPN:Ljava/lang/String;

.field private static final WIFI_SCREENCONNECTEDINFO:Z

.field private static final WifiVendorNotificationStyle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "VIRTUAL_KEYBOARD"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->VIRTUAL_KEYBOARD:Ljava/lang/String;

    const-string/jumbo v0, "PHYSICAL_KEYBOARD"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->PHYSICAL_KEYBOARD:Ljava/lang/String;

    const-string/jumbo v0, "SECURITY"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->SECURITY:Ljava/lang/String;

    const-string/jumbo v0, "CAR_MODE"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->CAR_MODE:Ljava/lang/String;

    const-string/jumbo v0, "ACCOUNT"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->ACCOUNT:Ljava/lang/String;

    const-string/jumbo v0, "DEVELOPER"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->DEVELOPER:Ljava/lang/String;

    const-string/jumbo v0, "UPDATES"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->UPDATES:Ljava/lang/String;

    const-string/jumbo v0, "NETWORK_STATUS"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_STATUS:Ljava/lang/String;

    const-string/jumbo v0, "NETWORK_ALERTS"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_ALERTS:Ljava/lang/String;

    const-string/jumbo v0, "NETWORK_AVAILABLE"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_AVAILABLE:Ljava/lang/String;

    const-string/jumbo v0, "NETWORK_CONNECTIONS"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_CONNECTIONS:Ljava/lang/String;

    const-string/jumbo v0, "VPN"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->VPN:Ljava/lang/String;

    const-string/jumbo v0, "DEVICE_ADMIN"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->DEVICE_ADMIN:Ljava/lang/String;

    const-string/jumbo v0, "ALERTS"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    const-string/jumbo v0, "RETAIL_MODE"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->RETAIL_MODE:Ljava/lang/String;

    const-string/jumbo v0, "USB"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->USB:Ljava/lang/String;

    const-string/jumbo v0, "FOREGROUND_SERVICE"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->FOREGROUND_SERVICE:Ljava/lang/String;

    const-string/jumbo v0, "DOWNLOAD_BOOSTER"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->DOWNLOAD_BOOSTER:Ljava/lang/String;

    const-string/jumbo v0, "ETHERNET"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->ETHERNET:Ljava/lang/String;

    const-string/jumbo v0, "ENTERPRISE BILLING"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->ENTERPRISE_BILLING:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_DisplaySsidStatusBarInfo"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/notification/SystemNotificationChannels;->WIFI_SCREENCONNECTEDINFO:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_ConfigWifiNotificationStyle"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->WifiVendorNotificationStyle:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAccountChannelForPackage(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 6

    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    :try_start_0
    new-instance v2, Landroid/content/pm/ParceledListSlice;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/app/NotificationChannel;

    invoke-static {p2}, Lcom/android/internal/notification/SystemNotificationChannels;->newAccountChannel(Landroid/content/Context;)Landroid/app/NotificationChannel;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v1, p0, p1, v2}, Landroid/app/INotificationManager;->createNotificationChannelsForPackage(Ljava/lang/String;ILandroid/content/pm/ParceledListSlice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static createAll(Landroid/content/Context;)V
    .locals 13

    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x2

    const-class v7, Landroid/app/NotificationManager;

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Landroid/app/NotificationChannel;

    sget-object v8, Lcom/android/internal/notification/SystemNotificationChannels;->VIRTUAL_KEYBOARD:Ljava/lang/String;

    const v9, 0x10405ff

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9, v10}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Landroid/app/NotificationChannel;

    sget-object v7, Lcom/android/internal/notification/SystemNotificationChannels;->PHYSICAL_KEYBOARD:Ljava/lang/String;

    const v8, 0x10405f9

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8, v12}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    sget-object v7, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    sget-object v8, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    invoke-virtual {v6, v7, v8}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroid/app/NotificationChannel;

    sget-object v8, Lcom/android/internal/notification/SystemNotificationChannels;->SECURITY:Ljava/lang/String;

    const v9, 0x10405fb

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9, v10}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroid/app/NotificationChannel;

    sget-object v8, Lcom/android/internal/notification/SystemNotificationChannels;->CAR_MODE:Ljava/lang/String;

    const v9, 0x10405ed

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9, v10}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Lcom/android/internal/notification/SystemNotificationChannels;->newAccountChannel(Landroid/content/Context;)Landroid/app/NotificationChannel;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroid/app/NotificationChannel;

    sget-object v8, Lcom/android/internal/notification/SystemNotificationChannels;->DEVELOPER:Ljava/lang/String;

    const v9, 0x10405ee

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9, v10}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroid/app/NotificationChannel;

    sget-object v8, Lcom/android/internal/notification/SystemNotificationChannels;->UPDATES:Ljava/lang/String;

    const v9, 0x10405fd

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9, v10}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroid/app/NotificationChannel;

    sget-object v8, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_STATUS:Ljava/lang/String;

    const v9, 0x10405f8

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9, v10}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroid/app/NotificationChannel;

    sget-object v7, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_ALERTS:Ljava/lang/String;

    const v8, 0x10405f5

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    invoke-direct {v3, v7, v8, v9}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    sget-object v7, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    sget-object v8, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    invoke-virtual {v3, v7, v8}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroid/app/NotificationChannel;

    sget-object v8, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_AVAILABLE:Ljava/lang/String;

    const v9, 0x10405f6

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9, v10}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v7, Lcom/android/internal/notification/SystemNotificationChannels;->WIFI_SCREENCONNECTEDINFO:Z

    if-nez v7, :cond_0

    const-string/jumbo v7, "VZW"

    sget-object v8, Lcom/android/internal/notification/SystemNotificationChannels;->WifiVendorNotificationStyle:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "ATT"

    sget-object v8, Lcom/android/internal/notification/SystemNotificationChannels;->WifiVendorNotificationStyle:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    new-instance v4, Landroid/app/NotificationChannel;

    sget-object v7, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_CONNECTIONS:Ljava/lang/String;

    const v8, 0x10405f7

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v7, v8, v11}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v7, Landroid/app/NotificationChannel;

    sget-object v8, Lcom/android/internal/notification/SystemNotificationChannels;->VPN:Ljava/lang/String;

    const v9, 0x1040601

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9, v10}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroid/app/NotificationChannel;

    sget-object v8, Lcom/android/internal/notification/SystemNotificationChannels;->DEVICE_ADMIN:Ljava/lang/String;

    const v9, 0x10405ef

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9, v10}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/app/NotificationChannel;

    sget-object v7, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    const v8, 0x10405eb

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v7, v8, v12}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    sget-object v7, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    sget-object v8, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v7, v8}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroid/app/NotificationChannel;

    sget-object v8, Lcom/android/internal/notification/SystemNotificationChannels;->RETAIL_MODE:Ljava/lang/String;

    const v9, 0x10405fa

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9, v10}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroid/app/NotificationChannel;

    sget-object v8, Lcom/android/internal/notification/SystemNotificationChannels;->USB:Ljava/lang/String;

    const v9, 0x10405fe

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9, v11}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/app/NotificationChannel;

    sget-object v7, Lcom/android/internal/notification/SystemNotificationChannels;->FOREGROUND_SERVICE:Ljava/lang/String;

    const v8, 0x10405f2

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v7, v8, v10}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v2, v11}, Landroid/app/NotificationChannel;->setBlockableSystem(Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroid/app/NotificationChannel;

    sget-object v8, Lcom/android/internal/notification/SystemNotificationChannels;->DOWNLOAD_BOOSTER:Ljava/lang/String;

    const v9, 0x1040166

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9, v10}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroid/app/NotificationChannel;

    sget-object v8, Lcom/android/internal/notification/SystemNotificationChannels;->ETHERNET:Ljava/lang/String;

    const v9, 0x104030a

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9, v10}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroid/app/NotificationChannel;

    sget-object v8, Lcom/android/internal/notification/SystemNotificationChannels;->ENTERPRISE_BILLING:Ljava/lang/String;

    const v9, 0x10405f1

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9, v10}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v1}, Landroid/app/NotificationManager;->createNotificationChannels(Ljava/util/List;)V

    return-void
.end method

.method private static newAccountChannel(Landroid/content/Context;)Landroid/app/NotificationChannel;
    .locals 4

    new-instance v0, Landroid/app/NotificationChannel;

    sget-object v1, Lcom/android/internal/notification/SystemNotificationChannels;->ACCOUNT:Ljava/lang/String;

    const v2, 0x10405ea

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    return-object v0
.end method
