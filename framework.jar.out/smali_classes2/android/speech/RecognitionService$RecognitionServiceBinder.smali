.class final Landroid/speech/RecognitionService$RecognitionServiceBinder;
.super Landroid/speech/IRecognitionService$Stub;
.source "RecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/RecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RecognitionServiceBinder"
.end annotation


# instance fields
.field private final mServiceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/speech/RecognitionService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/speech/RecognitionService;)V
    .locals 1

    invoke-direct {p0}, Landroid/speech/IRecognitionService$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/speech/RecognitionService$RecognitionServiceBinder;->mServiceRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public cancel(Landroid/speech/IRecognitionListener;)V
    .locals 4

    iget-object v1, p0, Landroid/speech/RecognitionService$RecognitionServiceBinder;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/RecognitionService;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Landroid/speech/RecognitionService;->-wrap0(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/speech/RecognitionService;->-get0(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0}, Landroid/speech/RecognitionService;->-get0(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public clearReference()V
    .locals 1

    iget-object v0, p0, Landroid/speech/RecognitionService$RecognitionServiceBinder;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method public startListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;)V
    .locals 5

    iget-object v1, p0, Landroid/speech/RecognitionService$RecognitionServiceBinder;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/RecognitionService;

    if-eqz v0, :cond_0

    invoke-static {v0, p2}, Landroid/speech/RecognitionService;->-wrap0(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/speech/RecognitionService;->-get0(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0}, Landroid/speech/RecognitionService;->-get0(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Landroid/speech/RecognitionService$StartListeningArgs;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {v3, v0, p1, p2, v4}, Landroid/speech/RecognitionService$StartListeningArgs;-><init>(Landroid/speech/RecognitionService;Landroid/content/Intent;Landroid/speech/IRecognitionListener;I)V

    const/4 v4, 0x1

    invoke-static {v2, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public stopListening(Landroid/speech/IRecognitionListener;)V
    .locals 4

    iget-object v1, p0, Landroid/speech/RecognitionService$RecognitionServiceBinder;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/RecognitionService;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Landroid/speech/RecognitionService;->-wrap0(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/speech/RecognitionService;->-get0(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0}, Landroid/speech/RecognitionService;->-get0(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
