.class Lcom/android/settings/applications/DefaultAssistPreference$Info;
.super Ljava/lang/Object;
.source "DefaultAssistPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/DefaultAssistPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Info"
.end annotation


# instance fields
.field public final component:Landroid/content/ComponentName;

.field public final voiceInteractionServiceInfo:Landroid/service/voice/VoiceInteractionServiceInfo;


# direct methods
.method constructor <init>(Landroid/content/ComponentName;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/DefaultAssistPreference$Info;->component:Landroid/content/ComponentName;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/DefaultAssistPreference$Info;->voiceInteractionServiceInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    return-void
.end method

.method constructor <init>(Landroid/content/ComponentName;Landroid/service/voice/VoiceInteractionServiceInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/DefaultAssistPreference$Info;->component:Landroid/content/ComponentName;

    iput-object p2, p0, Lcom/android/settings/applications/DefaultAssistPreference$Info;->voiceInteractionServiceInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    return-void
.end method


# virtual methods
.method public isVoiceInteractionService()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/DefaultAssistPreference$Info;->voiceInteractionServiceInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
