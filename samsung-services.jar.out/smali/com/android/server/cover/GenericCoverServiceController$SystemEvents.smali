.class final Lcom/android/server/cover/GenericCoverServiceController$SystemEvents;
.super Ljava/lang/Object;
.source "GenericCoverServiceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/GenericCoverServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SystemEvents"
.end annotation


# static fields
.field private static final AUTH_RESPONSE:I = 0x6

.field protected static final FOTA_IN_PROGRESS_REQUEST:I = 0x7

.field protected static final FOTA_IN_PROGRESS_RESPONSE:I = 0x8

.field private static final KEY_DISABLE_LCD_OFF_BY_COVER:Ljava/lang/String; = "lcd_off_disabled_by_cover"

.field private static final LCD_OFF_DISABLED_BY_COVER:I = 0x4

.field private static final LED_OFF:I = 0x0

.field private static final NOTIFICATION_ADD:I = 0x2

.field private static final NOTIFICATION_REMOVE:I = 0x3

.field private static final POWER_BUTTON:I = 0x1

.field private static final SEND_COMMAND:I = 0x5


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
