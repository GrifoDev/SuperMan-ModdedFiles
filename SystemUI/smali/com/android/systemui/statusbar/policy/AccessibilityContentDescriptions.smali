.class public Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;
.super Ljava/lang/Object;
.source "AccessibilityContentDescriptions.java"


# static fields
.field static final DATA_CONNECTION_STRENGTH:[I

.field static final ETHERNET_CONNECTION_VALUES:[I

.field static final PHONE_5_LEVEL_SIGNAL_STRENGTH:[I

.field static final PHONE_SIGNAL_STRENGTH:[I

.field static final WIFI_CONNECTION_STRENGTH:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const v0, 0x7f12007e

    const v1, 0x7f12008c

    const v2, 0x7f12008f

    const v3, 0x7f12008e

    const v4, 0x7f12008d

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_5_LEVEL_SIGNAL_STRENGTH:[I

    const v0, 0x7f12007d

    const v1, 0x7f120056

    const v2, 0x7f12005b

    const v3, 0x7f12005a

    const v4, 0x7f120059

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_CONNECTION_STRENGTH:[I

    const v0, 0x7f120082

    const v1, 0x7f1200f7

    const v2, 0x7f1200fa

    const v3, 0x7f1200f9

    const v4, 0x7f1200f8

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    const v0, 0x7f12006e

    const v1, 0x7f12006d

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->ETHERNET_CONNECTION_VALUES:[I

    return-void

    :array_0
    .array-data 4
        0x7f12007e
        0x7f12008c
        0x7f12008f
        0x7f12008e
        0x7f12008a
        0x7f12008d
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
