.class public final Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
.super Ljava/lang/Object;
.source "ProcessStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/procstats/ProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProcessStateHolder"
.end annotation


# instance fields
.field public final appVersion:I

.field public state:Lcom/android/internal/app/procstats/ProcessState;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "_appVersion"    # I

    .prologue
    .line 1789
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1790
    iput p1, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:I

    .line 1789
    return-void
.end method
