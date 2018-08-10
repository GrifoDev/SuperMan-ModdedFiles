.class public Lcom/android/settings/notification/DefaultNotificationTonePreference;
.super Lcom/android/settings/DefaultRingtonePreference;
.source "DefaultNotificationTonePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/DefaultNotificationTonePreference$1;
    }
.end annotation


# instance fields
.field private mRingtone:Landroid/net/Uri;


# direct methods
.method static synthetic -get0(Lcom/android/settings/notification/DefaultNotificationTonePreference;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/DefaultNotificationTonePreference;->mUserContext:Landroid/content/Context;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/DefaultRingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/DefaultRingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    const-string/jumbo v0, "android.intent.extra.ringtone.EXISTING_URI"

    iget-object v1, p0, Lcom/android/settings/notification/DefaultNotificationTonePreference;->mRingtone:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/DefaultNotificationTonePreference;->mRingtone:Landroid/net/Uri;

    return-object v0
.end method
