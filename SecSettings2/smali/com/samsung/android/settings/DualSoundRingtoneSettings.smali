.class public Lcom/samsung/android/settings/DualSoundRingtoneSettings;
.super Landroid/preference/PreferenceActivity;
.source "DualSoundRingtoneSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/DualSoundRingtoneSettings$1;
    }
.end annotation


# static fields
.field private static myContext:Landroid/content/Context;


# instance fields
.field private mActivePhone:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mHandler:Landroid/os/Handler;

.field private mNotificationPreference:Landroid/preference/Preference;

.field private mRingtone2Preference:Landroid/preference/Preference;

.field private mRingtoneNotificationRunnable:Ljava/lang/Runnable;

.field private mRingtonePreference:Landroid/preference/Preference;

.field private offset:Ljava/lang/String;

.field receiver:Landroid/content/BroadcastReceiver;

.field private ringtone:Lcom/android/settings/DefaultRingtonePreference;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mActivePhone:I

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mNotificationPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/DualSoundRingtoneSettings;ILandroid/preference/Preference;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings$1;-><init>(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private UpdateRingtoneNotificationNames()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mRingtoneNotificationRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private canSetRingtone(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 8

    const/4 v7, 0x0

    const-string/jumbo v4, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz p2, :cond_2

    const-string/jumbo v4, "DualSoundRingtoneSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "inside canSetRingtone ringtone uri is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "DualSoundRingtoneSettings"

    const-string/jumbo v5, "Inside cansetringtone ringtone uri not null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "content://media/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "DualSoundRingtoneSettings"

    const-string/jumbo v5, "ringtoneUri.toString().contains(content:media)"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-direct {v0, p1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0, p2, v4}, Landroid/drm/DrmManagerClient;->canHandle(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "DualSoundRingtoneSettings"

    const-string/jumbo v5, "drmClient.canHandle(ringtoneUri, null)"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    invoke-virtual {v0, p2, v4}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Landroid/net/Uri;I)I

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v4, "DualSoundRingtoneSettings"

    const-string/jumbo v5, "PR DRM File Ringtone Rights Invalid !!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_0
    invoke-static {p1, p2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v3

    const-string/jumbo v4, "DualSoundRingtoneSettings"

    const-string/jumbo v5, "RingtoneManager.getRingtone(context, ringtoneUri)"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_1

    const-string/jumbo v4, "DualSoundRingtoneSettings"

    const-string/jumbo v5, "returning false because rtTemp is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "DualSoundRingtoneSettings"

    const-string/jumbo v5, "getRingtone() null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v7

    :catch_0
    move-exception v1

    const-string/jumbo v4, "DualSoundRingtoneSettings"

    const-string/jumbo v5, "canSetRingtone() exception !!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const/4 v4, 0x1

    return v4

    :cond_2
    const-string/jumbo v4, "DualSoundRingtoneSettings"

    const-string/jumbo v5, "inside canSetRingtone ringtone uri is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private configureActionBar()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    :cond_0
    return-void
.end method

.method private updateMediaDB(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 13

    const/4 v12, 0x0

    const-string/jumbo v9, "DualSoundRingtoneSettings"

    const-string/jumbo v10, "UpdateMediaDB"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v9, "DualSoundRingtoneSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "file path : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v9, 0x2e

    invoke-virtual {v3, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v9, "DualSoundRingtoneSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateMediaDB - extension("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "), mimeType("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_2

    const-string/jumbo v9, "3ga"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string/jumbo v9, "DualSoundRingtoneSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateMediaDB - no mimeType, but it\'s audio file extension - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v9, "_data"

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "title"

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "mime_type"

    const-string/jumbo v10, "audio/*"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "_size"

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "_data=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v7, v10, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    const-string/jumbo v9, "DualSoundRingtoneSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateMediaDB - tempUri("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "), newUri("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_2
    :try_start_1
    const-string/jumbo v9, "audio"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string/jumbo v9, "DualSoundRingtoneSettings"

    const-string/jumbo v10, "updateMediaDB - mimeType is not audio - return null"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v12

    :catch_0
    move-exception v1

    const-string/jumbo v9, "DualSoundRingtoneSettings"

    const-string/jumbo v10, "updateMediaDB - exception is Occured - return null"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v12
.end method

.method private updateRingtoneData(I)V
    .locals 3

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    invoke-direct {p0, v2, v0, v2}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mRingtone2Preference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mRingtone2Preference:Landroid/preference/Preference;

    const/16 v1, 0x80

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V

    goto :goto_0
.end method

.method private updateRingtoneName(ILandroid/preference/Preference;I)V
    .locals 10

    if-nez p2, :cond_0

    return-void

    :cond_0
    move-object v6, p0

    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    const v0, 0x10403e1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-nez v1, :cond_2

    const v0, 0x10403df

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p3, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "title"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method private updateState(Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mNotificationPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mNotificationPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getmActivePhone()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mActivePhone:I

    return v0
.end method

.method public handleRingtonePicked(Landroid/net/Uri;I)V
    .locals 8

    const v7, 0x7f0b09ea

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const-string/jumbo v3, "DualSoundRingtoneSettings"

    const-string/jumbo v4, "handleRingtonePicked() : Not changed"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->updateRingtoneData(I)V

    return-void

    :cond_2
    const-string/jumbo v3, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->myContext:Landroid/content/Context;

    invoke-direct {p0, v3, p1}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->canSetRingtone(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "DualSoundRingtoneSettings"

    const-string/jumbo v4, "Inside cansetringtone false"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    return-void

    :cond_3
    const-string/jumbo v3, "DualSoundRingtoneSettings"

    const-string/jumbo v4, "handleRingtonePicked updating media DB"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->updateMediaDB(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_4

    const-string/jumbo v3, "DualSoundRingtoneSettings"

    const-string/jumbo v4, "handleRingtonePicked - pickedUri is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    return-void

    :cond_4
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "is_ringtone"

    const-string/jumbo v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string/jumbo v3, "DualSoundRingtoneSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleRingtonePicked - pickedUri("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "), ringtoneType("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p2, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->offset:Ljava/lang/String;

    if-eqz v3, :cond_1

    const/16 v3, 0x80

    if-ne p2, v3, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "recommendation_time_2"

    iget-object v5, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->offset:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "DualSoundRingtoneSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleRingtonePicked(Exception): pickedUri is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :catch_1
    move-exception v1

    const-string/jumbo v3, "DualSoundRingtoneSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleRingtonePicked(IllegalArgumentException): pickedUri is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "recommendation_time"

    iget-object v5, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->offset:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v1, -0x1

    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    if-ne p2, v1, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "highlight_offset"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->offset:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->handleRingtonePicked(Landroid/net/Uri;I)V

    goto :goto_0

    :pswitch_1
    if-ne p2, v1, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "highlight_offset"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->offset:Ljava/lang/String;

    const/16 v1, 0x80

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->handleRingtonePicked(Landroid/net/Uri;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v5, "audio"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v5, "phone"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v5, "sim Id"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "sim Id"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mActivePhone:I

    const-string/jumbo v5, "DualSoundRingtoneSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "intent.hasExtra(SIM_CARD_ID) exist. mActivePhone : ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mActivePhone:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string/jumbo v5, "sound title"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "sound title"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    const v5, 0x7f08006a

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v5, "ringtone"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/DefaultRingtonePreference;

    iput-object v5, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->ringtone:Lcom/android/settings/DefaultRingtonePreference;

    iget-object v5, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->ringtone:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v5, p0}, Lcom/android/settings/DefaultRingtonePreference;->setObjectDual(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)V

    :try_start_0
    const-string/jumbo v5, "com.android.settings"

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    sput-object v5, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->myContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string/jumbo v5, "ringtone"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_1
    const-string/jumbo v5, "ringtone2"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mRingtone2Preference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mRingtone2Preference:Landroid/preference/Preference;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mRingtone2Preference:Landroid/preference/Preference;

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_2
    const-string/jumbo v5, "notification_sound"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mNotificationPreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mNotificationPreference:Landroid/preference/Preference;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mNotificationPreference:Landroid/preference/Preference;

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->configureActionBar()V

    new-instance v5, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;-><init>(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)V

    iput-object v5, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mRingtoneNotificationRunnable:Ljava/lang/Runnable;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v5, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-direct {v1, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/samsung/android/settings/DualSoundRingtoneSettings$3;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings$3;-><init>(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)V

    iput-object v5, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v1}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_4
    invoke-static {p0}, Lcom/android/settings/Utils;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v8, :cond_5

    invoke-virtual {v3, v8}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v5

    const/4 v6, 0x5

    if-ne v6, v5, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "phone2_on"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v8, :cond_5

    iput v8, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mActivePhone:I

    :goto_2
    const-string/jumbo v5, "DualSoundRingtoneSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "intent.hasExtra(SIM_CARD_ID) not exist. mActivePhone : ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mActivePhone:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    iput v7, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mActivePhone:I

    goto :goto_2

    :catch_0
    move-exception v0

    const-string/jumbo v5, "DualSoundRingtoneSettings"

    const-string/jumbo v6, "GPS sound settings: error getting activity of create package context"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DualSoundRingtoneSettings"

    const-string/jumbo v2, "The QCOM HOT SWAP receiver is already unregistered"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->finish()V

    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onMusicPickerChosen(I)V
    .locals 4

    const/4 v3, 0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "audio/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "enable_ringtone_recommender"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "DocumentsUIPolicy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-ne p1, v3, :cond_0

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :try_start_1
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->updateState(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->UpdateRingtoneNotificationNames()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method
