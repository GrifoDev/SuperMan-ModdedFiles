.class public Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;
.super Ljava/lang/Object;
.source "StorageStatsSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/StorageStatsSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExternalStorageStats"
.end annotation


# instance fields
.field public audioBytes:J

.field public imageBytes:J

.field public totalBytes:J

.field public videoBytes:J


# direct methods
.method public constructor <init>(JJJJ)V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->totalBytes:J

    iput-wide p3, p0, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->audioBytes:J

    iput-wide p5, p0, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->videoBytes:J

    iput-wide p7, p0, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->imageBytes:J

    return-void
.end method
