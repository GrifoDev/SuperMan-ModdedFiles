.class Lcom/android/settings/location/SettingsInjector$ServiceSettingClickedListener;
.super Ljava/lang/Object;
.source "SettingsInjector.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/SettingsInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceSettingClickedListener"
.end annotation


# instance fields
.field private mInfo:Lcom/android/settings/location/InjectedSetting;

.field final synthetic this$0:Lcom/android/settings/location/SettingsInjector;


# direct methods
.method public constructor <init>(Lcom/android/settings/location/SettingsInjector;Lcom/android/settings/location/InjectedSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/location/SettingsInjector$ServiceSettingClickedListener;->this$0:Lcom/android/settings/location/SettingsInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/location/SettingsInjector$ServiceSettingClickedListener;->mInfo:Lcom/android/settings/location/InjectedSetting;

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/settings/location/SettingsInjector$ServiceSettingClickedListener;->mInfo:Lcom/android/settings/location/InjectedSetting;

    iget-object v1, v1, Lcom/android/settings/location/InjectedSetting;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/location/SettingsInjector$ServiceSettingClickedListener;->mInfo:Lcom/android/settings/location/InjectedSetting;

    iget-object v2, v2, Lcom/android/settings/location/InjectedSetting;->settingsActivity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/location/SettingsInjector$ServiceSettingClickedListener;->this$0:Lcom/android/settings/location/SettingsInjector;

    invoke-static {v1}, Lcom/android/settings/location/SettingsInjector;->-get0(Lcom/android/settings/location/SettingsInjector;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/location/SettingsInjector$ServiceSettingClickedListener;->mInfo:Lcom/android/settings/location/InjectedSetting;

    iget-object v2, v2, Lcom/android/settings/location/InjectedSetting;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 v1, 0x1

    return v1
.end method
