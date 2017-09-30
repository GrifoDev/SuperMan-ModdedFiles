.class public Lcom/android/incallui/remotecall/remotecall/RemoteCall;
.super Ljava/lang/Object;


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

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mRemoteDispName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mPhotoUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mPhoto:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mRingtoneUri:Landroid/net/Uri;

    iput-boolean v1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mContactExist:Z

    iput-boolean v1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mIsPullAvailable:Z

    iput v1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mCallState:I

    if-nez p1, :cond_0

    const-string v0, "RemoteCall"

    const-string v1, "multiDeviceInfo is null"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mRemoteCallAdapter:Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;

    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mRemoteCallAdapter:Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;

    invoke-interface {v0}, Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;->getDialogID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mDialogID:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mRemoteCallAdapter:Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;

    invoke-interface {v0}, Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;->getCallId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mCallId:Ljava/lang/String;

    invoke-static {}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->getInstance()Lcom/android/incallui/remotecall/RemoteCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->isSelfTestStart()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mRemoteCallAdapter:Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;

    invoke-interface {v0}, Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;->getRemoteNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mNumber:Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mRemoteCallAdapter:Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;

    invoke-interface {v0}, Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;->getRemoteDispName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mRemoteDispName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mRemoteCallAdapter:Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;

    invoke-interface {v0}, Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;->getCallState()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mCallState:I

    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mRemoteCallAdapter:Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;

    invoke-interface {v0}, Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;->isPullAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mIsPullAvailable:Z

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

    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->onCallAdded(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V

    goto :goto_0

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
    .locals 4

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mDialogID:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;->getDialogID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "RemoteCall"

    const-string v2, "checkUpdate()..."

    invoke-static {v0, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget v2, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mCallState:I

    invoke-interface {p1}, Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;->getCallState()I

    move-result v3

    if-eq v2, v3, :cond_2

    const-string v0, "RemoteCall"

    const-string v2, "checkUpdate -- state is changed"

    invoke-static {v0, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;->getCallState()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mCallState:I

    move v0, v1

    :cond_2
    iget-boolean v2, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mIsPullAvailable:Z

    invoke-interface {p1}, Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;->isPullAvailable()Z

    move-result v3

    if-eq v2, v3, :cond_3

    const-string v0, "RemoteCall"

    const-string v2, "checkUpdate -- isPullAvailable is changed"

    invoke-static {v0, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;->isPullAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mIsPullAvailable:Z

    move v0, v1

    :cond_3
    invoke-interface {p1}, Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;->getRemoteURI()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;->getRemoteURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v0, "RemoteCall"

    const-string v2, "checkUpdate -- getRemoteURI is changed"

    invoke-static {v0, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->onCallUpdated(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V

    :cond_4
    iput-object p1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mRemoteCallAdapter:Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;

    goto :goto_0

    :cond_5
    move v1, v0

    goto :goto_1
.end method

.method public getCallId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mCallId:Ljava/lang/String;

    return-object v0
.end method

.method public getDialogID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mDialogID:Ljava/lang/String;

    return-object v0
.end method

.method public getMultiDeviceInfo()Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mRemoteCallAdapter:Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mNumberLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberType()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mNumberType:I

    return v0
.end method

.method public getPersonId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mPersonId:J

    return-wide v0
.end method

.method public getPhoneLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mPhoneLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoto()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mPhoto:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPhotoUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mPhotoUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getRingtoneUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mRingtoneUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mCallState:I

    return v0
.end method

.method public isConferenceCall()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mRemoteDispName:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "CONFERENCE"

    iget-object v2, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mRemoteDispName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isContactExist()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mContactExist:Z

    return v0
.end method

.method public isLive()Z
    .locals 3

    const/4 v0, 0x1

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

    iget-boolean v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mIsPullAvailable:Z

    return v0
.end method

.method public isRemoteVideoCall()Z
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mRemoteCallAdapter:Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;

    if-eqz v0, :cond_0

    const-string v0, "RemoteCall"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRemoteVideoCall : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mRemoteCallAdapter:Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;

    invoke-interface {v2}, Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;->getCallType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mRemoteCallAdapter:Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;

    invoke-interface {v0}, Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;->getCallType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mCallId:Ljava/lang/String;

    return-void
.end method

.method public setContactExist(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mContactExist:Z

    return-void
.end method

.method public setDialogID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mDialogID:Ljava/lang/String;

    return-void
.end method

.method public setIsPullAvailable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mIsPullAvailable:Z

    return-void
.end method

.method public setMultiDeviceInfo(Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mRemoteCallAdapter:Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mName:Ljava/lang/String;

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mNumber:Ljava/lang/String;

    return-void
.end method

.method public setNumberLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mNumberLabel:Ljava/lang/String;

    return-void
.end method

.method public setNumberType(I)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mNumberType:I

    return-void
.end method

.method public setPersonId(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mPersonId:J

    return-void
.end method

.method public setPhoneLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mPhoneLabel:Ljava/lang/String;

    return-void
.end method

.method public setPhoto(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mPhoto:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setPhotoUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mPhotoUri:Landroid/net/Uri;

    return-void
.end method

.method public setRingtoneUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mRingtoneUri:Landroid/net/Uri;

    return-void
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->mCallState:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

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
