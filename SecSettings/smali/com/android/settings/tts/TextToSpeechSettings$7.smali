.class Lcom/android/settings/tts/TextToSpeechSettings$7;
.super Ljava/lang/Object;
.source "TextToSpeechSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/tts/TextToSpeechSettings;->onInitEngine(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tts/TextToSpeechSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/TextToSpeechSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings$7;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings$7;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v0}, Lcom/android/settings/tts/TextToSpeechSettings;->-get7(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/support/v7/preference/SecListDialogPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecListDialogPreference;->setEnabled(Z)V

    return-void
.end method
