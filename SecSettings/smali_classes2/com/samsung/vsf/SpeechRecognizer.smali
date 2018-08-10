.class public Lcom/samsung/vsf/SpeechRecognizer;
.super Ljava/lang/Object;
.source "SpeechRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/vsf/SpeechRecognizer$Config;,
        Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;
    }
.end annotation


# instance fields
.field private mConfig:Lcom/samsung/vsf/SpeechRecognizer$Config;

.field private mConnMgr:Lcom/samsung/vsf/SDKConnectionManager;

.field private mContext:Landroid/content/Context;

.field private mResponseHandler:Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/samsung/vsf/SpeechRecognizer$Config;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/samsung/vsf/SpeechRecognizer;->mConnMgr:Lcom/samsung/vsf/SDKConnectionManager;

    const-string/jumbo v0, "IASR_SpeechRecognizer"

    const-string/jumbo v1, "SamsungSpeechRecognizer : SpeechRecognizer()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/vsf/SpeechRecognizer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/vsf/SpeechRecognizer;->mConfig:Lcom/samsung/vsf/SpeechRecognizer$Config;

    new-instance v0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;

    invoke-direct {v0, p0, v2}, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;-><init>(Lcom/samsung/vsf/SpeechRecognizer;Lcom/samsung/vsf/SpeechRecognizer$1;)V

    iput-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer;->mResponseHandler:Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;

    new-instance v0, Lcom/samsung/vsf/SDKConnectionManager;

    invoke-direct {v0, p1, p2}, Lcom/samsung/vsf/SDKConnectionManager;-><init>(Landroid/content/Context;Lcom/samsung/vsf/SpeechRecognizer$Config;)V

    iput-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer;->mConnMgr:Lcom/samsung/vsf/SDKConnectionManager;

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer;->mConnMgr:Lcom/samsung/vsf/SDKConnectionManager;

    iget-object v1, p0, Lcom/samsung/vsf/SpeechRecognizer;->mResponseHandler:Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/vsf/SDKConnectionManager;->registerResponseListener(Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/vsf/SpeechRecognizer;)Lcom/samsung/vsf/SDKConnectionManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer;->mConnMgr:Lcom/samsung/vsf/SDKConnectionManager;

    return-object v0
.end method

.method public static createSpeechRecognizer(Landroid/content/Context;Lcom/samsung/vsf/SpeechRecognizer$Config;)Lcom/samsung/vsf/SpeechRecognizer;
    .locals 2

    const-string/jumbo v0, "IASR_SpeechRecognizer"

    const-string/jumbo v1, "SamsungSpeechRecognizer : createSpeechRecognizer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/vsf/SpeechRecognizer;

    invoke-direct {v0, p0, p1}, Lcom/samsung/vsf/SpeechRecognizer;-><init>(Landroid/content/Context;Lcom/samsung/vsf/SpeechRecognizer$Config;)V

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer;->mConnMgr:Lcom/samsung/vsf/SDKConnectionManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer;->mConnMgr:Lcom/samsung/vsf/SDKConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/vsf/SDKConnectionManager;->unregisterResponseListener()V

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer;->mConnMgr:Lcom/samsung/vsf/SDKConnectionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/vsf/SDKConnectionManager;->destroy(Z)V

    goto :goto_0
.end method

.method public setListener(Lcom/samsung/vsf/RecognitionListener;)V
    .locals 2

    const-string/jumbo v0, "IASR_SpeechRecognizer"

    const-string/jumbo v1, "SamsungSpeechRecognizer : setListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer;->mResponseHandler:Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer;->mResponseHandler:Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;

    invoke-static {v0, p1}, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->access$102(Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;Lcom/samsung/vsf/RecognitionListener;)Lcom/samsung/vsf/RecognitionListener;

    goto :goto_0
.end method

.method public startListening()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer;->mConnMgr:Lcom/samsung/vsf/SDKConnectionManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer;->mConnMgr:Lcom/samsung/vsf/SDKConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/vsf/SDKConnectionManager;->startListening()V

    goto :goto_0
.end method

.method public stopListening()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer;->mConnMgr:Lcom/samsung/vsf/SDKConnectionManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer;->mConnMgr:Lcom/samsung/vsf/SDKConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/vsf/SDKConnectionManager;->stopListening()V

    goto :goto_0
.end method
