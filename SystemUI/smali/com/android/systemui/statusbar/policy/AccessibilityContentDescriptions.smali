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

    const v0, 0x7f0f02b2

    const v1, 0x7f0f02b3

    const v2, 0x7f0f02b4

    const v3, 0x7f0f02b5

    const v4, 0x7f0f02b6

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_5_LEVEL_SIGNAL_STRENGTH:[I

    const v0, 0x7f0f02b7

    const v1, 0x7f0f02b8

    const v2, 0x7f0f02b9

    const v3, 0x7f0f02ba

    const v4, 0x7f0f02bb

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_CONNECTION_STRENGTH:[I

    const v0, 0x7f0f00d4

    const v1, 0x7f0f00d5

    const v2, 0x7f0f00d6

    const v3, 0x7f0f00d7

    const v4, 0x7f0f00d8

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    const v0, 0x7f0f02c4

    const v1, 0x7f0f02c5

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->ETHERNET_CONNECTION_VALUES:[I

    return-void

    :array_0
    .array-data 4
        0x7f0f02b2
        0x7f0f02b3
        0x7f0f02b4
        0x7f0f02b5
        0x7f0f066d
        0x7f0f02b6
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
