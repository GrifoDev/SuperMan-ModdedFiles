.class Lcom/android/settings/notification/SecVolumeSeekBarPreference$2;
.super Ljava/lang/Object;
.source "SecVolumeSeekBarPreference.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/SecVolumeSeekBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$2;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3

    const-string/jumbo v0, "VolumeSeekBarPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAudioFocusChange - focusChange : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$2;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get6(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)Landroid/preference/SeekBarVolumizer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$2;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get6(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)Landroid/preference/SeekBarVolumizer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$2;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get7(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$2;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get7(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->stopSample()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
