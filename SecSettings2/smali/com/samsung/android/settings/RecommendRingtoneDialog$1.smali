.class Lcom/samsung/android/settings/RecommendRingtoneDialog$1;
.super Ljava/lang/Object;
.source "RecommendRingtoneDialog.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/RecommendRingtoneDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/RecommendRingtoneDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/RecommendRingtoneDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/RecommendRingtoneDialog$1;->this$0:Lcom/samsung/android/settings/RecommendRingtoneDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v0, "RecommendRingtoneDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown audio focus change code,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v0, "RecommendRingtoneDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AudioFocus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/RecommendRingtoneDialog$1;->this$0:Lcom/samsung/android/settings/RecommendRingtoneDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/RecommendRingtoneDialog;->-get7(Lcom/samsung/android/settings/RecommendRingtoneDialog;)Landroid/media/Ringtone;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/RecommendRingtoneDialog$1;->this$0:Lcom/samsung/android/settings/RecommendRingtoneDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/RecommendRingtoneDialog;->-get7(Lcom/samsung/android/settings/RecommendRingtoneDialog;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/RecommendRingtoneDialog$1;->this$0:Lcom/samsung/android/settings/RecommendRingtoneDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/RecommendRingtoneDialog;->-get1(Lcom/samsung/android/settings/RecommendRingtoneDialog;)Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/RecommendRingtoneDialog$1;->this$0:Lcom/samsung/android/settings/RecommendRingtoneDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/RecommendRingtoneDialog;->-get1(Lcom/samsung/android/settings/RecommendRingtoneDialog;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/RecommendRingtoneDialog$1;->this$0:Lcom/samsung/android/settings/RecommendRingtoneDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/RecommendRingtoneDialog;->-get0(Lcom/samsung/android/settings/RecommendRingtoneDialog;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
