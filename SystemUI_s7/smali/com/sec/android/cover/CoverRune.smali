.class public Lcom/sec/android/cover/CoverRune;
.super Ljava/lang/Object;
.source "CoverRune.java"


# static fields
.field public static final FEATURE_NO_ROAMING_TEXT_ON_DUAL_CLOCK:Z

.field public static final FEATURE_SUPPORT_COLORED_CLEARCOVER_BG:Z

.field public static final FEATURE_SUPPORT_CONTEXTUAL_SURVEY:Z

.field public static final FEATURE_SUPPORT_ELASTIC_PLUGIN:Z

.field public static final FEATURE_SUPPORT_NOTIFIACTION_ON_COVER:Z

.field public static final FEATURE_SUPPORT_PHONE_LOCK:Z

.field private static final TAG:Ljava/lang/String;

.field private static final mSalesCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    const-class v0, Lcom/sec/android/cover/CoverRune;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/CoverRune;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/CoverRune;->mSalesCode:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/cover/CoverRune;->FEATURE_SUPPORT_CONTEXTUAL_SURVEY:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_COLORED_CLEARCOVER_BG"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/cover/CoverRune;->FEATURE_SUPPORT_COLORED_CLEARCOVER_BG:Z

    invoke-static {}, Lcom/sec/android/cover/CoverRune;->isLGTModel()Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/cover/CoverRune;->FEATURE_SUPPORT_PHONE_LOCK:Z

    invoke-static {}, Lcom/sec/android/cover/CoverRune;->isATTModel()Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/cover/CoverRune;->FEATURE_NO_ROAMING_TEXT_ON_DUAL_CLOCK:Z

    sput-boolean v2, Lcom/sec/android/cover/CoverRune;->FEATURE_SUPPORT_ELASTIC_PLUGIN:Z

    sput-boolean v2, Lcom/sec/android/cover/CoverRune;->FEATURE_SUPPORT_NOTIFIACTION_ON_COVER:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isATTModel()Z
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "ATT"

    sget-object v2, Lcom/sec/android/cover/CoverRune;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "UC"

    sget-object v2, Lcom/sec/android/cover/CoverRune;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static isLGTModel()Z
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "LGT"

    sget-object v2, Lcom/sec/android/cover/CoverRune;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "LUC"

    sget-object v2, Lcom/sec/android/cover/CoverRune;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "LUO"

    sget-object v2, Lcom/sec/android/cover/CoverRune;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method
