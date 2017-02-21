.class public Lcom/android/internal/os/PowerProfile$CpuClusterKey;
.super Ljava/lang/Object;
.source "PowerProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/PowerProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CpuClusterKey"
.end annotation


# instance fields
.field private final numCpus:I

.field private final powerKey:Ljava/lang/String;

.field private final timeKey:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->numCpus:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->powerKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->timeKey:Ljava/lang/String;

    return-object v0
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->timeKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->powerKey:Ljava/lang/String;

    iput p3, p0, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->numCpus:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/os/PowerProfile$CpuClusterKey;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
