.class Lcom/samsung/android/settings/notification/SoundSettings$20;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/SoundSettings;->initSoundMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SoundSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SoundSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SoundSettings$20;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const v6, 0x7f100110

    const/4 v5, 0x1

    const-string/jumbo v2, "SoundSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPreferenceChange: newValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Lcom/samsung/android/settings/notification/SoundSettings;->-get1()Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v2

    if-ne v1, v2, :cond_0

    return v5

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/notification/SoundSettings;->-get1()Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    const/4 v0, 0x0

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings$20;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundSettings;->-get2(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "SDMD"

    invoke-static {v2, v3, v4, v0}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :pswitch_0
    const-string/jumbo v0, "Mute"

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings$20;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundSettings;->-get2(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SoundSettings$20;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/notification/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "Vibrate"

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings$20;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundSettings;->-get2(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SoundSettings$20;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/notification/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "Sound"

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings$20;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundSettings;->-get2(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SoundSettings$20;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/notification/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
