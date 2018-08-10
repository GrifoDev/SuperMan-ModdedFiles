.class public Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;
.super Ljava/lang/Object;
.source "StorageAsyncLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppsStorageResult"
.end annotation


# instance fields
.field public externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

.field public gamesSize:J

.field public musicAppsSize:J

.field public otherAppsSize:J

.field public systemSize:J

.field public videoAppsSize:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
