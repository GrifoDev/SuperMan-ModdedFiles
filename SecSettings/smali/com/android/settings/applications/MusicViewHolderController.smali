.class public Lcom/android/settings/applications/MusicViewHolderController;
.super Ljava/lang/Object;
.source "MusicViewHolderController.java"

# interfaces
.implements Lcom/android/settings/applications/FileViewHolderController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMusicSize:J

.field private mSource:Lcom/android/settingslib/applications/StorageStatsSource;

.field private mUser:Landroid/os/UserHandle;

.field private mVolumeUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/StorageStatsSource;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/MusicViewHolderController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/applications/MusicViewHolderController;->mSource:Lcom/android/settingslib/applications/StorageStatsSource;

    iput-object p3, p0, Lcom/android/settings/applications/MusicViewHolderController;->mVolumeUuid:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/applications/MusicViewHolderController;->mUser:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Fragment;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.android.providers.media.documents"

    const-string/jumbo v2, "audio_root"

    invoke-static {v1, v2}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "vnd.android.document/root"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.USER_ID"

    iget-object v2, p0, Lcom/android/settings/applications/MusicViewHolderController;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {p1, v0}, Lcom/android/settings/Utils;->launchIntent(Landroid/app/Fragment;Landroid/content/Intent;)V

    return-void
.end method

.method public queryStats()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/MusicViewHolderController;->mSource:Lcom/android/settingslib/applications/StorageStatsSource;

    iget-object v2, p0, Lcom/android/settings/applications/MusicViewHolderController;->mVolumeUuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/MusicViewHolderController;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Lcom/android/settingslib/applications/StorageStatsSource;->getExternalStorageStats(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    move-result-object v1

    iget-wide v2, v1, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->audioBytes:J

    iput-wide v2, p0, Lcom/android/settings/applications/MusicViewHolderController;->mMusicSize:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/settings/applications/MusicViewHolderController;->mMusicSize:J

    const-string/jumbo v1, "MusicViewHolderController"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setupView(Lcom/android/settings/applications/AppViewHolder;)V
    .locals 4

    iget-object v0, p1, Lcom/android/settings/applications/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/applications/MusicViewHolderController;->mContext:Landroid/content/Context;

    const v2, 0x7f08023c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p1, Lcom/android/settings/applications/AppViewHolder;->appName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/MusicViewHolderController;->mContext:Landroid/content/Context;

    const v2, 0x7f12025c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/android/settings/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/MusicViewHolderController;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/settings/applications/MusicViewHolderController;->mMusicSize:J

    invoke-static {v1, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public shouldShow()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
