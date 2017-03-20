.class public Lcom/android/incallui/remotecall/remotecall/RemoteCall;
.super Ljava/lang/Object;
.source "RemoteCall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/remotecall/remotecall/RemoteCall$State;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RemoteCall"


# instance fields
.field private mCallId:Ljava/lang/String;

.field private mCallState:I

.field private mContactExist:Z

.field private mDialogID:Ljava/lang/String;

.field private mIsPullAvailable:Z

.field private mName:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field private mNumberLabel:Ljava/lang/String;

.field private mNumberType:I

.field private mPersonId:J

.field private mPhoneLabel:Ljava/lang/String;

.field private mPhoto:Landroid/graphics/drawable/Drawable;

.field private mPhotoUri:Landroid/net/Uri;

.field private mRemoteCallAdapter:Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;

.field private mRemoteDispName:Ljava/lang/String;

.field private mRingtoneUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;)V
    .locals 3
    .param p1, "remoteCallAdapter"    # Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mName:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mNumber:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mRemoteDispName:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mPhotoUri:Landroid/net/Uri;

    .line 47
    iput-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mPhoto:Landroid/graphics/drawable/Drawable;

    .line 48
    iput-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mRingtoneUri:Landroid/net/Uri;

    .line 55
    iput-boolean v1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mContactExist:Z

    .line 56
    iput-boolean v1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mIsPullAvailable:Z

    .line 58
    iput v1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mCallState:I

    .line 62
    if-nez p1, :cond_0

    .line 63
    const-string v0, "RemoteCall"

    const-string v1, "multiDeviceInfo is null"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 80
    :goto_0
    return-void

    .line 67
    :cond_0
    iput-object p1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mRemoteCallAdapter:Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;

    .line 68
    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mRemoteCallAdapter:Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;

    invoke-interface {v0}, Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;->getDialogID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mDialogID:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mRemoteCallAdapter:Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;

    invoke-interface {v0}, Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;->getCallId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mCallId:Ljava/lang/String;

    .line 70
    invoke-static {}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->getInstance()Lcom/android/incallui/remotecall/RemoteCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->isSelfTestStart()Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mRemoteCallAdapter:Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;

    invoke-interface {v0}, Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;->getRemoteNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mNumber:Ljava/lang/String;

    .line 75
    :goto_1
    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mRemoteCallAdapter:Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;

    invoke-interface {v0}, Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;->getRemoteDispName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mRemoteDispName:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mRemoteCallAdapter:Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;

    invoke-interface {v0}, Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;->getCallState()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mCallState:I

    .line 77
    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mRemoteCallAdapter:Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;

    invoke-interface {v0}, Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;->isPullAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mIsPullAvailable:Z

    .line 78
    const-string v0, "RemoteCall"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteCall created : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->onCallAdded(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V

    goto :goto_0

    .line 73
    :cond_1
    invoke-static {}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->getInstance()Lcom/android/incallui/remotecall/RemoteCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->getSelfTestNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mNumber:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public checkUpdate(Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;)V
    .locals 3
    .param p1, "remoteCallAdapter"    # Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;

    .prologue
    .line 87
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mDialogID:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;->getDialogID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    const-string v1, "RemoteCall"

    const-string v2, "checkUpdate()..."

    invoke-static {v1, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "needUpdate":Z
    iget v1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mCallState:I

    invoke-interface {p1}, Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;->getCallState()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 94
    const-string v1, "RemoteCall"

    const-string v2, "checkUpdate -- state is changed"

    invoke-static {v1, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-interface {p1}, Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;->getCallState()I

    move-result v1

    iput v1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mCallState:I

    .line 96
    const/4 v0, 0x1

    .line 99
    :cond_2
    iget-boolean v1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mIsPullAvailable:Z

    invoke-interface {p1}, Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;->isPullAvailable()Z

    move-result v2

    if-eq v1, v2, :cond_3

    .line 100
    const-string v1, "RemoteCall"

    const-string v2, "checkUpdate -- isPullAvailable is changed"

    invoke-static {v1, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-interface {p1}, Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;->isPullAvailable()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mIsPullAvailable:Z

    .line 102
    const/4 v0, 0x1

    .line 105
    :cond_3
    invoke-interface {p1}, Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;->getRemoteURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;->getRemoteURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 106
    const-string v1, "RemoteCall"

    const-string v2, "checkUpdate -- getRemoteURI is changed"

    invoke-static {v1, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const/4 v0, 0x1

    .line 110
    :cond_4
    if-eqz v0, :cond_5

    .line 111
    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->onCallUpdated(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V

    .line 113
    :cond_5
    iput-object p1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mRemoteCallAdapter:Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;

    goto :goto_0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mCallId:Ljava/lang/String;

    return-object v0
.end method

.method public getDialogID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mDialogID:Ljava/lang/String;

    return-object v0
.end method

.method public getMultiDeviceInfo()Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mRemoteCallAdapter:Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mNumberLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberType()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mNumberType:I

    return v0
.end method

.method public getPersonId()J
    .locals 2

    .prologue
    .line 195
    iget-wide v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mPersonId:J

    return-wide v0
.end method

.method public getPhoneLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mPhoneLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoto()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mPhoto:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPhotoUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mPhotoUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getRingtoneUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mRingtoneUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mCallState:I

    return v0
.end method

.method public isConferenceCall()Z
    .locals 3

    .prologue
    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "isConference":Z
    iget-object v1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mRemoteDispName:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "CONFERENCE"

    iget-object v2, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mRemoteDispName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    const/4 v0, 0x1

    .line 167
    :cond_0
    return v0
.end method

.method public isContactExist()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mContactExist:Z

    return v0
.end method

.method public isLive()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 83
    iget v1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mCallState:I

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mCallState:I

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPullAvailable()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mIsPullAvailable:Z

    return v0
.end method

.method public setCallId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCallId"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mCallId:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setContactExist(Z)V
    .locals 0
    .param p1, "mContactExist"    # Z

    .prologue
    .line 203
    iput-boolean p1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mContactExist:Z

    .line 204
    return-void
.end method

.method public setDialogID(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDialogID"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mDialogID:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setIsPullAvailable(Z)V
    .locals 0
    .param p1, "isPullAvailable"    # Z

    .prologue
    .line 251
    iput-boolean p1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mIsPullAvailable:Z

    .line 252
    return-void
.end method

.method public setMultiDeviceInfo(Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;)V
    .locals 0
    .param p1, "mMultiDeviceInfo"    # Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mRemoteCallAdapter:Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;

    .line 220
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mName"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mName:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "mNumber"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mNumber:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setNumberLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "numberLabel"    # Ljava/lang/String;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mNumberLabel:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public setNumberType(I)V
    .locals 0
    .param p1, "numberType"    # I

    .prologue
    .line 235
    iput p1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mNumberType:I

    .line 236
    return-void
.end method

.method public setPersonId(J)V
    .locals 1
    .param p1, "personId"    # J

    .prologue
    .line 191
    iput-wide p1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mPersonId:J

    .line 192
    return-void
.end method

.method public setPhoneLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneLabel"    # Ljava/lang/String;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mPhoneLabel:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public setPhoto(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "mPhoto"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mPhoto:Landroid/graphics/drawable/Drawable;

    .line 180
    return-void
.end method

.method public setPhotoUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "mPhotoUri"    # Landroid/net/Uri;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mPhotoUri:Landroid/net/Uri;

    .line 172
    return-void
.end method

.method public setRingtoneUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "mRingtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mRingtoneUri:Landroid/net/Uri;

    .line 188
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "mState"    # I

    .prologue
    .line 211
    iput p1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mCallState:I

    .line 212
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DialogID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mDialogID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", State = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mCallState:I

    .line 119
    invoke-static {v1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall$State;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", CallId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRemoteDispName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mRemoteDispName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", IsPullAvailable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mIsPullAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
