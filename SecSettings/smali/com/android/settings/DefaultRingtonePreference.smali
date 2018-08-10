.class public Lcom/android/settings/DefaultRingtonePreference;
.super Lcom/android/settings/RingtonePreference;
.source "DefaultRingtonePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DefaultRingtonePreference$1;
    }
.end annotation


# instance fields
.field private isWidget:Ljava/lang/Boolean;

.field private mActivePhone:I

.field private mResultListener:Lcom/samsung/android/settings/RingtoneRecommender$OnHighlightResultListener;

.field private mRingtoneDual:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

.field private mRingtoneNotificationSettings:Lcom/samsung/android/settings/notification/SoundSettings;

.field private mRingtoneNotificationsSubSettings:Lcom/samsung/android/settings/notification/NotificationsSubSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DefaultRingtonePreference;->isWidget:Ljava/lang/Boolean;

    new-instance v0, Lcom/android/settings/DefaultRingtonePreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DefaultRingtonePreference$1;-><init>(Lcom/android/settings/DefaultRingtonePreference;)V

    iput-object v0, p0, Lcom/android/settings/DefaultRingtonePreference;->mResultListener:Lcom/samsung/android/settings/RingtoneRecommender$OnHighlightResultListener;

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-ne p2, v3, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/DefaultRingtonePreference;->mRingtoneDual:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/DefaultRingtonePreference;->mRingtoneNotificationSettings:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/notification/SoundSettings;->onMusicPickerChosen(I)Landroid/content/Intent;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DefaultRingtonePreference;->isWidget:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eq p2, v3, :cond_1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DefaultRingtonePreference;->isWidget:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/android/settings/DefaultRingtonePreference;->mRingtoneNotificationSettings:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/SoundSettings;->finish()V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    :cond_2
    iget-object v1, p0, Lcom/android/settings/DefaultRingtonePreference;->mRingtoneDual:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->onMusicPickerChosen(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/DefaultRingtonePreference;->mRingtoneNotificationSettings:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/notification/SoundSettings;->onMusicPickerChosen(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    const-string/jumbo v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v0, "DefaultRingtonePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPrepareRingtonePickerIntent mActivePhone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/DefaultRingtonePreference;->mActivePhone:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v0

    if-eq v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    :cond_0
    const-string/jumbo v0, "neutral_button"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v0, "neutral_button_text"

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1205f4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "DefaultRingtonePreference"

    const-string/jumbo v1, "add extra: neutral_button true"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/DefaultRingtonePreference;->mUserContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 10

    iget-object v0, p0, Lcom/android/settings/DefaultRingtonePreference;->mUserContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    new-instance v9, Landroid/media/RingtoneManager;

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, p1}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v6, 0x0

    const-string/jumbo v0, "DefaultRingtonePreference"

    const-string/jumbo v1, "onSaveRingtone"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v1, "_data"

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string/jumbo v1, "title"

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/settings/RingtoneRecommender;

    invoke-direct {v8}, Lcom/samsung/android/settings/RingtoneRecommender;-><init>()V

    iget-object v0, p0, Lcom/android/settings/DefaultRingtonePreference;->mResultListener:Lcom/samsung/android/settings/RingtoneRecommender$OnHighlightResultListener;

    invoke-virtual {v8, v7, v0}, Lcom/samsung/android/settings/RingtoneRecommender;->doExtract(Ljava/lang/String;Lcom/samsung/android/settings/RingtoneRecommender$OnHighlightResultListener;)V

    invoke-virtual {v8}, Lcom/samsung/android/settings/RingtoneRecommender;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/samsung/android/settings/RingtoneRecommender;->mIsOpen:Z

    invoke-virtual {v8}, Lcom/samsung/android/settings/RingtoneRecommender;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public setObject(Lcom/samsung/android/settings/notification/NotificationsSubSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/DefaultRingtonePreference;->mRingtoneNotificationsSubSettings:Lcom/samsung/android/settings/notification/NotificationsSubSettings;

    return-void
.end method

.method public setObject(Lcom/samsung/android/settings/notification/SoundSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/DefaultRingtonePreference;->mRingtoneNotificationSettings:Lcom/samsung/android/settings/notification/SoundSettings;

    return-void
.end method

.method public setObjectDual(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)V
    .locals 3

    iput-object p1, p0, Lcom/android/settings/DefaultRingtonePreference;->mRingtoneDual:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    iget-object v0, p0, Lcom/android/settings/DefaultRingtonePreference;->mRingtoneDual:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DefaultRingtonePreference;->mRingtoneDual:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->getmActivePhone()I

    move-result v0

    iput v0, p0, Lcom/android/settings/DefaultRingtonePreference;->mActivePhone:I

    :cond_0
    const-string/jumbo v0, "DefaultRingtonePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DefaultRingtonePreference | mActivePhone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/DefaultRingtonePreference;->mActivePhone:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v0

    iget v1, p0, Lcom/android/settings/DefaultRingtonePreference;->mActivePhone:I

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->convertSettingForType(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/DefaultRingtonePreference;->setRingtoneType(I)V

    return-void
.end method
