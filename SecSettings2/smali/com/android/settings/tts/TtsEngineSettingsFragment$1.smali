.class Lcom/android/settings/tts/TtsEngineSettingsFragment$1;
.super Ljava/lang/Object;
.source "TtsEngineSettingsFragment.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/tts/TtsEngineSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tts/TtsEngineSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/TtsEngineSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment$1;->this$0:Lcom/android/settings/tts/TtsEngineSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment$1;->this$0:Lcom/android/settings/tts/TtsEngineSettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->finishFragment()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment$1;->this$0:Lcom/android/settings/tts/TtsEngineSettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/tts/TtsEngineSettingsFragment$1$1;

    invoke-direct {v1, p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment$1$1;-><init>(Lcom/android/settings/tts/TtsEngineSettingsFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
