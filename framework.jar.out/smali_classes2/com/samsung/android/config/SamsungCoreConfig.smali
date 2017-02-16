.class public Lcom/samsung/android/config/SamsungCoreConfig;
.super Ljava/lang/Object;
.source "SamsungCoreConfig.java"


# static fields
.field public static final DSS_ENABLED:Z = true

.field public static final FEATURE_AOD:Z

.field public static final FEATURE_AUDIO_SPEAKER_LR_SWITCHING:Z

.field public static final FEATURE_CAMERA_ROTATION:Z = true

.field public static final FEATURE_CAR_MODE:Z = true

.field public static final FEATURE_COCKTAIL:Z = true

.field public static final FEATURE_COVER:Z = true

.field public static final FEATURE_HORIZONTAL_MODE:Z = false

.field public static final FEATURE_KEYBOARD_COVER:Z = true

.field public static final FEATURE_KNOX_DESKTOP:Z = false

.field public static final FEATURE_PACKAGE_CONFIGURATIONS_ENABLED:Z = false

.field public static final FEATURE_REDUCE_SCREEN:Z = true

.field public static final FEATURE_SAMSUNG_SERVICES:Z = true

.field public static final FEATURE_SAMSUNG_STARTING_WINDOW:Z = true

.field public static final FEATURE_SF_EFFECTS:Z = true

.field private static final TAG:Ljava/lang/String; = "SamsungCoreConfig"

.field public static final VERSION_AOD:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 34
    const-string/jumbo v0, "2"

    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/samsung/android/config/SamsungCoreConfig;->VERSION_AOD:I

    .line 37
    const-string/jumbo v0, "1"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 36
    :goto_0
    sput-boolean v0, Lcom/samsung/android/config/SamsungCoreConfig;->FEATURE_AUDIO_SPEAKER_LR_SWITCHING:Z

    .line 43
    sget v0, Lcom/samsung/android/config/SamsungCoreConfig;->VERSION_AOD:I

    if-lez v0, :cond_1

    :goto_1
    sput-boolean v1, Lcom/samsung/android/config/SamsungCoreConfig;->FEATURE_AOD:Z

    .line 28
    return-void

    :cond_0
    move v0, v2

    .line 37
    goto :goto_0

    :cond_1
    move v1, v2

    .line 43
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v1, 0x1

    .line 72
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "VERSION_AOD="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/config/SamsungCoreConfig;->VERSION_AOD:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "FEATURE_COCKTAIL="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "FEATURE_REDUCE_SCREEN="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "FEATURE_CAMERA_ROTATION="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "FEATURE_HORIZONTAL_MODE="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 71
    return-void
.end method
