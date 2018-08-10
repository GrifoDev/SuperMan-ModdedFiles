.class Lcom/android/settings/tts/TtsEnginePreferenceFragment$1;
.super Ljava/lang/Object;
.source "TtsEnginePreferenceFragment.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/tts/TtsEnginePreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tts/TtsEnginePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/TtsEnginePreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment$1;->this$0:Lcom/android/settings/tts/TtsEnginePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment$1;->this$0:Lcom/android/settings/tts/TtsEnginePreferenceFragment;

    invoke-virtual {v0, p1}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->onUpdateEngine(I)V

    return-void
.end method
