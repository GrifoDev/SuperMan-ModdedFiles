.class public final Lcom/android/incallui/TelecomAdapter;
.super Ljava/lang/Object;
.source "TelecomAdapter.java"

# interfaces
.implements Lcom/android/incallui/InCallServiceListener;


# static fields
.field private static final ADD_CALL_MODE_KEY:Ljava/lang/String; = "add_call_mode"

.field private static sInstance:Lcom/android/incallui/TelecomAdapter;


# instance fields
.field private mInCallService:Landroid/telecom/InCallService;

.field private mSecInCallAdapter:Lcom/android/server/telecom/ISecInCallInterface;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public static getInstance()Lcom/android/incallui/TelecomAdapter;
    .locals 4

    .prologue
    .line 58
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 59
    sget-object v1, Lcom/android/incallui/TelecomAdapter;->sInstance:Lcom/android/incallui/TelecomAdapter;

    if-nez v1, :cond_0

    .line 60
    new-instance v1, Lcom/android/incallui/TelecomAdapter;

    invoke-direct {v1}, Lcom/android/incallui/TelecomAdapter;-><init>()V

    sput-object v1, Lcom/android/incallui/TelecomAdapter;->sInstance:Lcom/android/incallui/TelecomAdapter;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .local v0, "e":Ljava/lang/IllegalStateException;
    :cond_0
    :goto_1
    sget-object v1, Lcom/android/incallui/TelecomAdapter;->sInstance:Lcom/android/incallui/TelecomAdapter;

    return-object v1

    .line 58
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    const-string v1, "TelecomAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalStateException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getTelecomCallById(Ljava/lang/String;)Landroid/telecom/Call;
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v0

    .line 83
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v1

    goto :goto_0
.end method

.method private serialize(Ljava/lang/Object;)[B
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 303
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 304
    .local v1, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 305
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method addCall()V
    .locals 6

    .prologue
    .line 215
    iget-object v3, p0, Lcom/android/incallui/TelecomAdapter;->mInCallService:Landroid/telecom/InCallService;

    if-eqz v3, :cond_0

    .line 216
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 222
    const-string v3, "add_call_mode"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 224
    :try_start_0
    const-string v3, "Sending the add Call intent"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 226
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_1

    .line 227
    invoke-virtual {v0, v2}, Lcom/android/incallui/InCallActivity;->startActivity(Landroid/content/Intent;)V

    .line 241
    .end local v0    # "activity":Lcom/android/incallui/InCallActivity;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 229
    .restart local v0    # "activity":Lcom/android/incallui/InCallActivity;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v3, p0, Lcom/android/incallui/TelecomAdapter;->mInCallService:Landroid/telecom/InCallService;

    invoke-virtual {v3, v2}, Landroid/telecom/InCallService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 231
    .end local v0    # "activity":Lcom/android/incallui/InCallActivity;
    :catch_0
    move-exception v1

    .line 235
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "Activity for adding calls isn\'t found."

    invoke-static {p0, v3, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 236
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 237
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090094

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public answerCall(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 87
    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->getCallType(Lcom/android/incallui/Call;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    .line 90
    :cond_0
    return-void
.end method

.method public answerCall(Ljava/lang/String;I)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoState"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecomCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 94
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_0

    .line 95
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/SystemServiceUtils;->boostCPU(Landroid/content/Context;)V

    .line 96
    invoke-virtual {v0, p2}, Landroid/telecom/Call;->answer(I)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error answerCall, call not in call list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public canAddCall()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 285
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->canAddCallForVoLTE()Z

    move-result v1

    if-nez v1, :cond_1

    .line 289
    :cond_0
    :goto_0
    return v0

    .line 286
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mInCallService:Landroid/telecom/InCallService;

    if-eqz v1, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mInCallService:Landroid/telecom/InCallService;

    invoke-virtual {v0}, Landroid/telecom/InCallService;->canAddCall()Z

    move-result v0

    goto :goto_0
.end method

.method public checkConfState()Z
    .locals 5

    .prologue
    .line 404
    iget-object v3, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/server/telecom/ISecInCallInterface;

    if-eqz v3, :cond_0

    .line 406
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 407
    .local v0, "args":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/server/telecom/ISecInCallInterface;

    const-string v4, "checkConfState"

    invoke-interface {v3, v4, v0}, Lcom/android/server/telecom/ISecInCallInterface;->invoke(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 408
    .local v2, "retValue":Landroid/os/Bundle;
    const-string v3, "retValue"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 413
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "retValue":Landroid/os/Bundle;
    :goto_0
    return v3

    .line 409
    :catch_0
    move-exception v1

    .line 410
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkConfState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public clearInCallService()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mInCallService:Landroid/telecom/InCallService;

    .line 79
    return-void
.end method

.method public clearSecInCallAdapter()V
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/server/telecom/ISecInCallInterface;

    .line 299
    return-void
.end method

.method public deserialize([B)Ljava/lang/Object;
    .locals 3
    .param p1, "raw"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 309
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 310
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 311
    .local v2, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 312
    .local v1, "obj":Ljava/lang/Object;
    return-object v1
.end method

.method public disconnectCall(Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecomCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 117
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {v0}, Landroid/telecom/Call;->disconnect()V

    .line 123
    :goto_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v1

    .line 124
    .local v1, "disconnectCall":Lcom/android/incallui/Call;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDisconnectedByUser for call : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    if-eqz v1, :cond_0

    .line 126
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/incallui/Call;->setDisconnectedByUser(Z)V

    .line 128
    :cond_0
    return-void

    .line 120
    .end local v1    # "disconnectCall":Lcom/android/incallui/Call;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error disconnectCall, call not in call list "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public explicitCallTransfer(Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 444
    iget-object v2, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/server/telecom/ISecInCallInterface;

    if-eqz v2, :cond_0

    .line 446
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 447
    .local v0, "args":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/server/telecom/ISecInCallInterface;

    const-string v3, "explicitCallTransfer"

    invoke-interface {v2, v3, v0}, Lcom/android/server/telecom/ISecInCallInterface;->invoke(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 448
    :catch_0
    move-exception v1

    .line 449
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "explicitCallTransfer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public explicitCallTransfer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 455
    iget-object v2, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/server/telecom/ISecInCallInterface;

    if-eqz v2, :cond_0

    .line 457
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 458
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "number"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iget-object v2, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/server/telecom/ISecInCallInterface;

    const-string v3, "explicitCallBlindTransfer"

    invoke-interface {v2, v3, v0}, Lcom/android/server/telecom/ISecInCallInterface;->invoke(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 460
    :catch_0
    move-exception v1

    .line 461
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "explicitCallBlindTransfer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getNameFromFDN(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 481
    iget-object v3, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/server/telecom/ISecInCallInterface;

    if-eqz v3, :cond_0

    .line 483
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 484
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "phoneNumber"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget-object v3, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/server/telecom/ISecInCallInterface;

    const-string v4, "getNameFromFDN"

    invoke-interface {v3, v4, v0}, Lcom/android/server/telecom/ISecInCallInterface;->invoke(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 486
    .local v2, "retValue":Landroid/os/Bundle;
    const-string v3, "retValue"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 491
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "retValue":Landroid/os/Bundle;
    .end local p1    # "phoneNumber":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 487
    .restart local p1    # "phoneNumber":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 488
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNameFromFDN : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getNameFromSDN(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 495
    iget-object v3, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/server/telecom/ISecInCallInterface;

    if-eqz v3, :cond_0

    .line 497
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 498
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "phoneNumber"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object v3, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/server/telecom/ISecInCallInterface;

    const-string v4, "getNameFromSDN"

    invoke-interface {v3, v4, v0}, Lcom/android/server/telecom/ISecInCallInterface;->invoke(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 500
    .local v2, "retValue":Landroid/os/Bundle;
    const-string v3, "retValue"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 505
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "retValue":Landroid/os/Bundle;
    .end local p1    # "phoneNumber":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 501
    .restart local p1    # "phoneNumber":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 502
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNameFromSDN : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getParticipantsCount()I
    .locals 5

    .prologue
    .line 546
    iget-object v3, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/server/telecom/ISecInCallInterface;

    if-eqz v3, :cond_0

    .line 548
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 549
    .local v0, "args":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/server/telecom/ISecInCallInterface;

    const-string v4, "getParticipantsCount"

    invoke-interface {v3, v4, v0}, Lcom/android/server/telecom/ISecInCallInterface;->invoke(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 550
    .local v2, "retValue":Landroid/os/Bundle;
    const-string v3, "retValue"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 555
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "retValue":Landroid/os/Bundle;
    :goto_0
    return v3

    .line 551
    :catch_0
    move-exception v1

    .line 552
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getParticipantsCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 555
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public holdCall(Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecomCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 132
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_2

    .line 133
    invoke-virtual {v0}, Landroid/telecom/Call;->hold()V

    .line 134
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 135
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.incallui"

    const-string v3, "HOLD"

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_0
    const-string v1, "UI"

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->isEcholocateEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/util/NameNumberUtils;->getEcholocatePhoneNumber()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->HOLD_PRESSED:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    .line 140
    invoke-virtual {v3}, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->ordinal()I

    move-result v3

    .line 139
    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/TelecomAdapter;->senduiCallState(Ljava/lang/String;I)V

    .line 145
    :cond_1
    :goto_0
    return-void

    .line 143
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error holdCall, call not in call list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isRoamingArea()Z
    .locals 1

    .prologue
    .line 430
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isRoamingArea()Z

    move-result v0

    return v0
.end method

.method public merge(Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecomCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 187
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_2

    .line 188
    invoke-virtual {v0}, Landroid/telecom/Call;->getConferenceableCalls()Ljava/util/List;

    move-result-object v1

    .line 189
    .local v1, "conferenceable":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 190
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Call;

    invoke-virtual {v0, v2}, Landroid/telecom/Call;->conference(Landroid/telecom/Call;)V

    .line 199
    .end local v1    # "conferenceable":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    :cond_0
    :goto_0
    return-void

    .line 192
    .restart local v1    # "conferenceable":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    :cond_1
    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/telecom/Call$Details;->can(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    invoke-virtual {v0}, Landroid/telecom/Call;->mergeConference()V

    goto :goto_0

    .line 197
    .end local v1    # "conferenceable":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error merge, call not in call list "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public mute(Z)V
    .locals 1
    .param p1, "shouldMute"    # Z

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mInCallService:Landroid/telecom/InCallService;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mInCallService:Landroid/telecom/InCallService;

    invoke-virtual {v0, p1}, Landroid/telecom/InCallService;->setMuted(Z)V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    const-string v0, "error mute, mInCallService is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyInCallUIWindowFocus(Z)V
    .locals 4
    .param p1, "hasFocus"    # Z

    .prologue
    .line 522
    iget-object v2, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/server/telecom/ISecInCallInterface;

    if-eqz v2, :cond_0

    .line 524
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 525
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "hasFocus"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 526
    iget-object v2, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/server/telecom/ISecInCallInterface;

    const-string v3, "notifyInCallUIWindowFocus"

    invoke-interface {v2, v3, v0}, Lcom/android/server/telecom/ISecInCallInterface;->invoke(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 527
    :catch_0
    move-exception v1

    .line 528
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyInCallUIWindowFocus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onNewIncomingRcsSession(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 509
    return-void
.end method

.method phoneAccountSelected(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p3, "setDefault"    # Z

    .prologue
    .line 271
    if-nez p2, :cond_0

    .line 272
    const-string v1, "error phoneAccountSelected, accountHandle is null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecomCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 277
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_1

    .line 278
    invoke-virtual {v0, p2, p3}, Landroid/telecom/Call;->phoneAccountSelected(Landroid/telecom/PhoneAccountHandle;Z)V

    .line 282
    :goto_0
    return-void

    .line 280
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error phoneAccountSelected, call not in call list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method playDtmfTone(Ljava/lang/String;C)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "digit"    # C

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecomCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 245
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0, p2}, Landroid/telecom/Call;->playDtmfTone(C)V

    .line 250
    :goto_0
    return-void

    .line 248
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error playDtmfTone, call not in call list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public postDialContinue(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "proceed"    # Z

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecomCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 263
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {v0, p2}, Landroid/telecom/Call;->postDialContinue(Z)V

    .line 268
    :goto_0
    return-void

    .line 266
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error postDialContinue, call not in call list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public rejectCall(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "rejectWithMessage"    # Z
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecomCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 104
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_1

    .line 105
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rejectCall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/incallui/InCallPresenter;->updateRejectCallNotification(Z)V

    .line 109
    :cond_0
    invoke-virtual {v0, p2, p3}, Landroid/telecom/Call;->reject(ZLjava/lang/String;)V

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error rejectCall, call not in call list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestJanskyTransfer(Lcom/android/incallui/Call;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "msisdn"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 467
    iget-object v2, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/server/telecom/ISecInCallInterface;

    if-eqz v2, :cond_0

    .line 469
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 470
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "callId"

    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->getConnectionCallId(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const-string v2, "msisdn"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const-string v2, "deviceId"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iget-object v2, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/server/telecom/ISecInCallInterface;

    const-string v3, "requestJanskyTransfer"

    invoke-interface {v2, v3, v0}, Lcom/android/server/telecom/ISecInCallInterface;->invoke(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 474
    :catch_0
    move-exception v1

    .line 475
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestJanskyTransfer : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestModifyCall(Lcom/android/incallui/Call;I)Z
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "callType"    # I

    .prologue
    .line 316
    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/server/telecom/ISecInCallInterface;

    if-eqz v1, :cond_0

    .line 318
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 319
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "callId"

    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->getConnectionCallId(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v1, "callType"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 321
    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/server/telecom/ISecInCallInterface;

    const-string v2, "requestModifyCall"

    invoke-interface {v1, v2, v0}, Lcom/android/server/telecom/ISecInCallInterface;->invoke(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    const/4 v1, 0x1

    .line 328
    .end local v0    # "args":Landroid/os/Bundle;
    :goto_0
    return v1

    .line 326
    :cond_0
    const-string v1, "SecInCallAdapter is Null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 323
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public requestOfSecVideoProvider(Lcom/android/incallui/Call;Ljava/lang/String;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "command"    # Ljava/lang/String;

    .prologue
    .line 619
    iget-object v2, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/server/telecom/ISecInCallInterface;

    if-eqz v2, :cond_0

    .line 621
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 622
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "callId"

    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->getConnectionCallId(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const-string v2, "command"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    iget-object v2, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/server/telecom/ISecInCallInterface;

    const-string v3, "requestOfSecVideoProvider"

    invoke-interface {v2, v3, v0}, Lcom/android/server/telecom/ISecInCallInterface;->invoke(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 625
    :catch_0
    move-exception v1

    .line 626
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestOfSecVideoProvider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestRcsObserver(II)V
    .locals 1
    .param p1, "rcsObserver"    # I
    .param p2, "registerUnregister"    # I

    .prologue
    .line 512
    const-string v0, "requestRcsObserver called::"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 519
    return-void
.end method

.method public requestTPhoneStart(I)V
    .locals 4
    .param p1, "screenMode"    # I

    .prologue
    .line 347
    iget-object v2, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/server/telecom/ISecInCallInterface;

    if-eqz v2, :cond_0

    .line 349
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 350
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "screenMode"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 351
    iget-object v2, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/server/telecom/ISecInCallInterface;

    const-string v3, "requestTPhoneStart"

    invoke-interface {v2, v3, v0}, Lcom/android/server/telecom/ISecInCallInterface;->invoke(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 352
    :catch_0
    move-exception v1

    .line 353
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestTPhoneStart : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public respondModifyCall(Lcom/android/incallui/Call;ZLjava/lang/String;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "isAccept"    # Z
    .param p3, "extra"    # Ljava/lang/String;

    .prologue
    .line 332
    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/server/telecom/ISecInCallInterface;

    if-eqz v1, :cond_0

    .line 334
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 335
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "callId"

    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->getConnectionCallId(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v1, "isAccept"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 337
    const-string v1, "extra"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/server/telecom/ISecInCallInterface;

    const-string v2, "respondModifyCall"

    invoke-interface {v1, v2, v0}, Lcom/android/server/telecom/ISecInCallInterface;->invoke(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    .end local v0    # "args":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 342
    :cond_0
    const-string v1, "SecInCallAdapter is Null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 339
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public senduiCallState(Ljava/lang/String;I)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    .line 594
    iget-object v2, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/server/telecom/ISecInCallInterface;

    if-eqz v2, :cond_0

    .line 596
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 597
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "number"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const-string v2, "state"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 599
    iget-object v2, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/server/telecom/ISecInCallInterface;

    const-string v3, "senduiCallState"

    invoke-interface {v2, v3, v0}, Lcom/android/server/telecom/ISecInCallInterface;->invoke(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 600
    :catch_0
    move-exception v1

    .line 601
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "senduiCallState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method separateCall(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecomCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 178
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Landroid/telecom/Call;->splitFromConference()V

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error separateCall, call not in call list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAudioRoute(I)V
    .locals 1
    .param p1, "route"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mInCallService:Landroid/telecom/InCallService;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mInCallService:Landroid/telecom/InCallService;

    invoke-virtual {v0, p1}, Landroid/telecom/InCallService;->setAudioRoute(I)V

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    const-string v0, "error setAudioRoute, mInCallService is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCallProtectionValue(Z)V
    .locals 3
    .param p1, "block"    # Z

    .prologue
    .line 370
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCallProtectionValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.ACTION_CALL_PROTECTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 373
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "block"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 374
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 376
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public setDisconnectVolteGroupCall(Ljava/lang/String;)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 607
    iget-object v2, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/server/telecom/ISecInCallInterface;

    if-eqz v2, :cond_0

    .line 609
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 610
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "number"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    iget-object v2, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/server/telecom/ISecInCallInterface;

    const-string v3, "setDisconnectVolteGroupCall"

    invoke-interface {v2, v3, v0}, Lcom/android/server/telecom/ISecInCallInterface;->invoke(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 612
    :catch_0
    move-exception v1

    .line 613
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDisconnectVolteGroupCall: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setInCallService(Landroid/telecom/InCallService;)V
    .locals 0
    .param p1, "inCallService"    # Landroid/telecom/InCallService;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/incallui/TelecomAdapter;->mInCallService:Landroid/telecom/InCallService;

    .line 74
    return-void
.end method

.method public setReportSpamNumber(Ljava/lang/String;)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 559
    iget-object v2, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/server/telecom/ISecInCallInterface;

    if-eqz v2, :cond_0

    .line 561
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 562
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "number"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    iget-object v2, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/server/telecom/ISecInCallInterface;

    const-string v3, "setReportSpamNumber"

    invoke-interface {v2, v3, v0}, Lcom/android/server/telecom/ISecInCallInterface;->invoke(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 564
    :catch_0
    move-exception v1

    .line 565
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setReportSpamNumber: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSecInCallAdapter(Lcom/android/server/telecom/ISecInCallInterface;)V
    .locals 0
    .param p1, "secInCallAdapter"    # Lcom/android/server/telecom/ISecInCallInterface;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/server/telecom/ISecInCallInterface;

    .line 295
    return-void
.end method

.method public setSmartCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "SmartCallName"    # Ljava/lang/String;
    .param p2, "SmartCallTypeCode"    # Ljava/lang/String;
    .param p3, "SmartCallCategoryCode"    # Ljava/lang/String;
    .param p4, "SmartCallImageUrl"    # Ljava/lang/String;
    .param p5, "SmartCallAttributionName"    # Ljava/lang/String;
    .param p6, "SmartCallAttributionImageUrl"    # Ljava/lang/String;
    .param p7, "SmartCallAttributionUrl"    # Ljava/lang/String;
    .param p8, "SmartCallCategoryString"    # Ljava/lang/String;

    .prologue
    .line 572
    const-string v2, "setSmartCallInfo"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 573
    iget-object v2, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/server/telecom/ISecInCallInterface;

    if-eqz v2, :cond_0

    .line 575
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 576
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "SmartCallName"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const-string v2, "SmartCallTypeCode"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    const-string v2, "SmartCallCategoryCode"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    const-string v2, "SmartCallImageUrl"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const-string v2, "SmartCallAttributionName"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const-string v2, "SmartCallAttributionImageUrl"

    invoke-virtual {v0, v2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const-string v2, "SmartCallAttributionUrl"

    invoke-virtual {v0, v2, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const-string v2, "SmartCallCategoryString"

    invoke-virtual {v0, v2, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    iget-object v2, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/server/telecom/ISecInCallInterface;

    const-string v3, "setSmartCallInfo"

    invoke-interface {v2, v3, v0}, Lcom/android/server/telecom/ISecInCallInterface;->invoke(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    .end local v0    # "args":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 585
    :catch_0
    move-exception v1

    .line 586
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSmartCallInfo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 589
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v2, "mSecInCallAdapter is null"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setYellowPageName(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 534
    iget-object v2, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/server/telecom/ISecInCallInterface;

    if-eqz v2, :cond_0

    .line 536
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 537
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "name"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    iget-object v2, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/server/telecom/ISecInCallInterface;

    const-string v3, "setYellowPageName"

    invoke-interface {v2, v3, v0}, Lcom/android/server/telecom/ISecInCallInterface;->invoke(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 539
    :catch_0
    move-exception v1

    .line 540
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getYellowPageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public shouldVibrate()Z
    .locals 5

    .prologue
    .line 417
    iget-object v3, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/server/telecom/ISecInCallInterface;

    if-eqz v3, :cond_0

    .line 419
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 420
    .local v0, "args":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/server/telecom/ISecInCallInterface;

    const-string v4, "shouldVibrate"

    invoke-interface {v3, v4, v0}, Lcom/android/server/telecom/ISecInCallInterface;->invoke(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 421
    .local v2, "retValue":Landroid/os/Bundle;
    const-string v3, "retValue"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 426
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "retValue":Landroid/os/Bundle;
    :goto_0
    return v3

    .line 422
    :catch_0
    move-exception v1

    .line 423
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldVibrate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 426
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public silentRinger()V
    .locals 4

    .prologue
    .line 359
    iget-object v2, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/server/telecom/ISecInCallInterface;

    if-eqz v2, :cond_0

    .line 361
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 362
    .local v0, "args":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/server/telecom/ISecInCallInterface;

    const-string v3, "silentRinger"

    invoke-interface {v2, v3, v0}, Lcom/android/server/telecom/ISecInCallInterface;->invoke(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 363
    :catch_0
    move-exception v1

    .line 364
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "silentRinger : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method stopDtmfTone(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 253
    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecomCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 254
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0}, Landroid/telecom/Call;->stopDtmfTone()V

    .line 259
    :goto_0
    return-void

    .line 257
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error stopDtmfTone, call not in call list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public storeSpeakerState(Z)V
    .locals 4
    .param p1, "wasSpeakerOn"    # Z

    .prologue
    .line 379
    iget-object v2, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/server/telecom/ISecInCallInterface;

    if-eqz v2, :cond_0

    .line 381
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 382
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "wasSpeakerOn"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 383
    iget-object v2, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/server/telecom/ISecInCallInterface;

    const-string v3, "storeSpeakerState"

    invoke-interface {v2, v3, v0}, Lcom/android/server/telecom/ISecInCallInterface;->invoke(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 384
    :catch_0
    move-exception v1

    .line 385
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storeSpeakerState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method swap(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 202
    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecomCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 203
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_1

    .line 204
    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/telecom/Call$Details;->can(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    invoke-virtual {p0, p1}, Lcom/android/incallui/TelecomAdapter;->holdCall(Ljava/lang/String;)V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error swap, call not in call list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unholdCall(Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecomCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 149
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {v0}, Landroid/telecom/Call;->unhold()V

    .line 151
    const-string v1, "UI"

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->isEcholocateEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/util/NameNumberUtils;->getEcholocatePhoneNumber()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->UNHOLD_PRESSED:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    .line 153
    invoke-virtual {v3}, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->ordinal()I

    move-result v3

    .line 152
    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/TelecomAdapter;->senduiCallState(Ljava/lang/String;I)V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error unholdCall, call not in call list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public wasVTSpeakerOn()Z
    .locals 5

    .prologue
    .line 391
    iget-object v3, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/server/telecom/ISecInCallInterface;

    if-eqz v3, :cond_0

    .line 393
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 394
    .local v0, "args":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/incallui/TelecomAdapter;->mSecInCallAdapter:Lcom/android/server/telecom/ISecInCallInterface;

    const-string v4, "wasVTSpeakerOn"

    invoke-interface {v3, v4, v0}, Lcom/android/server/telecom/ISecInCallInterface;->invoke(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 395
    .local v2, "retValue":Landroid/os/Bundle;
    const-string v3, "retValue"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 400
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "retValue":Landroid/os/Bundle;
    :goto_0
    return v3

    .line 396
    :catch_0
    move-exception v1

    .line 397
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wasVTSpeakerOn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method
