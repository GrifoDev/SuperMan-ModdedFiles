.class public Landroid/app/VoiceInteractor$AbortVoiceRequest;
.super Landroid/app/VoiceInteractor$Request;
.source "VoiceInteractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/VoiceInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AbortVoiceRequest"
.end annotation


# instance fields
.field final mExtras:Landroid/os/Bundle;

.field final mPrompt:Landroid/app/VoiceInteractor$Prompt;


# direct methods
.method public constructor <init>(Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "prompt"    # Landroid/app/VoiceInteractor$Prompt;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 673
    invoke-direct {p0}, Landroid/app/VoiceInteractor$Request;-><init>()V

    .line 674
    iput-object p1, p0, Landroid/app/VoiceInteractor$AbortVoiceRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    .line 675
    iput-object p2, p0, Landroid/app/VoiceInteractor$AbortVoiceRequest;->mExtras:Landroid/os/Bundle;

    .line 673
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 685
    invoke-direct {p0}, Landroid/app/VoiceInteractor$Request;-><init>()V

    .line 686
    if-eqz p1, :cond_0

    new-instance v0, Landroid/app/VoiceInteractor$Prompt;

    invoke-direct {v0, p1}, Landroid/app/VoiceInteractor$Prompt;-><init>(Ljava/lang/CharSequence;)V

    :cond_0
    iput-object v0, p0, Landroid/app/VoiceInteractor$AbortVoiceRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    .line 687
    iput-object p2, p0, Landroid/app/VoiceInteractor$AbortVoiceRequest;->mExtras:Landroid/os/Bundle;

    .line 685
    return-void
.end method


# virtual methods
.method dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 694
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/VoiceInteractor$Request;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 695
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPrompt="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/VoiceInteractor$AbortVoiceRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 696
    iget-object v0, p0, Landroid/app/VoiceInteractor$AbortVoiceRequest;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 697
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mExtras="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/VoiceInteractor$AbortVoiceRequest;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 693
    :cond_0
    return-void
.end method

.method getRequestTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 702
    const-string/jumbo v0, "AbortVoice"

    return-object v0
.end method

.method public onAbortResult(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    .line 690
    return-void
.end method

.method submit(Lcom/android/internal/app/IVoiceInteractor;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;)Lcom/android/internal/app/IVoiceInteractorRequest;
    .locals 2
    .param p1, "interactor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/app/IVoiceInteractorCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 707
    iget-object v0, p0, Landroid/app/VoiceInteractor$AbortVoiceRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    iget-object v1, p0, Landroid/app/VoiceInteractor$AbortVoiceRequest;->mExtras:Landroid/os/Bundle;

    invoke-interface {p1, p2, p3, v0, v1}, Lcom/android/internal/app/IVoiceInteractor;->startAbortVoice(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;

    move-result-object v0

    return-object v0
.end method
