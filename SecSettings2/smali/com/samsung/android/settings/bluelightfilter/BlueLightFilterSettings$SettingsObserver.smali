.class final Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BlueLightFilterSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final BLUE_LIGHT_FILTER_OPACITY_URI:Landroid/net/Uri;

.field private final BLUE_LIGHT_FILTER_SCHEDULED_URI:Landroid/net/Uri;

.field private final BLUE_LIGHT_FILTER_TYPE_URI:Landroid/net/Uri;

.field private final BLUE_LIGHT_FILTER_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;Landroid/os/Handler;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo v0, "blue_light_filter"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->BLUE_LIGHT_FILTER_URI:Landroid/net/Uri;

    const-string/jumbo v0, "blue_light_filter_opacity"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->BLUE_LIGHT_FILTER_OPACITY_URI:Landroid/net/Uri;

    const-string/jumbo v0, "blue_light_filter_scheduled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->BLUE_LIGHT_FILTER_SCHEDULED_URI:Landroid/net/Uri;

    const-string/jumbo v0, "blue_light_filter_type"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->BLUE_LIGHT_FILTER_TYPE_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->BLUE_LIGHT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v4, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get3(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/preference/SwitchPreference;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get3(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/preference/SwitchPreference;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-wrap0(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "blue_light_filter"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    :goto_0
    invoke-virtual {v4, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get1(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get1(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get3(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->setEnabled(Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->BLUE_LIGHT_FILTER_OPACITY_URI:Landroid/net/Uri;

    invoke-virtual {v4, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get1(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-wrap0(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "blue_light_filter_opacity"

    const/4 v5, 0x5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->setProgress(I)V

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->BLUE_LIGHT_FILTER_SCHEDULED_URI:Landroid/net/Uri;

    invoke-virtual {v4, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-wrap0(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "blue_light_filter_type"

    invoke-static {v2, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-wrap0(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "blue_light_filter_scheduled"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_6

    const/4 v1, 0x1

    :goto_2
    iget-object v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get2(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get2(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-wrap1(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)V

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    :cond_7
    iget-object v4, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->BLUE_LIGHT_FILTER_TYPE_URI:Landroid/net/Uri;

    invoke-virtual {v4, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-wrap0(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "blue_light_filter_type"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v4, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get0(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get0(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    move-result-object v5

    if-ne v0, v6, :cond_9

    move v4, v2

    :goto_3
    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->setChecked(Z)V

    :cond_8
    iget-object v4, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get4(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get4(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    move-result-object v4

    if-ne v0, v2, :cond_a

    :goto_4
    invoke-virtual {v4, v2}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_9
    move v4, v3

    goto :goto_3

    :cond_a
    move v2, v3

    goto :goto_4
.end method

.method public setListening(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-wrap0(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->BLUE_LIGHT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->BLUE_LIGHT_FILTER_OPACITY_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->BLUE_LIGHT_FILTER_SCHEDULED_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->BLUE_LIGHT_FILTER_TYPE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method
