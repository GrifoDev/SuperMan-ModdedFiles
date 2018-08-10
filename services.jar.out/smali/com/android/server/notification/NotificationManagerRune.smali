.class public Lcom/android/server/notification/NotificationManagerRune;
.super Ljava/lang/Object;
.source "NotificationManagerRune.java"


# static fields
.field public static final SUPPORT_AOSP_BUG_FIX:Z = true

.field public static final SUPPORT_DO_NOT_BLOCK_SYSTEMUI:Z = true

.field public static final SUPPORT_FOREGROUND_SERVICE_DIALOG:Z = true

.field public static final SUPPORT_MIGRATION_NOTIFICATION_SETTING:Z = true

.field public static final SUPPORT_NOTIFICATION_EASY_MUTE:Z = true

.field public static final SUPPORT_NOTIFICATION_SMART_ALERT:Z = true

.field public static final SUPPORT_NOTI_LOG:Z = true

.field public static final SUPPORT_NOTI_LOG_DEBUG:Z

.field public static final SUPPORT_NOTI_PIN:Z = false

.field public static final SUPPORT_NOTI_SOUND_VOLUME:Z = true

.field public static final SUPPORT_SEC_DND:Z = true

.field public static final SUPPORT_SEC_LED_NOTIFICATION:Z = true

.field public static final SUPPORT_SEC_NOTI_EFFECT_FLASH:Z = true

.field public static final SUPPORT_SEC_NOTI_POLICY_FORCE_BLOCK:Z = true

.field public static final SUPPORT_SEC_NOTI_POLICY_VIBRATION:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/notification/NotificationManagerRune;->SUPPORT_NOTI_LOG_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
