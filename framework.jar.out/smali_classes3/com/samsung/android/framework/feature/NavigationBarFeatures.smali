.class public Lcom/samsung/android/framework/feature/NavigationBarFeatures;
.super Ljava/lang/Object;
.source "NavigationBarFeatures.java"


# static fields
.field public static final NAVIGATION_BAR_THEME:Ljava/lang/String; = ""

.field public static final SUPPORT_APP_SWITCHER:Z

.field public static final SUPPORT_CUSTOM_BG_COLOR:Z

.field public static final SUPPORT_CUSTOM_HEIGHT:Z

.field public static final SUPPORT_IMMERSIVE_FORCE_TOUCH:Z

.field public static final SUPPORT_LIGHT_NAVIGATION_BAR:Z

.field public static final SUPPORT_NAVIGATION_BAR:Z

.field public static final SUPPORT_NAVIGATION_BAR_REMOTEVIEW:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->SUPPORT_NAVIGATION_BAR:Z

    const-string/jumbo v0, ""

    const-string/jumbo v1, "SupportLightNavigationBar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->SUPPORT_LIGHT_NAVIGATION_BAR:Z

    const-string/jumbo v0, ""

    const-string/jumbo v1, "SupportCustomBgColor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->SUPPORT_CUSTOM_BG_COLOR:Z

    const-string/jumbo v0, ""

    const-string/jumbo v1, "SupportAppSwitcher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->SUPPORT_APP_SWITCHER:Z

    const-string/jumbo v0, ""

    const-string/jumbo v1, "SupportForceTouch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->SUPPORT_IMMERSIVE_FORCE_TOUCH:Z

    const-string/jumbo v0, ""

    const-string/jumbo v1, "SupportCustomHeight"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->SUPPORT_CUSTOM_HEIGHT:Z

    const-string/jumbo v0, ""

    const-string/jumbo v1, "SupportNaviBarRemoteView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->SUPPORT_NAVIGATION_BAR_REMOTEVIEW:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
