.class Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$5;
.super Ljava/lang/Object;
.source "BiometricsAndSecuritySettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->addSecurityStatusPref(Landroid/support/v7/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$5;->this$0:Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    const-string/jumbo v0, "BiometricsAndSecuritySettings"

    const-string/jumbo v1, "start to check software update"

    invoke-static {v0, v1}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$5;->this$0:Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->launchSoftwareUpdateForSecurityUpdateMenu(Landroid/content/Context;)V

    const/4 v0, 0x0

    return v0
.end method
