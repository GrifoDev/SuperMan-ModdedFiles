.class Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$LocalService;
.super Landroid/service/voice/VoiceInteractionManagerInternal;
.source "VoiceInteractionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$LocalService;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-direct {p0}, Landroid/service/voice/VoiceInteractionManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$LocalService;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->-get0(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method

.method public stopLocalVoiceInteraction(Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$LocalService;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->-get0(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->stopLocalVoiceInteraction(Landroid/os/IBinder;)V

    return-void
.end method

.method public supportsLocalVoiceInteraction()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$LocalService;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->-get0(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->supportsLocalVoiceInteraction()Z

    move-result v0

    return v0
.end method
