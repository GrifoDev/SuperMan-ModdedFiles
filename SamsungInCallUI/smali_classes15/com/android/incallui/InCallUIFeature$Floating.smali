.class public Lcom/android/incallui/InCallUIFeature$Floating;
.super Ljava/lang/Object;
.source "InCallUIFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallUIFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Floating"
.end annotation


# static fields
.field public static final COMMON_CONFIG_MOBILE_KEYBOARD_LAYOUT_TYPE:Ljava/lang/String; = "SEC_FLOATING_FEATURE_VOICECALL_CONFIG_MOBILE_KEYBOARD_LAYOUT_TYPE"

.field public static final COMMON_SUPPORT_BATTERY_CONVERSING:Ljava/lang/String; = "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

.field public static final COMMON_SUPPORT_KNOX_DESKTOP:Ljava/lang/String; = "SEC_FLOATING_FEATURE_COMMON_SUPPORT_KNOX_DESKTOP"

.field public static final COMMON_SUPPORT_NFC_HW_KEYBOARD:Ljava/lang/String; = "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

.field public static final COMMON_SUPPORT_ONE_HANDED_INPUT_GUI:Ljava/lang/String; = "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ONE_HANDED_INPUT_GUI"

.field public static final COMMON_SUPPORT_SAFETYCARE:Ljava/lang/String; = "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

.field public static final COMMON_SUPPORT_ULTRA_POWER_SAVING:Ljava/lang/String; = "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

.field public static final CONTEXTSERVICE_ENABLE_SURVEY_MODE:Ljava/lang/String; = "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

.field public static final LCD_SUPPORT_AMOLED_DISPLAY:Ljava/lang/String; = "SEC_FLOATING_FEATURE_LCD_SUPPORT_AMOLED_DISPLAY"

.field public static final LCD_SUPPORT_MDNIE_HW:Ljava/lang/String; = "SEC_FLOATING_FEATURE_LCD_SUPPORT_MDNIE_HW"

.field public static final VOICECALL_SUPPORT_ACTION_MEMO:Ljava/lang/String; = "SEC_FLOATING_FEATURE_VOICECALL_SUPPORT_ACTION_MEMO"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEnableStatus(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 608
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getInteger(Ljava/lang/String;)I
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 612
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 616
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
