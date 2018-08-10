.class public Lcom/samsung/android/framework/feature/NavigationBarFeatures;
.super Ljava/lang/Object;
.source "NavigationBarFeatures.java"


# static fields
.field public static final NAVIGATION_BAR_THEME:Ljava/lang/String;

.field public static final SUPPORT_CUSTOM_BG_COLOR:Z

.field public static final SUPPORT_IMMERSIVE_FORCE_TOUCH:Z

.field public static final SUPPORT_LIGHT_NAVIGATION_BAR:Z

.field public static final SUPPORT_NAVIGATION_BAR:Z

.field public static final SUPPORT_NAVIGATION_BAR_REMOTEVIEW:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_NAVIGATION_BAR_THEME"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->NAVIGATION_BAR_THEME:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->NAVIGATION_BAR_THEME:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->SUPPORT_NAVIGATION_BAR:Z

    sget-object v0, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->NAVIGATION_BAR_THEME:Ljava/lang/String;

    const-string/jumbo v1, "SupportLightNavigationBar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->SUPPORT_LIGHT_NAVIGATION_BAR:Z

    sget-object v0, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->NAVIGATION_BAR_THEME:Ljava/lang/String;

    const-string/jumbo v1, "SupportCustomBgColor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->SUPPORT_CUSTOM_BG_COLOR:Z

    sget-object v0, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->NAVIGATION_BAR_THEME:Ljava/lang/String;

    const-string/jumbo v1, "SupportForceTouch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->SUPPORT_IMMERSIVE_FORCE_TOUCH:Z

    sget-object v0, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->NAVIGATION_BAR_THEME:Ljava/lang/String;

    const-string/jumbo v1, "SupportNaviBarRemoteView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->SUPPORT_NAVIGATION_BAR_REMOTEVIEW:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
