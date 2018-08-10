.class final Landroid/preference/SeekBarVolumizer$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "SeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field private mListening:Z

.field final synthetic this$0:Landroid/preference/SeekBarVolumizer;


# direct methods
.method private constructor <init>(Landroid/preference/SeekBarVolumizer;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/preference/SeekBarVolumizer;Landroid/preference/SeekBarVolumizer$Receiver;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/preference/SeekBarVolumizer$Receiver;-><init>(Landroid/preference/SeekBarVolumizer;)V

    return-void
.end method

.method private updateVolumeSlider(II)V
    .locals 4

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-get9(Landroid/preference/SeekBarVolumizer;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v2, p1}, Landroid/preference/SeekBarVolumizer;->-wrap3(Landroid/preference/SeekBarVolumizer;I)Z

    move-result v1

    :goto_0
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-get11(Landroid/preference/SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-get2(Landroid/preference/SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v3}, Landroid/preference/SeekBarVolumizer;->-get12(Landroid/preference/SeekBarVolumizer;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v2

    if-nez v2, :cond_3

    if-nez p2, :cond_4

    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-get13(Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer$H;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v3}, Landroid/preference/SeekBarVolumizer;->-get6(Landroid/preference/SeekBarVolumizer;)I

    move-result v3

    invoke-virtual {v2, p2, v3, v0}, Landroid/preference/SeekBarVolumizer$H;->postUpdateSlider(IIZ)V

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-get12(Landroid/preference/SeekBarVolumizer;)I

    move-result v2

    if-ne p1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v4, -0x1

    const/4 v7, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    const-string/jumbo v3, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v3}, Landroid/preference/SeekBarVolumizer;->-get12(Landroid/preference/SeekBarVolumizer;)I

    move-result v3

    if-ne v3, v2, :cond_0

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v3}, Landroid/preference/SeekBarVolumizer;->-wrap5(Landroid/preference/SeekBarVolumizer;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v3, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v4}, Landroid/preference/SeekBarVolumizer;->-get2(Landroid/preference/SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v4

    invoke-static {v3, v4}, Landroid/preference/SeekBarVolumizer;->-set6(Landroid/preference/SeekBarVolumizer;I)I

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v3}, Landroid/preference/SeekBarVolumizer;->-get12(Landroid/preference/SeekBarVolumizer;)I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v3}, Landroid/preference/SeekBarVolumizer;->-wrap5(Landroid/preference/SeekBarVolumizer;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v3}, Landroid/preference/SeekBarVolumizer;->-get12(Landroid/preference/SeekBarVolumizer;)I

    move-result v3

    if-ne v3, v2, :cond_0

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v3}, Landroid/preference/SeekBarVolumizer;->-get1(Landroid/preference/SeekBarVolumizer;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v3}, Landroid/preference/SeekBarVolumizer;->-wrap5(Landroid/preference/SeekBarVolumizer;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "com.samsung.intent.action.DEFAULT_CS_SIM_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v3}, Landroid/preference/SeekBarVolumizer;->-get12(Landroid/preference/SeekBarVolumizer;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v4}, Landroid/preference/SeekBarVolumizer;->-wrap2(Landroid/preference/SeekBarVolumizer;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/preference/SeekBarVolumizer;->-set0(Landroid/preference/SeekBarVolumizer;Landroid/net/Uri;)Landroid/net/Uri;

    :cond_4
    :goto_1
    :try_start_0
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v3}, Landroid/preference/SeekBarVolumizer;->-get10(Landroid/preference/SeekBarVolumizer;)Landroid/media/Ringtone;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v3}, Landroid/preference/SeekBarVolumizer;->-get10(Landroid/preference/SeekBarVolumizer;)Landroid/media/Ringtone;

    move-result-object v3

    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v4}, Landroid/preference/SeekBarVolumizer;->-get5(Landroid/preference/SeekBarVolumizer;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;)Z

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v3}, Landroid/preference/SeekBarVolumizer;->-get10(Landroid/preference/SeekBarVolumizer;)Landroid/media/Ringtone;

    move-result-object v3

    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v5}, Landroid/preference/SeekBarVolumizer;->-get12(Landroid/preference/SeekBarVolumizer;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "SeekBarVolumizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception happens in SIM_CHANGED_ACTION : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v3}, Landroid/preference/SeekBarVolumizer;->-get12(Landroid/preference/SeekBarVolumizer;)I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v4}, Landroid/preference/SeekBarVolumizer;->-wrap1(Landroid/preference/SeekBarVolumizer;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/preference/SeekBarVolumizer;->-set0(Landroid/preference/SeekBarVolumizer;Landroid/net/Uri;)Landroid/net/Uri;

    goto :goto_1

    :cond_6
    const-string/jumbo v3, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v3}, Landroid/preference/SeekBarVolumizer;->isSamplePlaying()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v3}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    :cond_7
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v4}, Landroid/preference/SeekBarVolumizer;->-get8(Landroid/preference/SeekBarVolumizer;)Landroid/app/NotificationManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v4

    invoke-static {v3, v4}, Landroid/preference/SeekBarVolumizer;->-set9(Landroid/preference/SeekBarVolumizer;I)I

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v3}, Landroid/preference/SeekBarVolumizer;->-get12(Landroid/preference/SeekBarVolumizer;)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_8

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v3}, Landroid/preference/SeekBarVolumizer;->-get12(Landroid/preference/SeekBarVolumizer;)I

    move-result v3

    invoke-static {}, Landroid/preference/SeekBarVolumizer;->-get0()I

    move-result v4

    if-ne v3, v4, :cond_9

    :cond_8
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v5}, Landroid/preference/SeekBarVolumizer;->-get4(Landroid/preference/SeekBarVolumizer;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x106025c

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/preference/SeekBarVolumizer;->-wrap0(Landroid/preference/SeekBarVolumizer;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/preference/SeekBarVolumizer;->-set5(Landroid/preference/SeekBarVolumizer;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v5}, Landroid/preference/SeekBarVolumizer;->-get4(Landroid/preference/SeekBarVolumizer;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x106025f

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/preference/SeekBarVolumizer;->-wrap0(Landroid/preference/SeekBarVolumizer;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/preference/SeekBarVolumizer;->-set4(Landroid/preference/SeekBarVolumizer;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v5}, Landroid/preference/SeekBarVolumizer;->-get4(Landroid/preference/SeekBarVolumizer;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1060292

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/preference/SeekBarVolumizer;->-wrap0(Landroid/preference/SeekBarVolumizer;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/preference/SeekBarVolumizer;->-set8(Landroid/preference/SeekBarVolumizer;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v5}, Landroid/preference/SeekBarVolumizer;->-get4(Landroid/preference/SeekBarVolumizer;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1060291

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/preference/SeekBarVolumizer;->-wrap0(Landroid/preference/SeekBarVolumizer;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/preference/SeekBarVolumizer;->-set7(Landroid/preference/SeekBarVolumizer;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    :cond_9
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v3}, Landroid/preference/SeekBarVolumizer;->-wrap5(Landroid/preference/SeekBarVolumizer;)V

    goto/16 :goto_0
.end method

.method public setListening(Z)V
    .locals 2

    iget-boolean v1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->mListening:Z

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->mListening:Z

    if-eqz p1, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.intent.action.DEFAULT_CS_SIM_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->-get4(Landroid/preference/SeekBarVolumizer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->-get4(Landroid/preference/SeekBarVolumizer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
