.class public Lcom/samsung/android/framework/feature/MultiScreenFeatures;
.super Ljava/lang/Object;
.source "MultiScreenFeatures.java"


# static fields
.field public static final DEBUG_MULTISCREEN:Z

.field public static final DEBUG_REORDER:Z

.field public static final DUALVIEW_ENABLED:Z = false

.field public static final MULTISCREEN_ENABLED:Z = true

.field public static final SAFE_DEBUG:Z

.field public static final VIRTUALSCREEN_ENABLED:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/samsung/android/framework/feature/MultiScreenFeatures;->SAFE_DEBUG:Z

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiScreenFeatures;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/framework/feature/MultiScreenFeatures;->DEBUG_REORDER:Z

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiScreenFeatures;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/framework/feature/MultiScreenFeatures;->DEBUG_MULTISCREEN:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
