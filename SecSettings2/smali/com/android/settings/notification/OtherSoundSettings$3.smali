.class final Lcom/android/settings/notification/OtherSoundSettings$3;
.super Lcom/android/settings/notification/SettingPref;
.source "OtherSoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/OtherSoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method varargs constructor <init>(ILjava/lang/String;Ljava/lang/String;I[I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    return-void
.end method


# virtual methods
.method protected setSetting(Landroid/content/Context;I)Z
    .locals 1

    new-instance v0, Lcom/android/settings/notification/OtherSoundSettings$3$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/notification/OtherSoundSettings$3$1;-><init>(Lcom/android/settings/notification/OtherSoundSettings$3;Landroid/content/Context;I)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    invoke-super {p0, p1, p2}, Lcom/android/settings/notification/SettingPref;->setSetting(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method
