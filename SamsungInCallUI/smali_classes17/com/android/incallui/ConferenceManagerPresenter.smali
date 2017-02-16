.class public Lcom/android/incallui/ConferenceManagerPresenter;
.super Lcom/android/incallui/Presenter;
.source "ConferenceManagerPresenter.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$InCallDetailsListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/ConferenceManagerUi;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$InCallDetailsListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;"
    }
.end annotation


# static fields
.field private static final CALL_TIME_UPDATE_INTERVAL:J = 0x3e8L

.field private static final MAX_CALLERS_IN_CONFERENCE:I = 0x5


# instance fields
.field private mCallTimer:Lcom/android/incallui/CallTimer;

.field private mCallerIds:[Ljava/lang/String;

.field private mChildCallIdsForVZW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEndedCallId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mChildCallIdsForVZW:Ljava/util/List;

    .line 62
    new-instance v0, Lcom/android/incallui/CallTimer;

    new-instance v1, Lcom/android/incallui/ConferenceManagerPresenter$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/ConferenceManagerPresenter$1;-><init>(Lcom/android/incallui/ConferenceManagerPresenter;)V

    invoke-direct {v0, v1}, Lcom/android/incallui/CallTimer;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    .line 68
    return-void
.end method

.method private updateIMSConferenceCall()V
    .locals 15

    .prologue
    .line 474
    const-string v14, "updateIMSConferenceCall()..."

    invoke-static {p0, v14}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 475
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceManagerUi;

    .line 476
    .local v0, "ui":Lcom/android/incallui/ConferenceManagerUi;
    if-nez v0, :cond_1

    .line 505
    :cond_0
    return-void

    .line 477
    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v13

    .line 478
    .local v13, "currentCall":Lcom/android/incallui/Call;
    invoke-static {v13}, Lcom/android/incallui/util/ImsCommonUtils;->getIMSConferenceCallCounts(Lcom/android/incallui/Call;)I

    move-result v11

    .line 479
    .local v11, "conferenceCallCount":I
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->getIMSConferenceMaxCallCounts()I

    move-result v12

    .line 480
    .local v12, "conferenceCallMaxCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v12, :cond_0

    .line 481
    if-ge v1, v11, :cond_2

    .line 483
    const/4 v14, 0x1

    invoke-interface {v0, v1, v14}, Lcom/android/incallui/ConferenceManagerUi;->setRowVisible(IZ)V

    .line 485
    invoke-static {v1}, Lcom/android/incallui/util/ImsCommonUtils;->getNameForIMSConference(I)Ljava/lang/String;

    move-result-object v2

    .line 486
    .local v2, "name":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/incallui/util/ImsCommonUtils;->getNumberForIMSConference(I)Ljava/lang/String;

    move-result-object v3

    .line 487
    .local v3, "number":Ljava/lang/String;
    const-string v4, "Mobile"

    .line 488
    .local v4, "numberType":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/incallui/util/ImsCommonUtils;->getLookupKeyForIMSConference(I)Ljava/lang/String;

    move-result-object v5

    .line 489
    .local v5, "lookupKey":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/incallui/util/ImsCommonUtils;->getPhotoUriForIMSConference(I)Landroid/net/Uri;

    move-result-object v6

    .line 490
    .local v6, "photoUri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 491
    .local v7, "photo":Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x0

    .line 492
    .local v8, "isPersonalPhotoAvailable":Z
    const/4 v9, 0x1

    .line 493
    .local v9, "isHDCall":Z
    invoke-static {v1}, Lcom/android/incallui/util/ImsCommonUtils;->getStateForIMSConference(I)I

    move-result v10

    .line 496
    .local v10, "state":I
    invoke-interface/range {v0 .. v10}, Lcom/android/incallui/ConferenceManagerUi;->displayCallerInfoForConferenceRow(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/graphics/drawable/Drawable;ZZI)V

    .line 499
    const/4 v14, 0x1

    invoke-interface {v0, v1, v14}, Lcom/android/incallui/ConferenceManagerUi;->setupEndButtonForRow(IZ)V

    .line 480
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "number":Ljava/lang/String;
    .end local v4    # "numberType":Ljava/lang/String;
    .end local v5    # "lookupKey":Ljava/lang/String;
    .end local v6    # "photoUri":Landroid/net/Uri;
    .end local v7    # "photo":Landroid/graphics/drawable/Drawable;
    .end local v8    # "isPersonalPhotoAvailable":Z
    .end local v9    # "isHDCall":Z
    .end local v10    # "state":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 502
    :cond_2
    const/4 v14, 0x0

    invoke-interface {v0, v1, v14}, Lcom/android/incallui/ConferenceManagerUi;->setRowVisible(IZ)V

    goto :goto_1
.end method


# virtual methods
.method public endConferenceConnection(I)V
    .locals 3
    .param p1, "rowId"    # I

    .prologue
    .line 574
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isEnhancedVoiceConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 575
    invoke-static {p1}, Lcom/android/incallui/util/ImsCommonUtils;->getNumberForIMSConference(I)Ljava/lang/String;

    move-result-object v0

    .line 576
    .local v0, "number":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endConferenceConnection number : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rowId :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 577
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/TelecomAdapter;->setDisconnectVolteGroupCall(Ljava/lang/String;)V

    .line 581
    .end local v0    # "number":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 578
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallerIds:[Ljava/lang/String;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 579
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallerIds:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMaxCallersInConference()I
    .locals 1

    .prologue
    .line 561
    const/4 v0, 0x5

    return v0
.end method

.method public init(Landroid/content/Context;Lcom/android/incallui/CallList;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 235
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    iput-object v4, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mContext:Landroid/content/Context;

    .line 237
    invoke-virtual {p2}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 238
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_2

    .line 239
    invoke-virtual {p0, v0}, Lcom/android/incallui/ConferenceManagerPresenter;->startContactInfoSearch(Lcom/android/incallui/Call;)V

    .line 241
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallerIds:[Ljava/lang/String;

    .line 242
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x5

    if-ge v3, v4, :cond_1

    .line 243
    iget-object v4, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallerIds:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 244
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p2, v4}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v2

    .line 245
    .local v2, "childCall":Lcom/android/incallui/Call;
    invoke-virtual {p0, v2}, Lcom/android/incallui/ConferenceManagerPresenter;->startContactInfoSearch(Lcom/android/incallui/Call;)V

    .line 242
    .end local v2    # "childCall":Lcom/android/incallui/Call;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 249
    :cond_1
    iget-object v4, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mChildCallIdsForVZW:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 250
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 251
    .local v1, "callerId":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mChildCallIdsForVZW:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 254
    .end local v1    # "callerId":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/incallui/ConferenceManagerPresenter;->update(Lcom/android/incallui/CallList;)V

    .line 255
    return-void
.end method

.method public manageConferenceUpdateAfterAnim()V
    .locals 5

    .prologue
    .line 584
    const-string v3, "manageConferenceUpdateAfterAnim"

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 585
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    .line 586
    .local v1, "callList":Lcom/android/incallui/CallList;
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 587
    .local v0, "call":Lcom/android/incallui/Call;
    iget-object v3, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mChildCallIdsForVZW:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 589
    if-eqz v0, :cond_0

    .line 590
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 591
    .local v2, "callerId":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mChildCallIdsForVZW:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 594
    .end local v2    # "callerId":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/incallui/ConferenceManagerPresenter;->update(Lcom/android/incallui/CallList;)V

    .line 595
    return-void
.end method

.method public onDetailsChanged(Lcom/android/incallui/Call;Landroid/telecom/Call$Details;)V
    .locals 5
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "details"    # Landroid/telecom/Call$Details;

    .prologue
    const/16 v4, 0x2000

    const/16 v3, 0x1000

    .line 207
    const-string v2, "onDetailsChanged"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2, v4}, Landroid/telecom/Call$Details;->can(I)Z

    move-result v0

    .line 210
    .local v0, "canDisconnect":Z
    invoke-virtual {p2, v3}, Landroid/telecom/Call$Details;->can(I)Z

    move-result v1

    .line 213
    .local v1, "canSeparate":Z
    invoke-virtual {p1, v4}, Lcom/android/incallui/Call;->can(I)Z

    move-result v2

    if-ne v2, v0, :cond_0

    .line 215
    invoke-virtual {p1, v3}, Lcom/android/incallui/Call;->can(I)Z

    move-result v2

    if-eq v2, v1, :cond_1

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/ConferenceManagerUi;

    invoke-interface {v2, p1}, Lcom/android/incallui/ConferenceManagerUi;->refreshCall(Lcom/android/incallui/Call;)V

    .line 220
    :cond_1
    const/16 v2, 0x80

    invoke-virtual {p2, v2}, Landroid/telecom/Call$Details;->can(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 221
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallPresenter;->showConferenceCallManager(Z)V

    .line 223
    :cond_2
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 228
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getConferenceCallManagerShowingState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    const-string v0, "onIncomingCall()... Conference ui is showing, hide it."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->showConferenceCallManager(Z)V

    .line 232
    :cond_0
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 11
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 117
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onStateChange() newState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/ConferenceManagerUi;

    .line 119
    .local v6, "ui":Lcom/android/incallui/ConferenceManagerUi;
    if-nez v6, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/UiAdapter;->getConferenceCallManagerShowingState()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 121
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v2

    .line 122
    .local v2, "disconnectingCall":Lcom/android/incallui/Call;
    if-eqz v2, :cond_4

    .line 123
    const/4 v4, -0x1

    .line 124
    .local v4, "disconnectingRowID":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "disconnectingCall : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mChildCallIdsForVZW : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mChildCallIdsForVZW:Ljava/util/List;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    const/4 v1, -0x1

    .line 127
    .local v1, "count":I
    iget-object v7, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mChildCallIdsForVZW:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 128
    .local v5, "item":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 129
    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 130
    move v4, v1

    .line 134
    .end local v5    # "item":Ljava/lang/String;
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "disconnectingRowID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "disconnectingCallId":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 138
    const/4 v7, -0x1

    if-eq v4, v7, :cond_4

    iget-object v7, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mEndedCallId:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 139
    iput-object v3, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mEndedCallId:Ljava/lang/String;

    .line 140
    invoke-interface {v6, v4}, Lcom/android/incallui/ConferenceManagerUi;->displayConferenceDisconnectingAnimation(I)V

    .line 141
    const v7, 0x3ecccccd    # 0.4f

    invoke-interface {v6, v4, v7}, Lcom/android/incallui/ConferenceManagerUi;->setConferenceListAlpha(IF)V

    .line 146
    .end local v1    # "count":I
    .end local v3    # "disconnectingCallId":Ljava/lang/String;
    .end local v4    # "disconnectingRowID":I
    :cond_4
    sget-object v7, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v7, :cond_b

    .line 147
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 148
    .local v0, "call":Lcom/android/incallui/Call;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onStateChange() call:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 149
    if-eqz v0, :cond_5

    .line 150
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getChildCallIds : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mChildCallIdsForVZW.size() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mChildCallIdsForVZW:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    :cond_5
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 154
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Number of existing calls is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->needToDisplayVzwNewConfCallUI(Lcom/android/incallui/Call;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 156
    iget-object v7, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mChildCallIdsForVZW:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-gt v7, v8, :cond_6

    .line 157
    const-string v7, "update"

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0, p3}, Lcom/android/incallui/ConferenceManagerPresenter;->update(Lcom/android/incallui/CallList;)V

    .line 184
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v2    # "disconnectingCall":Lcom/android/incallui/Call;
    :cond_6
    :goto_1
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v7

    invoke-static {v7}, Lcom/android/incallui/util/InCallUtils;->needToDisplayVzwNewConfCallUI(Lcom/android/incallui/Call;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->startCallTimer()V

    goto/16 :goto_0

    .line 161
    .restart local v0    # "call":Lcom/android/incallui/Call;
    .restart local v2    # "disconnectingCall":Lcom/android/incallui/Call;
    :cond_7
    invoke-virtual {p0, p3}, Lcom/android/incallui/ConferenceManagerPresenter;->update(Lcom/android/incallui/CallList;)V

    goto :goto_1

    .line 163
    :cond_8
    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->needToDisplayVzwNewConfCallUI(Lcom/android/incallui/Call;)Z

    move-result v7

    if-nez v7, :cond_9

    if-eqz v0, :cond_9

    .line 164
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_9

    .line 165
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "vzwWasConferenceCall Number of existing calls is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7, v10}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 166
    iget-object v7, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mChildCallIdsForVZW:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-gt v7, v8, :cond_6

    .line 167
    invoke-virtual {p0, p3}, Lcom/android/incallui/ConferenceManagerPresenter;->update(Lcom/android/incallui/CallList;)V

    goto :goto_1

    .line 169
    :cond_9
    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->needToDisplayVzwNewConfCallUI(Lcom/android/incallui/Call;)Z

    move-result v7

    if-eqz v7, :cond_a

    if-eqz v0, :cond_a

    .line 170
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    const/16 v8, 0x9

    if-eq v7, v8, :cond_a

    .line 171
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    const/16 v8, 0xa

    if-eq v7, v8, :cond_a

    .line 172
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_a

    .line 174
    invoke-virtual {p0, p3}, Lcom/android/incallui/ConferenceManagerPresenter;->update(Lcom/android/incallui/CallList;)V

    goto :goto_1

    .line 176
    :cond_a
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/android/incallui/InCallPresenter;->showConferenceCallManager(Z)V

    goto/16 :goto_1

    .line 179
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_b
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/android/incallui/InCallPresenter;->showConferenceCallManager(Z)V

    goto/16 :goto_1
.end method

.method public onUiReady(Lcom/android/incallui/ConferenceManagerUi;)V
    .locals 1
    .param p1, "ui"    # Lcom/android/incallui/ConferenceManagerUi;

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    .line 103
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 104
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 105
    return-void
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0

    .prologue
    .line 43
    check-cast p1, Lcom/android/incallui/ConferenceManagerUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/ConferenceManagerPresenter;->onUiReady(Lcom/android/incallui/ConferenceManagerUi;)V

    return-void
.end method

.method public onUiResume()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public onUiUnready(Lcom/android/incallui/ConferenceManagerUi;)V
    .locals 1
    .param p1, "ui"    # Lcom/android/incallui/ConferenceManagerUi;

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    .line 111
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 112
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 113
    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0

    .prologue
    .line 43
    check-cast p1, Lcom/android/incallui/ConferenceManagerUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/ConferenceManagerPresenter;->onUiUnready(Lcom/android/incallui/ConferenceManagerUi;)V

    return-void
.end method

.method public separateConferenceConnection(I)V
    .locals 2
    .param p1, "rowId"    # I

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallerIds:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 567
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallerIds:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->separateCall(Ljava/lang/String;)V

    .line 569
    :cond_0
    return-void
.end method

.method public startCallTimer()V
    .locals 4

    .prologue
    .line 190
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    .line 191
    .local v0, "callList":Lcom/android/incallui/CallList;
    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 192
    const-string v1, "Starting the calltime timer"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/CallTimer;->start(J)Z

    .line 195
    :cond_0
    return-void
.end method

.method startContactInfoSearch(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 258
    const-string v2, "startContactInfoSearch"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    iget-object v2, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    .line 260
    .local v0, "cache":Lcom/android/incallui/ContactInfoCache;
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 261
    .local v1, "isIncoming":Z
    :goto_0
    new-instance v2, Lcom/android/incallui/ConferenceManagerPresenter$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/ConferenceManagerPresenter$2;-><init>(Lcom/android/incallui/ConferenceManagerPresenter;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/incallui/Call;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    .line 275
    return-void

    .line 260
    .end local v1    # "isIncoming":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public stopCallTimer()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    if-eqz v0, :cond_0

    .line 200
    const-string v0, "Canceling the calltime timer"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v0}, Lcom/android/incallui/CallTimer;->cancel()V

    .line 203
    :cond_0
    return-void
.end method

.method public update(Lcom/android/incallui/CallList;)V
    .locals 23
    .param p1, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 284
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v20

    .line 285
    .local v20, "currentCall":Lcom/android/incallui/Call;
    if-nez v20, :cond_1

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "update currentCall "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 289
    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 290
    invoke-static/range {v20 .. v20}, Lcom/android/incallui/util/InCallUtils;->needToDisplayVzwNewConfCallUI(Lcom/android/incallui/Call;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 291
    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v8, 0x2

    if-ge v2, v8, :cond_2

    .line 302
    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 303
    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/CallList;->getNumberOfConferencedCall()I

    move-result v8

    if-eq v2, v8, :cond_2

    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "update currentCall.getChildCallIds().size() :"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "update callList.getNumberOfConferencedCall() :"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/CallList;->getNumberOfConferencedCall()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 310
    :cond_2
    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 311
    invoke-static/range {v20 .. v20}, Lcom/android/incallui/util/InCallUtils;->needToDisplayVzwNewConfCallUI(Lcom/android/incallui/Call;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 312
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 313
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "update callList.getDisconnectedCall() :"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 317
    :cond_3
    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 318
    invoke-static/range {v20 .. v20}, Lcom/android/incallui/util/InCallUtils;->needToDisplayVzwNewConfCallUI(Lcom/android/incallui/Call;)Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v20, :cond_4

    .line 319
    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v2

    if-nez v2, :cond_4

    .line 320
    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 321
    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v8, 0x3

    if-ne v2, v8, :cond_4

    .line 322
    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/Call;->setSelfChildCallIds()V

    .line 326
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 327
    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v2

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/String;

    invoke-interface {v2, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallerIds:[Ljava/lang/String;

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Old Number of calls is "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallerIds:[Ljava/lang/String;

    array-length v8, v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    :cond_5
    new-instance v17, Ljava/util/ArrayList;

    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 332
    .local v17, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/incallui/Call;>;"
    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 333
    .local v16, "callerId":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "add call getCallById - callId :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 334
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v8

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 337
    .end local v16    # "callerId":Ljava/lang/String;
    :cond_6
    invoke-static/range {v20 .. v20}, Lcom/android/incallui/util/InCallUtils;->needToDisplayVzwNewConfCallUI(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 338
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/CallList;->getChildCallIdsForVzw()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 339
    .restart local v16    # "callerId":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallList;->getVzwConfCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v14

    .line 340
    .local v14, "call":Lcom/android/incallui/Call;
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 341
    if-eqz v14, :cond_8

    .line 342
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VZW_VOLTE_UI_CONF add call getChildCallIdsForVzw - callId :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v14}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 343
    :cond_8
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 347
    .end local v14    # "call":Lcom/android/incallui/Call;
    .end local v16    # "callerId":Ljava/lang/String;
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/CallList;->getDisconnectedChildCallIdsForVzw()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 348
    .restart local v16    # "callerId":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v14

    .line 349
    .restart local v14    # "call":Lcom/android/incallui/Call;
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 350
    if-eqz v14, :cond_b

    .line 351
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VZW_VOLTE_UI_CONF add call getDisconnectedChildCallIdsForVzw - callId :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v14}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 352
    :cond_b
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 356
    .end local v14    # "call":Lcom/android/incallui/Call;
    .end local v16    # "callerId":Ljava/lang/String;
    :cond_c
    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v8, 0x3

    if-ne v2, v8, :cond_d

    .line 357
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VZW_VOLTE_UI_CONF add call getChildCallIds - callId :"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 359
    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    :cond_d
    new-instance v2, Lcom/android/incallui/ConferenceManagerPresenter$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/incallui/ConferenceManagerPresenter$3;-><init>(Lcom/android/incallui/ConferenceManagerPresenter;)V

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VZW_VOLTE_UI_CONF calls.size() : "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 383
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Number of calls is "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 385
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isEnhancedVoiceConferenceCall()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 386
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/ConferenceManagerPresenter;->updateIMSConferenceCall()V

    goto/16 :goto_0

    .line 392
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_13

    const/16 v21, 0x1

    .line 393
    .local v21, "hasActiveCall":Z
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_14

    const/16 v22, 0x1

    .line 394
    .local v22, "hasHoldingCall":Z
    :goto_5
    if-eqz v21, :cond_10

    if-nez v22, :cond_15

    :cond_10
    const/16 v18, 0x1

    .line 396
    .local v18, "canSeparate":Z
    :goto_6
    invoke-static/range {v20 .. v20}, Lcom/android/incallui/util/InCallUtils;->needToDisplayVzwNewConfCallUI(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 397
    const-string v2, "us_volte_ui"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "singapore_volte_ui"

    .line 398
    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "support_ims_conference_split"

    .line 399
    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 400
    :cond_11
    invoke-static/range {v20 .. v20}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 401
    const/16 v18, 0x0

    .line 405
    :cond_12
    invoke-static/range {v20 .. v20}, Lcom/android/incallui/util/InCallUtils;->needToDisplayVzwNewConfCallUI(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 406
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/ConferenceManagerUi;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/incallui/ConferenceManagerPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v2, v8, v0, v1}, Lcom/android/incallui/ConferenceManagerUi;->update(Landroid/content/Context;Ljava/util/List;Z)V

    goto/16 :goto_0

    .line 392
    .end local v18    # "canSeparate":Z
    .end local v21    # "hasActiveCall":Z
    .end local v22    # "hasHoldingCall":Z
    :cond_13
    const/16 v21, 0x0

    goto :goto_4

    .line 393
    .restart local v21    # "hasActiveCall":Z
    :cond_14
    const/16 v22, 0x0

    goto :goto_5

    .line 394
    .restart local v22    # "hasHoldingCall":Z
    :cond_15
    const/16 v18, 0x0

    goto :goto_6

    .line 411
    .restart local v18    # "canSeparate":Z
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 412
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    const/4 v2, 0x5

    if-ge v3, v2, :cond_0

    .line 413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallerIds:[Ljava/lang/String;

    array-length v2, v2

    if-ge v3, v2, :cond_1f

    .line 414
    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v19

    .line 415
    .local v19, "childCall":Lcom/android/incallui/Call;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "childCall i["

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "]:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 416
    if-eqz v19, :cond_0

    .line 418
    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v2

    .line 419
    invoke-virtual {v2}, Landroid/telecom/Call$Details;->getCallCapabilities()I

    move-result v15

    .line 420
    .local v15, "callCapabilities":I
    if-eqz v18, :cond_1c

    and-int/lit16 v2, v15, 0x1000

    if-eqz v2, :cond_1c

    const/4 v5, 0x1

    .line 422
    .local v5, "thisRowCanSeparate":Z
    :goto_8
    and-int/lit16 v2, v15, 0x2000

    if-eqz v2, :cond_1d

    const/4 v6, 0x1

    .line 425
    .local v6, "thisRowCanDisconnect":Z
    :goto_9
    const-string v2, "us_volte_ui"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    const-string v2, "singapore_volte_ui"

    .line 426
    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallerIds:[Ljava/lang/String;

    aget-object v2, v2, v3

    .line 427
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 428
    const/4 v5, 0x0

    .line 431
    :cond_18
    const-string v2, "support_ims_conference_split"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallerIds:[Ljava/lang/String;

    aget-object v2, v2, v3

    .line 432
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 433
    const/4 v5, 0x0

    .line 434
    const-string v2, "do not support IMS conference split"

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 439
    :cond_19
    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallerIds:[Ljava/lang/String;

    array-length v2, v2

    const/4 v8, 0x2

    if-ge v2, v8, :cond_1a

    .line 441
    const/4 v5, 0x0

    .line 444
    :cond_1a
    const/4 v7, 0x0

    .line 445
    .local v7, "isHDicon":Z
    const-string v2, "call_details_for_hd_icon"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 446
    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/SecCall;->getHDIcon()I

    move-result v2

    if-lez v2, :cond_1b

    .line 447
    const/4 v7, 0x1

    .line 454
    :cond_1b
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/ConferenceManagerPresenter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallerIds:[Ljava/lang/String;

    aget-object v8, v8, v3

    .line 455
    invoke-virtual {v2, v8}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v4

    .local v4, "contactCache":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    move-object/from16 v2, p0

    .line 456
    invoke-virtual/range {v2 .. v7}, Lcom/android/incallui/ConferenceManagerPresenter;->updateManageConferenceRow(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;ZZZ)V

    .line 412
    .end local v4    # "contactCache":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .end local v5    # "thisRowCanSeparate":Z
    .end local v6    # "thisRowCanDisconnect":Z
    .end local v7    # "isHDicon":Z
    .end local v15    # "callCapabilities":I
    .end local v19    # "childCall":Lcom/android/incallui/Call;
    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_7

    .line 420
    .restart local v15    # "callCapabilities":I
    .restart local v19    # "childCall":Lcom/android/incallui/Call;
    :cond_1c
    const/4 v5, 0x0

    goto/16 :goto_8

    .line 422
    .restart local v5    # "thisRowCanSeparate":Z
    :cond_1d
    const/4 v6, 0x0

    goto/16 :goto_9

    .line 450
    .restart local v6    # "thisRowCanDisconnect":Z
    .restart local v7    # "isHDicon":Z
    :cond_1e
    invoke-static/range {v19 .. v19}, Lcom/android/incallui/util/InCallUtils;->isHasWBorSWB(Lcom/android/incallui/Call;)Z

    move-result v7

    goto :goto_a

    .line 464
    .end local v5    # "thisRowCanSeparate":Z
    .end local v6    # "thisRowCanDisconnect":Z
    .end local v7    # "isHDicon":Z
    .end local v15    # "callCapabilities":I
    .end local v19    # "childCall":Lcom/android/incallui/Call;
    :cond_1f
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move v9, v3

    invoke-virtual/range {v8 .. v13}, Lcom/android/incallui/ConferenceManagerPresenter;->updateManageConferenceRow(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;ZZZ)V

    goto :goto_b
.end method

.method public updateCallTime()V
    .locals 10

    .prologue
    .line 71
    iget-object v8, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallerIds:[Ljava/lang/String;

    if-nez v8, :cond_1

    .line 91
    :cond_0
    return-void

    .line 72
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v7

    check-cast v7, Lcom/android/incallui/ConferenceManagerUi;

    .line 73
    .local v7, "ui":Lcom/android/incallui/ConferenceManagerUi;
    if-eqz v7, :cond_0

    .line 74
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    .line 75
    .local v0, "callList":Lcom/android/incallui/CallList;
    const/4 v6, 0x0

    .local v6, "rowId":I
    :goto_0
    iget-object v8, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallerIds:[Ljava/lang/String;

    array-length v8, v8

    if-ge v6, v8, :cond_0

    .line 76
    iget-object v8, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallerIds:[Ljava/lang/String;

    aget-object v8, v8, v6

    invoke-virtual {v0, v8}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v1

    .line 77
    .local v1, "primary":Lcom/android/incallui/Call;
    if-eqz v1, :cond_2

    .line 78
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v2

    .line 79
    .local v2, "callStart":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v2

    .line 80
    .local v4, "duration":J
    invoke-virtual {v1}, Lcom/android/incallui/Call;->isTheOtherPartyOnHold()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 81
    iget-object v8, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mContext:Landroid/content/Context;

    const v9, 0x7f090021

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Lcom/android/incallui/ConferenceManagerUi;->setPrimaryCallElapsedTime(ILjava/lang/String;)V

    .line 82
    const v8, 0x3ecccccd    # 0.4f

    invoke-interface {v7, v6, v8}, Lcom/android/incallui/ConferenceManagerUi;->setConferenceListAlpha(IF)V

    .line 75
    .end local v2    # "callStart":J
    .end local v4    # "duration":J
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 84
    .restart local v2    # "callStart":J
    .restart local v4    # "duration":J
    :cond_3
    const-wide/16 v8, 0x3e8

    div-long v8, v4, v8

    invoke-static {v8, v9}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Lcom/android/incallui/ConferenceManagerUi;->setPrimaryCallElapsedTime(ILjava/lang/String;)V

    .line 85
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    const/16 v9, 0x9

    if-eq v8, v9, :cond_2

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    const/16 v9, 0xa

    if-eq v8, v9, :cond_2

    .line 86
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-interface {v7, v6, v8}, Lcom/android/incallui/ConferenceManagerUi;->setConferenceListAlpha(IF)V

    goto :goto_1
.end method

.method public updateManageConferenceRow(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;ZZZ)V
    .locals 10
    .param p1, "i"    # I
    .param p2, "contactCacheEntry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p3, "canSeparate"    # Z
    .param p4, "canDisconnect"    # Z
    .param p5, "isHDCall"    # Z

    .prologue
    const/4 v5, 0x1

    .line 525
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceManagerUi;

    .line 526
    .local v0, "ui":Lcom/android/incallui/ConferenceManagerUi;
    if-nez v0, :cond_0

    .line 557
    :goto_0
    return-void

    .line 527
    :cond_0
    if-eqz p2, :cond_4

    .line 528
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "conference number : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 531
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/ConferenceManagerUi;

    invoke-interface {v1, p1, v5}, Lcom/android/incallui/ConferenceManagerUi;->setRowVisible(IZ)V

    .line 533
    :cond_1
    iget-object v2, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    .line 534
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    .line 535
    .local v3, "number":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    .line 536
    .local v7, "photo":Landroid/graphics/drawable/Drawable;
    iget-boolean v8, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    .line 538
    .local v8, "isPersonalPhotoAvailable":Z
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 539
    move-object v2, v3

    .line 540
    const/4 v3, 0x0

    .line 543
    :cond_2
    invoke-interface {v0, p1, p3}, Lcom/android/incallui/ConferenceManagerUi;->setupSeparateButtonForRow(IZ)V

    .line 544
    invoke-interface {v0, p1, p4}, Lcom/android/incallui/ConferenceManagerUi;->setupEndButtonForRow(IZ)V

    .line 545
    const-string v1, "support_conference_call"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 546
    iget-object v4, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->lookupKey:Ljava/lang/String;

    iget-object v6, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->displayPhotoUri:Landroid/net/Uri;

    move v1, p1

    move v9, p5

    invoke-interface/range {v0 .. v9}, Lcom/android/incallui/ConferenceManagerUi;->displayCallerInfoForConferenceRow(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/graphics/drawable/Drawable;ZZ)V

    goto :goto_0

    .line 550
    :cond_3
    iget-object v4, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->lookupKey:Ljava/lang/String;

    iget-object v6, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->displayPhotoUri:Landroid/net/Uri;

    move v1, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/incallui/ConferenceManagerUi;->displayCallerInfoForConferenceRow(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    .line 555
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "number":Ljava/lang/String;
    .end local v7    # "photo":Landroid/graphics/drawable/Drawable;
    .end local v8    # "isPersonalPhotoAvailable":Z
    :cond_4
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/incallui/ConferenceManagerUi;->setRowVisible(IZ)V

    goto :goto_0
.end method
