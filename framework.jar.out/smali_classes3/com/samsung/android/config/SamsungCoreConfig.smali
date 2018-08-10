.class public Lcom/samsung/android/config/SamsungCoreConfig;
.super Ljava/lang/Object;
.source "SamsungCoreConfig.java"


# static fields
.field public static final DSS_ENABLED:Z = true

.field public static final FEATURE_AOD:Z

.field public static final FEATURE_AUDIO_SPEAKER_LR_SWITCHING:Z = true

.field public static final FEATURE_CAR_MODE:Z = true

.field public static final FEATURE_COCKTAIL:Z = true

.field public static final FEATURE_CONVENTIONAL_MODE:Z = false

.field public static final FEATURE_COVER:Z = true

.field public static final FEATURE_DESKTOP_MODE:Z = false

.field public static final FEATURE_FIXED_ORIENTATION:Z = true

.field public static final FEATURE_FORCE_IMMERSIVE_MODE:Z = true

.field public static final FEATURE_HIDE_NAVIBAR:Z = true

.field public static final FEATURE_HORIZONTAL_MODE:Z = false

.field public static final FEATURE_KEYBOARD_COVER:Z = true

.field public static final FEATURE_PACKAGE_CONFIGURATIONS:Z = false

.field public static final FEATURE_PEN_SELECTION:Z = true

.field public static final FEATURE_SAMSUNG_SERVICES:Z = true

.field public static final FEATURE_SAMSUNG_STARTING_WINDOW:Z = true

.field public static final FEATURE_SF_EFFECTS:Z = true

.field public static final FEATURE_SMART_EDGE_ZONE:Z = true

.field public static final NAVIGATION_BAR_FEATURE:Ljava/lang/String; = ""

.field public static final PC_FEATURE_ASPECT_RATIO_CONTROL:Z = false

.field public static final PC_FEATURE_NAVBAR_ALWAYS_ENABLED:Z = false

.field public static final PC_FEATURE_REDUCED_SCREEN:Z = false

.field public static final PC_FEATURE_SCREEN_SIDE_TOUCH_AREA:Z = false

.field private static final TAG:Ljava/lang/String; = "SamsungCoreConfig"

.field public static final VERSION_AOD:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    const-string/jumbo v1, "5"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/samsung/android/config/SamsungCoreConfig;->VERSION_AOD:I

    sget v1, Lcom/samsung/android/config/SamsungCoreConfig;->VERSION_AOD:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/samsung/android/config/SamsungCoreConfig;->FEATURE_AOD:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "VERSION_AOD="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/config/SamsungCoreConfig;->VERSION_AOD:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "FEATURE_COCKTAIL="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "FEATURE_FIXED_ORIENTATION="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "FEATURE_HORIZONTAL_MODE="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
