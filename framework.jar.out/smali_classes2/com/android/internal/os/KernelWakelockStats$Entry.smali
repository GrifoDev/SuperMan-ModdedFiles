.class public Lcom/android/internal/os/KernelWakelockStats$Entry;
.super Ljava/lang/Object;
.source "KernelWakelockStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KernelWakelockStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field public mCount:I

.field public mTotalTime:J

.field public mVersion:I


# direct methods
.method constructor <init>(IJI)V
    .locals 0
    .param p1, "count"    # I
    .param p2, "totalTime"    # J
    .param p4, "version"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    .line 31
    iput-wide p2, p0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    .line 32
    iput p4, p0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    .line 29
    return-void
.end method
