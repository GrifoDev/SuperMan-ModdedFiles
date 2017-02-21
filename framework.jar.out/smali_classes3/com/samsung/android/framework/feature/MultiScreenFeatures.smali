.class public Lcom/samsung/android/framework/feature/MultiScreenFeatures;
.super Ljava/lang/Object;
.source "MultiScreenFeatures.java"


# static fields
.field public static final DEBUG_MULTISCREEN:Z = true

.field public static final DEBUG_REORDER:Z = true

.field public static final MULTISCREEN_ENABLED:Z = true

.field public static final PLUGINSCREEN_ENABLED:Z = false

.field public static final SAFE_DEBUG:Z = true

.field public static SUPPORT_DISPLAY_CHOOSER:Z = false

.field public static final VIRTUALSCREEN_ENABLED:Z = true

.field public static final VIRTUALSPACE_ENABLED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/framework/feature/MultiScreenFeatures;->SUPPORT_DISPLAY_CHOOSER:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
