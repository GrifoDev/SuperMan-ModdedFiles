.class public final Landroid/os/health/PackageHealthStats;
.super Ljava/lang/Object;
.source "PackageHealthStats.java"


# static fields
.field public static final CONSTANTS:Landroid/os/health/HealthKeys$Constants;

.field public static final MEASUREMENTS_WAKEUP_ALARMS_COUNT:I = 0x9c42
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x4
    .end annotation
.end field

.field public static final STATS_SERVICES:I = 0x9c41
    .annotation runtime Landroid/os/health/HealthKeys$Constant;
        type = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/health/HealthKeys$Constants;

    const-class v1, Landroid/os/health/PackageHealthStats;

    invoke-direct {v0, v1}, Landroid/os/health/HealthKeys$Constants;-><init>(Ljava/lang/Class;)V

    sput-object v0, Landroid/os/health/PackageHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
