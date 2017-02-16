.class public Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;
.super Ljava/lang/Object;
.source "InCallUIHelper.java"

# interfaces
.implements Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/whitepages/nameid/InCallUIHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NameIDFindInfoCallback"
.end annotation


# instance fields
.field private _callerInfo:Lcom/android/incallui/CallerInfo;

.field private _cookie:Ljava/lang/Object;

.field private _ctx:Landroid/content/Context;

.field private _isIncoming:Z

.field private _listener:Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

.field private _token:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "isIncoming"    # Z
    .param p3, "listener"    # Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "Initialized : NameIDFindInfoCallback"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;->_ctx:Landroid/content/Context;

    .line 38
    iput-object p3, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;->_listener:Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 39
    iput-boolean p2, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;->_isIncoming:Z

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;)Lcom/android/incallui/CallerInfo;
    .locals 1
    .param p0, "x0"    # Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;->_callerInfo:Lcom/android/incallui/CallerInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;Lcom/android/incallui/CallerInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;
    .param p1, "x1"    # Lcom/android/incallui/CallerInfo;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;->clearContactInfo(Lcom/android/incallui/CallerInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;->_ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;)Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;
    .locals 1
    .param p0, "x0"    # Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;->_listener:Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;Lcom/android/incallui/CallerInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;
    .param p1, "x1"    # Lcom/android/incallui/CallerInfo;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;->handleQueryComplete(Lcom/android/incallui/CallerInfo;)V

    return-void
.end method

.method private clearContactInfo(Lcom/android/incallui/CallerInfo;)V
    .locals 2
    .param p1, "callerInfo"    # Lcom/android/incallui/CallerInfo;

    .prologue
    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/incallui/CallerInfo;->contactExists:Z

    .line 128
    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/android/incallui/CallerInfo;->contactIdOrZero:J

    .line 129
    return-void
.end method

.method private handleQueryComplete(Lcom/android/incallui/CallerInfo;)V
    .locals 3
    .param p1, "callerInfo"    # Lcom/android/incallui/CallerInfo;

    .prologue
    .line 133
    const-string v0, "handleQueryComplete called"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;->_listener:Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

    iget v1, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;->_token:I

    iget-object v2, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;->_cookie:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, p1}, Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;->onQueryComplete(ILjava/lang/Object;Lcom/android/incallui/CallerInfo;)V

    .line 135
    return-void
.end method

.method public static receiverForSending(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
    .locals 3
    .param p0, "actualReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    const/4 v2, 0x0

    .line 118
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 119
    .local v0, "parcel":Landroid/os/Parcel;
    invoke-virtual {p0, v0, v2}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 120
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 121
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    .line 122
    .local v1, "receiverForSending":Landroid/os/ResultReceiver;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 123
    return-object v1
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Lcom/android/incallui/CallerInfo;)V
    .locals 12
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "callerInfo"    # Lcom/android/incallui/CallerInfo;

    .prologue
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallerInfo.cnapName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Lcom/android/incallui/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iput p1, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;->_token:I

    .line 47
    iput-object p2, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;->_cookie:Ljava/lang/Object;

    .line 48
    iput-object p3, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;->_callerInfo:Lcom/android/incallui/CallerInfo;

    .line 64
    invoke-virtual {p3}, Lcom/android/incallui/CallerInfo;->isEmergencyNumber()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p3}, Lcom/android/incallui/CallerInfo;->isVoiceMailNumber()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/whitepages/nameid/NameIDHelper;->isBound()Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    :cond_0
    invoke-direct {p0, p3}, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;->handleQueryComplete(Lcom/android/incallui/CallerInfo;)V

    .line 113
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-boolean v1, p3, Lcom/android/incallui/CallerInfo;->contactExists:Z

    if-eqz v1, :cond_2

    iget-wide v2, p3, Lcom/android/incallui/CallerInfo;->contactIdOrZero:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 70
    invoke-direct {p0, p3}, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;->handleQueryComplete(Lcom/android/incallui/CallerInfo;)V

    goto :goto_0

    :cond_2
    move-object v0, p2

    .line 75
    check-cast v0, Lcom/android/incallui/Call;

    .line 77
    .local v0, "call":Lcom/android/incallui/Call;
    new-instance v11, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v11, p0, v1, v0}, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback$1;-><init>(Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;Landroid/os/Handler;Lcom/android/incallui/Call;)V

    .line 106
    .local v11, "rr":Landroid/os/ResultReceiver;
    iget-object v1, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;->_ctx:Landroid/content/Context;

    iget-object v2, p3, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getCnapName()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p3, Lcom/android/incallui/CallerInfo;->contactIdOrZero:J

    iget-boolean v6, p3, Lcom/android/incallui/CallerInfo;->contactExists:Z

    iget-boolean v7, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;->_isIncoming:Z

    invoke-static {v11}, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;->receiverForSending(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v8

    invoke-static/range {v1 .. v8}, Lcom/whitepages/nameid/NameIDHelper;->createLookupIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZZLandroid/os/ResultReceiver;)Landroid/content/Intent;

    move-result-object v10

    .line 108
    .local v10, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v1, p0, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;->_ctx:Landroid/content/Context;

    invoke-virtual {v1, v10}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v9

    .line 110
    .local v9, "ex":Ljava/lang/SecurityException;
    const-string v1, "Could not launch lookup service"

    invoke-static {p0, v1, v9}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 111
    invoke-direct {p0, p3}, Lcom/whitepages/nameid/InCallUIHelper$NameIDFindInfoCallback;->handleQueryComplete(Lcom/android/incallui/CallerInfo;)V

    goto :goto_0
.end method
