.class Lcom/android/server/cover/CoverManagerDebugConfig;
.super Ljava/lang/Object;
.source "CoverManagerDebugConfig.java"


# static fields
.field static final DEBUG_ALL:Z

.field static final DEBUG_DISABLE:Z

.field static final DEBUG_HIDE:Z

.field static final DEBUG_LED:Z

.field static final DEBUG_LOGGING:Z

.field static final DEBUG_MGR:Z

.field static final DEBUG_NFC:Z

.field static final DEBUG_NOTIFY:Z

.field static final DEBUG_WHITE:Z

.field static final SAFE_DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
