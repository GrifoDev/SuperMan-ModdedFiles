.class Lcom/samsung/android/settings/notification/SoundModeSettings$7;
.super Ljava/lang/Object;
.source "SoundModeSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/SoundModeSettings;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SoundModeSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$7;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$7;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get2(Lcom/samsung/android/settings/notification/SoundModeSettings;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v4

    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$7;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-wrap0(Lcom/samsung/android/settings/notification/SoundModeSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "mode_ringer_time_on"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-ne v1, v0, :cond_2

    return v3

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$7;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-wrap0(Lcom/samsung/android/settings/notification/SoundModeSettings;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "mode_ringer_time_on"

    if-eqz v1, :cond_5

    move v2, v3

    :goto_1
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get0()Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRemainingMuteIntervalMs()I

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get0()Landroid/media/AudioManager;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get0()Landroid/media/AudioManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioManager;->getMuteInterval()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->setMuteInterval(I)V

    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$7;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-wrap2(Lcom/samsung/android/settings/notification/SoundModeSettings;)V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$7;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get1(Lcom/samsung/android/settings/notification/SoundModeSettings;)Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$7;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0496

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz v1, :cond_4

    move v4, v3

    :cond_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v5, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return v3

    :cond_5
    move v2, v4

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get0()Landroid/media/AudioManager;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get0()Landroid/media/AudioManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRemainingMuteIntervalMs()I

    move-result v5

    const v6, 0xea60

    div-int/2addr v5, v6

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->setMuteInterval(I)V

    goto :goto_2
.end method
