.class Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SoundEffectSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/SoundEffectSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MusicIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/notification/SoundEffectSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/notification/SoundEffectSettings;Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;-><init>(Lcom/samsung/android/settings/notification/SoundEffectSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string/jumbo v8, "android.bluetooth.profile.extra.STATE"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v8, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v8, 0x2

    if-ne v5, v8, :cond_3

    const/4 v8, 0x1

    if-eq v4, v8, :cond_0

    if-nez v4, :cond_3

    :cond_0
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    const/4 v9, 0x2

    invoke-static {v8, v9}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-set0(Lcom/samsung/android/settings/notification/SoundEffectSettings;I)I

    :cond_1
    :goto_0
    const-string/jumbo v8, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string/jumbo v8, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v9, -0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string/jumbo v8, "SoundEffectSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "action : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " In Stream Devices changed. Stream: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    const-string/jumbo v8, "android.media.EXTRA_VOLUME_STREAM_DEVICES"

    const/4 v9, -0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v8, "android.media.EXTRA_PREV_VOLUME_STREAM_DEVICES"

    const/4 v9, -0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v8, "SoundEffectSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "New device : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", old : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x2

    if-ne v1, v8, :cond_15

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-set0(Lcom/samsung/android/settings/notification/SoundEffectSettings;I)I

    :cond_2
    :goto_1
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-wrap1(Lcom/samsung/android/settings/notification/SoundEffectSettings;)V

    invoke-static {}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-get0()[Lcom/android/settings/notification/SettingPref;

    move-result-object v9

    const/4 v8, 0x0

    array-length v10, v9

    :goto_2
    if-ge v8, v10, :cond_18

    aget-object v3, v9, v8

    iget-object v11, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-get4(Lcom/samsung/android/settings/notification/SoundEffectSettings;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/android/settings/notification/SettingPref;->update(Landroid/content/Context;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    if-eqz v5, :cond_4

    const/4 v8, 0x3

    if-ne v5, v8, :cond_1

    :cond_4
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->isAudioPathEarjack()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-set0(Lcom/samsung/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_0

    :cond_5
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->isAudioPathWFD()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-set0(Lcom/samsung/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_0

    :cond_6
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-set0(Lcom/samsung/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v8, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    const-string/jumbo v8, "android.bluetooth.profile.extra.STATE"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v8, "SoundEffectSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "BT Play state changed, new state : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, 0xa

    if-ne v5, v8, :cond_a

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-get5(Lcom/samsung/android/settings/notification/SoundEffectSettings;)I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_a

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-get3(Lcom/samsung/android/settings/notification/SoundEffectSettings;)Landroid/media/AudioManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/AudioManager;->isMusicActiveRemotely()Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-get5(Lcom/samsung/android/settings/notification/SoundEffectSettings;)I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_9

    :cond_8
    const-string/jumbo v8, "SoundEffectSettings"

    const-string/jumbo v9, "Music is routed to WFD, unless STREAM_DEVICES_CHANGED is received as BT for Music"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    const/4 v9, 0x2

    invoke-static {v8, v9}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-set0(Lcom/samsung/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_0

    :cond_a
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->isAudioPathBTHeadphone()Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-get5(Lcom/samsung/android/settings/notification/SoundEffectSettings;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->isAudioPathEarjack()Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-set0(Lcom/samsung/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_0

    :cond_b
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->isAudioPathWFD()Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-set0(Lcom/samsung/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_0

    :cond_c
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-set0(Lcom/samsung/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v8, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->isAudioPathEarjack()Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-set0(Lcom/samsung/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_0

    :cond_e
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->isAudioPathBTHeadphone()Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    const/4 v9, 0x2

    invoke-static {v8, v9}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-set0(Lcom/samsung/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_0

    :cond_f
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->isAudioPathWFD()Z

    move-result v8

    if-eqz v8, :cond_10

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-set0(Lcom/samsung/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_0

    :cond_10
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-set0(Lcom/samsung/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v8, "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string/jumbo v8, "state"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string/jumbo v8, "SoundEffectSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ACTION_WIFIDISPLAY_STATE_CHANGED state = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    if-ne v6, v8, :cond_12

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-set0(Lcom/samsung/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_0

    :cond_12
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->isAudioPathEarjack()Z

    move-result v8

    if-eqz v8, :cond_13

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-set0(Lcom/samsung/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_0

    :cond_13
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->isAudioPathBTHeadphone()Z

    move-result v8

    if-eqz v8, :cond_14

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    const/4 v9, 0x2

    invoke-static {v8, v9}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-set0(Lcom/samsung/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_0

    :cond_14
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-set0(Lcom/samsung/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_0

    :cond_15
    const/4 v8, 0x4

    if-ne v1, v8, :cond_16

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-set0(Lcom/samsung/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_1

    :cond_16
    const/16 v8, 0x80

    if-ne v1, v8, :cond_17

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    const/4 v9, 0x2

    invoke-static {v8, v9}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-set0(Lcom/samsung/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_1

    :cond_17
    const v8, 0x8000

    if-ne v1, v8, :cond_2

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/samsung/android/settings/notification/SoundEffectSettings;

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->-set0(Lcom/samsung/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_1

    :cond_18
    return-void
.end method
