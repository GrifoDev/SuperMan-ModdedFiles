.class Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;
.super Ljava/lang/Object;
.source "StorageSettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V

    return-void
.end method

.method private updateSummary()V
    .locals 14

    iget-object v9, p0, Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const-class v10, Landroid/os/storage/StorageManager;

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v8

    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    :cond_1
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v10

    invoke-virtual {v2}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v12

    sub-long/2addr v10, v12

    add-long/2addr v6, v10

    invoke-virtual {v2}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v10

    add-long/2addr v4, v10

    goto :goto_0

    :cond_2
    iget-object v9, p0, Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v10, p0, Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    iget-object v12, p0, Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-static {v12, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    iget-object v12, p0, Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-static {v12, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const v12, 0x7f0b1ac4

    invoke-virtual {v10, v12, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, p0, v10}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;->updateSummary()V

    :cond_0
    return-void
.end method
