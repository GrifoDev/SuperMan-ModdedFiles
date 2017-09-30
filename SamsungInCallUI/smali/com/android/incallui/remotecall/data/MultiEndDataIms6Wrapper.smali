.class public Lcom/android/incallui/remotecall/data/MultiEndDataIms6Wrapper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;


# instance fields
.field mDialog:Lcom/sec/ims/Dialog;


# direct methods
.method public constructor <init>(Lcom/sec/ims/Dialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/incallui/remotecall/data/MultiEndDataIms6Wrapper;->mDialog:Lcom/sec/ims/Dialog;

    return-void
.end method


# virtual methods
.method public getCallId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/remotecall/data/MultiEndDataIms6Wrapper;->mDialog:Lcom/sec/ims/Dialog;

    invoke-virtual {v0}, Lcom/sec/ims/Dialog;->getSipCallId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallState()I
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/remotecall/data/MultiEndDataIms6Wrapper;->mDialog:Lcom/sec/ims/Dialog;

    invoke-virtual {v0}, Lcom/sec/ims/Dialog;->getCallState()I

    move-result v0

    return v0
.end method

.method public getCallType()I
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/remotecall/data/MultiEndDataIms6Wrapper;->mDialog:Lcom/sec/ims/Dialog;

    invoke-virtual {v0}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/remotecall/data/MultiEndDataIms6Wrapper;->mDialog:Lcom/sec/ims/Dialog;

    invoke-virtual {v0}, Lcom/sec/ims/Dialog;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDialogID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/remotecall/data/MultiEndDataIms6Wrapper;->mDialog:Lcom/sec/ims/Dialog;

    invoke-virtual {v0}, Lcom/sec/ims/Dialog;->getDialogId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteDispName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/remotecall/data/MultiEndDataIms6Wrapper;->mDialog:Lcom/sec/ims/Dialog;

    invoke-virtual {v0}, Lcom/sec/ims/Dialog;->getRemoteDispName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/remotecall/data/MultiEndDataIms6Wrapper;->mDialog:Lcom/sec/ims/Dialog;

    invoke-virtual {v0}, Lcom/sec/ims/Dialog;->getRemoteNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/remotecall/data/MultiEndDataIms6Wrapper;->mDialog:Lcom/sec/ims/Dialog;

    invoke-virtual {v0}, Lcom/sec/ims/Dialog;->getRemoteUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/remotecall/data/MultiEndDataIms6Wrapper;->mDialog:Lcom/sec/ims/Dialog;

    invoke-virtual {v0}, Lcom/sec/ims/Dialog;->getState()I

    move-result v0

    return v0
.end method

.method public isPullAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/remotecall/data/MultiEndDataIms6Wrapper;->mDialog:Lcom/sec/ims/Dialog;

    invoke-virtual {v0}, Lcom/sec/ims/Dialog;->isPullAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasAllLiveCall()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
