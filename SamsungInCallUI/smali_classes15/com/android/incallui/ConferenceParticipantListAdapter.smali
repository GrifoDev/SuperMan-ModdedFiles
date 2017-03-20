.class public Lcom/android/incallui/ConferenceParticipantListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ConferenceParticipantListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;,
        Lcom/android/incallui/ConferenceParticipantListAdapter$ContactLookupCallback;,
        Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    }
.end annotation


# static fields
.field private static final CALL_TIME_UPDATE_INTERVAL_MS:J = 0x3e8L

.field private static final LOG_TAG:Ljava/lang/String; = "ConferenceParticipantListAdapter"

.field private static sParticipantInfoIdCounter:I


# instance fields
.field private mAddDeleteListAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

.field private mCallTimer:Lcom/android/incallui/CallTimer;

.field private mConferenceParticipants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field private final mContext:Landroid/content/Context;

.field private mDeleteListener:Landroid/view/View$OnClickListener;

.field private mDisconnectListener:Landroid/view/View$OnClickListener;

.field private mIsDeleteActionPending:Z

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mListView:Landroid/widget/ListView;

.field private mParentCanSeparate:Z

.field private final mParticipantsByCallId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRemovedCallIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSeparateListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput v0, Lcom/android/incallui/ConferenceParticipantListAdapter;->sParticipantInfoIdCounter:I

    return-void
.end method

.method public constructor <init>(Landroid/widget/ListView;Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/contacts/common/ContactPhotoManager;)V
    .locals 3
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p4, "contactPhotoManager"    # Lcom/android/contacts/common/ContactPhotoManager;

    .prologue
    .line 288
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mIsDeleteActionPending:Z

    .line 193
    new-instance v0, Lcom/android/incallui/ConferenceParticipantListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/ConferenceParticipantListAdapter$1;-><init>(Lcom/android/incallui/ConferenceParticipantListAdapter;)V

    iput-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mDisconnectListener:Landroid/view/View$OnClickListener;

    .line 208
    new-instance v0, Lcom/android/incallui/ConferenceParticipantListAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/ConferenceParticipantListAdapter$2;-><init>(Lcom/android/incallui/ConferenceParticipantListAdapter;)V

    iput-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mDeleteListener:Landroid/view/View$OnClickListener;

    .line 228
    new-instance v0, Lcom/android/incallui/ConferenceParticipantListAdapter$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/ConferenceParticipantListAdapter$3;-><init>(Lcom/android/incallui/ConferenceParticipantListAdapter;)V

    iput-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mSeparateListener:Landroid/view/View$OnClickListener;

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mConferenceParticipants:Ljava/util/ArrayList;

    .line 255
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParticipantsByCallId:Ljava/util/HashMap;

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mRemovedCallIds:Ljava/util/List;

    .line 290
    iput-object p1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mListView:Landroid/widget/ListView;

    .line 291
    iput-object p2, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mContext:Landroid/content/Context;

    .line 292
    new-instance v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mListView:Landroid/widget/ListView;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;-><init>(Landroid/content/Context;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mAddDeleteListAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    .line 293
    iget-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mAddDeleteListAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    new-instance v1, Lcom/android/incallui/ConferenceParticipantListAdapter$4;

    invoke-direct {v1, p0}, Lcom/android/incallui/ConferenceParticipantListAdapter$4;-><init>(Lcom/android/incallui/ConferenceParticipantListAdapter;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->setOnAddDeleteListener(Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;)V

    .line 325
    iput-object p3, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 326
    iput-object p4, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    .line 328
    invoke-direct {p0}, Lcom/android/incallui/ConferenceParticipantListAdapter;->setCallTimer()V

    .line 329
    return-void
.end method

.method static synthetic access$008()I
    .locals 2

    .prologue
    .line 55
    sget v0, Lcom/android/incallui/ConferenceParticipantListAdapter;->sParticipantInfoIdCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/incallui/ConferenceParticipantListAdapter;->sParticipantInfoIdCounter:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/incallui/ConferenceParticipantListAdapter;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/ConferenceParticipantListAdapter;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParticipantsByCallId:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/ConferenceParticipantListAdapter;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/ConferenceParticipantListAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/incallui/ConferenceParticipantListAdapter;->deleteParticipantInfo(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/ConferenceParticipantListAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/ConferenceParticipantListAdapter;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mRemovedCallIds:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/ConferenceParticipantListAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/ConferenceParticipantListAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/incallui/ConferenceParticipantListAdapter;->removeParticipantList(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/incallui/ConferenceParticipantListAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/ConferenceParticipantListAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mIsDeleteActionPending:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/incallui/ConferenceParticipantListAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/ConferenceParticipantListAdapter;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/incallui/ConferenceParticipantListAdapter;->updateCallTime()V

    return-void
.end method

.method private declared-synchronized deleteParticipantInfo(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 921
    .local p1, "participantInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mIsDeleteActionPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 939
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 923
    :cond_1
    const/4 v4, 0x1

    :try_start_1
    iput-boolean v4, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mIsDeleteActionPending:Z

    .line 924
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 925
    .local v1, "indexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    .line 926
    .local v2, "p":Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    invoke-virtual {v2}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->getCall()Lcom/android/incallui/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    .line 927
    .local v0, "callId":Ljava/lang/String;
    const-string v5, "ConferenceParticipantListAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteParticipantInfo: callId - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 928
    invoke-direct {p0, v0}, Lcom/android/incallui/ConferenceParticipantListAdapter;->getPositionFromListViewByCallId(Ljava/lang/String;)I

    move-result v3

    .line 929
    .local v3, "position":I
    if-ltz v3, :cond_2

    .line 930
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 934
    :goto_2
    iget-object v5, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mRemovedCallIds:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 921
    .end local v0    # "callId":Ljava/lang/String;
    .end local v1    # "indexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "p":Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    .end local v3    # "position":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 932
    .restart local v0    # "callId":Ljava/lang/String;
    .restart local v1    # "indexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v2    # "p":Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    .restart local v3    # "position":I
    :cond_2
    :try_start_2
    const-string v5, "ConferenceParticipantListAdapter"

    const-string v6, "deleteParticipantInfo: can not get position"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 936
    .end local v0    # "callId":Ljava/lang/String;
    .end local v2    # "p":Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    .end local v3    # "position":I
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 937
    iget-object v4, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mAddDeleteListAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-virtual {v4, v1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->setDelete(Ljava/util/ArrayList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private getCallStateOrCallTime(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 8
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 833
    if-eqz p1, :cond_3

    .line 834
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v0

    .line 835
    .local v0, "callStart":J
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    .line 836
    .local v2, "callState":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v0

    .line 837
    .local v4, "duration":J
    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 840
    :cond_0
    iget-object v3, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f090018

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 847
    .end local v0    # "callStart":J
    .end local v2    # "callState":I
    .end local v4    # "duration":J
    :goto_0
    return-object v3

    .line 841
    .restart local v0    # "callStart":J
    .restart local v2    # "callState":I
    .restart local v4    # "duration":J
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->isTheOtherPartyOnHold()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 842
    iget-object v3, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f090021

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 844
    :cond_2
    const-wide/16 v6, 0x3e8

    div-long v6, v4, v6

    invoke-static {v6, v7}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 847
    .end local v0    # "callStart":J
    .end local v2    # "callState":I
    .end local v4    # "duration":J
    :cond_3
    const-string v3, ""

    goto :goto_0
.end method

.method private getPositionFromListViewByCallId(Ljava/lang/String;)I
    .locals 6
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 906
    if-nez p1, :cond_0

    move v1, v3

    .line 917
    :goto_0
    return v1

    .line 907
    :cond_0
    const/4 v1, 0x0

    .local v1, "position":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceParticipantListAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 908
    iget-object v4, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 909
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 910
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;

    .line 911
    .local v0, "holder":Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;
    iget-object v4, v0, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->callId:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 912
    const-string v3, "ConferenceParticipantListAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPositionFromListViewByCallId: callId - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", position - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 907
    .end local v0    # "holder":Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2    # "view":Landroid/view/View;
    :cond_2
    move v1, v3

    .line 917
    goto :goto_0
.end method

.method private refreshView(Ljava/lang/String;)V
    .locals 11
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    .line 402
    iget-object v7, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 403
    .local v1, "first":I
    iget-object v7, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    .line 405
    .local v3, "last":I
    const-string v7, "ConferenceParticipantListAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshView first:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " last:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", callId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 406
    const/4 v4, 0x0

    .local v4, "position":I
    :goto_0
    sub-int v7, v3, v1

    if-gt v4, v7, :cond_0

    .line 407
    iget-object v7, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 408
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;

    .line 409
    .local v2, "holder":Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;
    iget-object v5, v2, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->callId:Ljava/lang/String;

    .line 410
    .local v5, "rowCallId":Ljava/lang/String;
    const-string v7, "ConferenceParticipantListAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshView position:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " rowCallId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", view:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 411
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 413
    add-int v7, v4, v1

    :try_start_0
    iget-object v8, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v7, v6, v8}, Lcom/android/incallui/ConferenceParticipantListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    .end local v2    # "holder":Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;
    .end local v5    # "rowCallId":Ljava/lang/String;
    .end local v6    # "view":Landroid/view/View;
    :cond_0
    :goto_1
    return-void

    .line 414
    .restart local v2    # "holder":Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;
    .restart local v5    # "rowCallId":Ljava/lang/String;
    .restart local v6    # "view":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v7, "ConferenceParticipantListAdapter"

    const-string v8, " refreshView - getView IndexOutOfBoundsException..."

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 406
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private removeParticipantList(Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 886
    const-string v1, "ConferenceParticipantListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeParticipantList callId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 887
    iget-object v1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParticipantsByCallId:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    .line 888
    .local v0, "p":Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    iget-object v1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mConferenceParticipants:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 889
    iget-object v1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParticipantsByCallId:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    return-void
.end method

.method private setCallTimer()V
    .locals 2

    .prologue
    .line 806
    new-instance v0, Lcom/android/incallui/CallTimer;

    new-instance v1, Lcom/android/incallui/ConferenceParticipantListAdapter$6;

    invoke-direct {v1, p0}, Lcom/android/incallui/ConferenceParticipantListAdapter$6;-><init>(Lcom/android/incallui/ConferenceParticipantListAdapter;)V

    invoke-direct {v0, v1}, Lcom/android/incallui/CallTimer;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mCallTimer:Lcom/android/incallui/CallTimer;

    .line 812
    return-void
.end method

.method private final setCallerInfoForRow(Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/graphics/drawable/Drawable;ZZZLcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;Ljava/lang/String;IZ)V
    .locals 10
    .param p1, "holder"    # Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;
    .param p2, "callerName"    # Ljava/lang/String;
    .param p3, "callerNumber"    # Ljava/lang/String;
    .param p4, "callerNumberType"    # Ljava/lang/String;
    .param p5, "lookupKey"    # Ljava/lang/String;
    .param p6, "photoUri"    # Landroid/net/Uri;
    .param p7, "photo"    # Landroid/graphics/drawable/Drawable;
    .param p8, "isPersonalPhotoAvailable"    # Z
    .param p9, "thisRowCanSeparate"    # Z
    .param p10, "thisRowCanDisconnect"    # Z
    .param p11, "participantInfo"    # Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    .param p12, "callStateOrCallTime"    # Ljava/lang/String;
    .param p13, "callState"    # I
    .param p14, "isIllusion"    # Z

    .prologue
    .line 562
    const-string v2, "ConferenceParticipantListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCallerInfoForRow callerName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " callerNumber:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isIllusion:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p14

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const-string v2, "ConferenceParticipantListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCallerInfoForRow photoUri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ;photo :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ; isPersonalPhotoAvailable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 564
    const-string v2, "ConferenceParticipantListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCallerInfoForRow endButton:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->endButton:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " holder.separateButton:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->separateButton:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " conferenceRowCallStateLabel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->conferenceRowCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 565
    const-string v2, "ConferenceParticipantListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCallerInfoForRow deleteButton:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->deleteButton:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move/from16 v0, p14

    invoke-static {v2, v3, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 568
    iget-object v2, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->parentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 569
    .local v9, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a04cc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 570
    iget-object v2, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->parentView:Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 572
    iget-object v3, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->separateLayout:Landroid/view/View;

    if-eqz p9, :cond_6

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 573
    if-eqz p9, :cond_7

    .line 574
    iget-object v2, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->separateButton:Landroid/view/View;

    iget-object v3, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mSeparateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 579
    :goto_1
    if-eqz p14, :cond_8

    .line 580
    iget-object v2, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->endButton:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 581
    iget-object v2, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->endButtonContainerView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 582
    iget-object v2, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->deleteButton:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 583
    iget-object v2, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->separateLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 584
    iget-object v2, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->separateLayout:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 586
    :cond_0
    iget-object v2, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->conferenceCallerInfo:Landroid/view/View;

    const v3, 0x3ecccccd    # 0.4f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 587
    iget-object v2, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->deleteButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v2

    if-nez v2, :cond_1

    .line 588
    iget-object v2, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->deleteButton:Landroid/view/View;

    iget-object v3, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mDeleteListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 602
    :cond_1
    :goto_2
    iget-object v2, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->conferenceRowCallStateLabel:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 603
    iget-object v2, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->conferenceRowCallStateLabel:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 604
    iget-object v2, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->conferenceRowCallStateLabel:Landroid/widget/TextView;

    const-wide v4, 0x3ff3333333333333L    # 1.2

    const v3, 0x7f0a04cf

    invoke-static {v2, v4, v5, v3}, Lcom/android/incallui/util/GraphicResourceUtils;->setMaximumTextSP(Landroid/widget/TextView;DI)V

    .line 606
    iget-object v2, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->conferenceRowCallStateLabel:Landroid/widget/TextView;

    move-object/from16 v0, p12

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    iget-object v2, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->conferenceRowCallStateLabel:Landroid/widget/TextView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 610
    :cond_2
    iget-object v2, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->endButtonContainerView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 616
    iget-object v2, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->photoView:Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    .line 618
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenTheme: Call SecOpenThemeUtils.setPhotoViewBackground("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 619
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->photoView:Landroid/widget/ImageView;

    iget v4, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->viewIndex:I

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/android/incallui/util/SecOpenThemeUtils;->setPhotoIDShape(Landroid/content/Context;Landroid/view/View;IZ)V

    .line 622
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a035a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v8, v2

    .line 623
    .local v8, "diameter":I
    if-eqz p7, :cond_c

    if-eqz p8, :cond_c

    .line 624
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-static {v2, v0, v8}, Lcom/android/incallui/util/SecOpenThemeUtils;->getContactsDefaultImageShape(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p7

    .line 625
    iget-object v2, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->photoView:Landroid/widget/ImageView;

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 636
    .end local v8    # "diameter":I
    :cond_3
    :goto_3
    iget-object v2, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->photoTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 637
    iget-object v2, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->photoTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 641
    :cond_4
    iget-object v2, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 642
    iget-object v2, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->nameTextView:Landroid/widget/TextView;

    const-wide v4, 0x3ff3333333333333L    # 1.2

    const v3, 0x7f0a022d

    invoke-static {v2, v4, v5, v3}, Lcom/android/incallui/util/GraphicResourceUtils;->setMaximumTextSP(Landroid/widget/TextView;DI)V

    .line 646
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 647
    iget-object v2, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->numberTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 648
    iget-object v2, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->numberTypeTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 657
    :goto_4
    const-string v2, "vzw_volte_ui_conf"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 658
    iget-object v2, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->nameTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 659
    iget-object v2, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->numberTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 660
    iget-object v2, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->numberTypeTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 661
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 662
    iget-object v2, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->nameTextView:Landroid/widget/TextView;

    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 667
    :cond_5
    :goto_5
    return-void

    .line 572
    :cond_6
    const/16 v2, 0x8

    goto/16 :goto_0

    .line 576
    :cond_7
    iget-object v2, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->separateButton:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 590
    :cond_8
    iget-object v2, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->deleteButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 591
    iget-object v2, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->deleteButton:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 592
    :cond_9
    iget-object v2, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->deleteButton:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 594
    iget-object v3, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->endButton:Landroid/view/View;

    if-eqz p10, :cond_a

    const/4 v2, 0x0

    :goto_6
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 595
    if-eqz p10, :cond_b

    .line 596
    iget-object v2, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->endButton:Landroid/view/View;

    iget-object v3, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mDisconnectListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 594
    :cond_a
    const/16 v2, 0x8

    goto :goto_6

    .line 598
    :cond_b
    iget-object v2, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->endButton:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 626
    .restart local v8    # "diameter":I
    :cond_c
    if-eqz p6, :cond_d

    .line 627
    new-instance v7, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    const/4 v2, 0x1

    invoke-direct {v7, p2, p5, v2}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 628
    .local v7, "imageRequest":Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    iget-object v2, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    iget-object v3, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->photoView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v4, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/contacts/common/ContactPhotoManager;->loadDirectoryPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    goto/16 :goto_3

    .line 630
    .end local v7    # "imageRequest":Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    :cond_d
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020399

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p7

    .line 632
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-static {v2, v0, v8}, Lcom/android/incallui/util/SecOpenThemeUtils;->getContactsDefaultImageShape(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p7

    .line 633
    iget-object v2, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->photoView:Landroid/widget/ImageView;

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 650
    .end local v8    # "diameter":I
    :cond_e
    iget-object v2, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->numberTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 651
    iget-object v2, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->numberTextView:Landroid/widget/TextView;

    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 652
    iget-object v2, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->numberTypeTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 653
    iget-object v2, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->numberTypeTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 664
    :cond_f
    iget-object v2, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method

.method private sortParticipantList()V
    .locals 2

    .prologue
    .line 793
    iget-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mConferenceParticipants:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/incallui/ConferenceParticipantListAdapter$5;

    invoke-direct {v1, p0}, Lcom/android/incallui/ConferenceParticipantListAdapter$5;-><init>(Lcom/android/incallui/ConferenceParticipantListAdapter;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 800
    return-void
.end method

.method private updateCallTime()V
    .locals 14

    .prologue
    .line 851
    iget-object v10, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mConferenceParticipants:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 875
    :cond_0
    return-void

    .line 854
    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    .line 855
    .local v0, "callList":Lcom/android/incallui/CallList;
    iget-object v10, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v10}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 856
    .local v1, "first":I
    iget-object v10, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v10}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v7

    .line 858
    .local v7, "last":I
    const/4 v8, 0x0

    .local v8, "position":I
    :goto_0
    sub-int v10, v7, v1

    if-gt v8, v10, :cond_0

    .line 859
    iget-object v10, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v10, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;

    .line 860
    .local v6, "holder":Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;
    iget-object v10, v6, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->callId:Ljava/lang/String;

    invoke-virtual {v0, v10}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v9

    .line 861
    .local v9, "primary":Lcom/android/incallui/Call;
    if-eqz v9, :cond_2

    .line 862
    invoke-virtual {v9}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v2

    .line 863
    .local v2, "callStart":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v4, v10, v2

    .line 864
    .local v4, "duration":J
    invoke-virtual {v9}, Lcom/android/incallui/Call;->isTheOtherPartyOnHold()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 865
    iget-object v10, v6, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->conferenceRowCallStateLabel:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mContext:Landroid/content/Context;

    const v12, 0x7f090021

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lcom/android/incallui/ConferenceParticipantListAdapter;->setPrimaryCallElapsedTime(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 866
    iget-object v10, v6, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->conferenceCallerInfo:Landroid/view/View;

    const v11, 0x3ecccccd    # 0.4f

    invoke-virtual {v10, v11}, Landroid/view/View;->setAlpha(F)V

    .line 858
    .end local v2    # "callStart":J
    .end local v4    # "duration":J
    :cond_2
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 868
    .restart local v2    # "callStart":J
    .restart local v4    # "duration":J
    :cond_3
    iget-object v10, v6, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->conferenceRowCallStateLabel:Landroid/widget/TextView;

    const-wide/16 v12, 0x3e8

    div-long v12, v4, v12

    invoke-static {v12, v13}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lcom/android/incallui/ConferenceParticipantListAdapter;->setPrimaryCallElapsedTime(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 869
    invoke-virtual {v9}, Lcom/android/incallui/Call;->getState()I

    move-result v10

    const/16 v11, 0x9

    if-eq v10, v11, :cond_2

    invoke-virtual {v9}, Lcom/android/incallui/Call;->getState()I

    move-result v10

    const/16 v11, 0xa

    if-eq v10, v11, :cond_2

    .line 870
    iget-object v10, v6, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->conferenceCallerInfo:Landroid/view/View;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v10, v11}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1
.end method

.method private declared-synchronized updateParticipantInfo(Ljava/util/List;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/Call;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 676
    .local p1, "conferenceParticipants":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/Call;>;"
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mIsDeleteActionPending:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 677
    const-string v18, "updateParticipantInfo: delete action is pending"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 787
    :goto_0
    monitor-exit p0

    return-void

    .line 681
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v3

    .line 682
    .local v3, "cache":Lcom/android/incallui/ContactInfoCache;
    const/4 v14, 0x0

    .line 683
    .local v14, "newParticipantAdded":Z
    new-instance v13, Ljava/util/HashSet;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    invoke-direct {v13, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 685
    .local v13, "newCallIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 686
    .local v11, "individualUpdateCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v17

    .line 687
    .local v17, "previousParticipantCount":I
    const-string v18, "ConferenceParticipantListAdapter"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updateParticipantInfo previousParticipantCount:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 689
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 691
    .local v16, "participantInfoListForDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_1
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/Call;

    .line 692
    .local v4, "call":Lcom/android/incallui/Call;
    invoke-virtual {v4}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    .line 693
    .local v5, "callId":Ljava/lang/String;
    const-string v18, "ConferenceParticipantListAdapter"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "updateParticipantInfo callId:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mRemovedCallIds:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 696
    const-string v18, "ConferenceParticipantListAdapter"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "already removed call so do not display it again - callId :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 676
    .end local v3    # "cache":Lcom/android/incallui/ContactInfoCache;
    .end local v4    # "call":Lcom/android/incallui/Call;
    .end local v5    # "callId":Ljava/lang/String;
    .end local v11    # "individualUpdateCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "newCallIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v14    # "newParticipantAdded":Z
    .end local v16    # "participantInfoListForDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;>;"
    .end local v17    # "previousParticipantCount":I
    :catchall_0
    move-exception v18

    monitor-exit p0

    throw v18

    .line 699
    .restart local v3    # "cache":Lcom/android/incallui/ContactInfoCache;
    .restart local v4    # "call":Lcom/android/incallui/Call;
    .restart local v5    # "callId":Ljava/lang/String;
    .restart local v11    # "individualUpdateCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "newCallIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v14    # "newParticipantAdded":Z
    .restart local v16    # "participantInfoListForDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;>;"
    .restart local v17    # "previousParticipantCount":I
    :cond_2
    :try_start_2
    invoke-virtual {v13, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 700
    invoke-virtual {v3, v5}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v6

    .line 701
    .local v6, "contactCache":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-nez v6, :cond_3

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    .line 703
    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v18

    const/16 v21, 0x4

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    const/16 v18, 0x1

    .line 702
    :goto_2
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-static {v0, v4, v1}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/incallui/Call;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v6

    .line 706
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParticipantsByCallId:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParticipantsByCallId:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    .line 708
    .local v15, "participantInfo":Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    const-string v18, "ConferenceParticipantListAdapter"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "updateParticipantInfo previousState :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v15}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->getPreviousCallState()I

    move-result v21

    invoke-static/range {v21 .. v21}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " call.getState():"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 709
    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v21

    invoke-static/range {v21 .. v21}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    .line 708
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 710
    invoke-virtual {v15}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->getPreviousCallState()I

    move-result v18

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v20

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    .line 711
    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 713
    :cond_4
    invoke-virtual {v15, v4}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->setCall(Lcom/android/incallui/Call;)V

    .line 714
    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->setPreviousCallState(I)V

    .line 715
    invoke-virtual {v15, v6}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->setContactCacheEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 723
    :goto_3
    const-string v18, "ConferenceParticipantListAdapter"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "updateParticipantInfo state: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v21

    invoke-static/range {v21 .. v21}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 725
    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v18

    const/16 v20, 0x2

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 726
    const-string v18, "ConferenceParticipantListAdapter"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "updateParticipantInfo getDisconnectedByUser: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getDisconnectedByUser()Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 727
    invoke-virtual {v4}, Lcom/android/incallui/Call;->getDisconnectedByUser()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParticipantsByCallId:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "participantInfo":Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    check-cast v15, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    .line 729
    .restart local v15    # "participantInfo":Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    if-eqz v15, :cond_1

    .line 730
    const-string v18, "ConferenceParticipantListAdapter"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "updateParticipantInfo: participantInfoListForDelete.add("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 731
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 703
    .end local v15    # "participantInfo":Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    :cond_5
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 717
    :cond_6
    const/4 v14, 0x1

    .line 718
    new-instance v15, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v4, v6}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;-><init>(Lcom/android/incallui/ConferenceParticipantListAdapter;Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 719
    .restart local v15    # "participantInfo":Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mConferenceParticipants:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParticipantsByCallId:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 734
    :cond_7
    const-string v18, "ConferenceParticipantListAdapter"

    const-string v20, "updateParticipantInfo: call.setIllusion(true)"

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 735
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/android/incallui/Call;->setIllusion(Z)V

    goto/16 :goto_1

    .line 739
    .end local v4    # "call":Lcom/android/incallui/Call;
    .end local v5    # "callId":Ljava/lang/String;
    .end local v6    # "contactCache":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .end local v15    # "participantInfo":Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    :cond_8
    const-string v18, "ConferenceParticipantListAdapter"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updateParticipantInfo mConferenceParticipants:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mConferenceParticipants:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParticipantsByCallId:Ljava/util/HashMap;

    move-object/from16 v18, v0

    .line 743
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 744
    .local v12, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;>;>;"
    :cond_9
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_a

    .line 745
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 746
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 747
    .local v8, "existingCallId":Ljava/lang/String;
    invoke-virtual {v13, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_9

    .line 748
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    .line 749
    .local v9, "existingInfo":Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mConferenceParticipants:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 750
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    .line 751
    const-string v18, "ConferenceParticipantListAdapter"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updateParticipantInfo: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " is removed"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_4

    .line 755
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;>;"
    .end local v8    # "existingCallId":Ljava/lang/String;
    .end local v9    # "existingInfo":Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    :cond_a
    if-eqz v14, :cond_b

    .line 757
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/ConferenceParticipantListAdapter;->sortParticipantList()V

    .line 759
    :cond_b
    const-string v18, "ConferenceParticipantListAdapter"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updateParticipantInfo previousParticipantCount:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " conferenceParticipants.size():"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 760
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    .line 759
    invoke-static/range {v18 .. v20}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 761
    const-string v18, "ConferenceParticipantListAdapter"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updateParticipantInfo individualUpdateCallIds.size():"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " individualUpdateCallIds:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 764
    if-eqz v14, :cond_d

    .line 765
    const-string v18, "ConferenceParticipantListAdapter"

    const-string v19, "updateParticipantInfo - some participants are Added"

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 782
    :cond_c
    :goto_5
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_11

    .line 783
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/incallui/ConferenceParticipantListAdapter;->deleteParticipantInfo(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 767
    :cond_d
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_e

    .line 768
    const-string v18, "ConferenceParticipantListAdapter"

    const-string v19, "updateParticipantInfo - some participants are removed"

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_5

    .line 770
    :cond_e
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v18

    if-nez v18, :cond_f

    .line 772
    const-string v18, "ConferenceParticipantListAdapter"

    const-string v19, "updateParticipantInfo - no call state change so don\'t need to update"

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_5

    .line 773
    :cond_f
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v18

    if-eqz v18, :cond_10

    .line 775
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_6
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_c

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 776
    .local v10, "id":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/incallui/ConferenceParticipantListAdapter;->refreshView(Ljava/lang/String;)V

    goto :goto_6

    .line 779
    .end local v10    # "id":Ljava/lang/String;
    :cond_10
    const-string v18, "ConferenceParticipantListAdapter"

    const-string v19, "updateParticipantInfo - update list fully by unknown reason"

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_5

    .line 785
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/ConferenceParticipantListAdapter;->notifyDataSetChanged()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mConferenceParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mConferenceParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceParticipantListAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mConferenceParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    invoke-virtual {v0}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->getId()I

    move-result v0

    int-to-long v0, v0

    .line 376
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 21
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mConferenceParticipants:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    .line 468
    .local v13, "participantInfo":Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    invoke-virtual {v13}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->getCall()Lcom/android/incallui/Call;

    move-result-object v18

    .line 471
    .local v18, "call":Lcom/android/incallui/Call;
    if-nez p2, :cond_1

    .line 472
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0400a3

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v4, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v20

    .line 473
    .local v20, "result":Landroid/view/View;
    new-instance v3, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v3, v2}, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;-><init>(Lcom/android/incallui/ConferenceParticipantListAdapter$1;)V

    .line 474
    .local v3, "holder":Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;
    move-object/from16 v0, v20

    iput-object v0, v3, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->parentView:Landroid/view/View;

    .line 475
    const v2, 0x7f10021a

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v3, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->conferenceCallerInfo:Landroid/view/View;

    .line 476
    const v2, 0x7f10021b

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v3, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->photoContainerView:Landroid/view/View;

    .line 477
    const v2, 0x7f1000b7

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->photoView:Landroid/widget/ImageView;

    .line 478
    const v2, 0x7f10021c

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->photoTextView:Landroid/widget/TextView;

    .line 479
    const v2, 0x7f1000b8

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->nameTextView:Landroid/widget/TextView;

    .line 480
    const v2, 0x7f1000b9

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->numberTextView:Landroid/widget/TextView;

    .line 481
    const v2, 0x7f1000ba

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->numberTypeTextView:Landroid/widget/TextView;

    .line 482
    const v2, 0x7f10021e

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->conferenceRowCallStateLabel:Landroid/widget/TextView;

    .line 483
    const v2, 0x7f10021d

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->hdIconView:Landroid/widget/ImageView;

    .line 484
    const v2, 0x7f100220

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v3, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->endButtonContainerView:Landroid/view/View;

    .line 485
    const v2, 0x7f1000bc

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v3, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->endButton:Landroid/view/View;

    .line 486
    const v2, 0x7f10021f

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v3, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->separateLayout:Landroid/view/View;

    .line 487
    const v2, 0x7f1000bb

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v3, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->separateButton:Landroid/view/View;

    .line 488
    const v2, 0x7f100221

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v3, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->deleteButton:Landroid/view/View;

    .line 489
    invoke-virtual/range {v18 .. v18}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->callId:Ljava/lang/String;

    .line 490
    move/from16 v0, p1

    iput v0, v3, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->viewIndex:I

    .line 498
    :goto_0
    invoke-virtual {v13}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->getContactCacheEntry()Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v19

    .line 500
    .local v19, "contactCache":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v17

    .line 504
    .local v17, "cache":Lcom/android/incallui/ContactInfoCache;
    invoke-virtual {v13}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->isCacheLookupComplete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 505
    invoke-virtual {v13}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->getCall()Lcom/android/incallui/Call;

    move-result-object v4

    .line 506
    invoke-virtual {v13}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->getCall()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v5, 0x4

    if-ne v2, v5, :cond_2

    const/4 v2, 0x1

    :goto_1
    new-instance v5, Lcom/android/incallui/ConferenceParticipantListAdapter$ContactLookupCallback;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/incallui/ConferenceParticipantListAdapter$ContactLookupCallback;-><init>(Lcom/android/incallui/ConferenceParticipantListAdapter;)V

    .line 505
    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v2, v5}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/incallui/Call;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    .line 510
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParentCanSeparate:Z

    if-eqz v2, :cond_3

    invoke-virtual/range {v18 .. v18}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v2

    const/16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/telecom/Call$Details;->can(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v11, 0x1

    .line 513
    .local v11, "thisRowCanSeparate":Z
    :goto_2
    invoke-virtual/range {v18 .. v18}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v2

    const/16 v4, 0x2000

    invoke-virtual {v2, v4}, Landroid/telecom/Call$Details;->can(I)Z

    move-result v12

    .line 516
    .local v12, "thisRowCanDisconnect":Z
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/incallui/ConferenceParticipantListAdapter;->getCallStateOrCallTime(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v14

    .line 518
    .local v14, "callStateOrCallTime":Ljava/lang/String;
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->lookupKey:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v8, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->displayPhotoUri:Landroid/net/Uri;

    move-object/from16 v0, v19

    iget-object v9, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v19

    iget-boolean v10, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    .line 520
    invoke-virtual/range {v18 .. v18}, Lcom/android/incallui/Call;->getState()I

    move-result v15

    invoke-virtual/range {v18 .. v18}, Lcom/android/incallui/Call;->getIllusion()Z

    move-result v16

    move-object/from16 v2, p0

    .line 518
    invoke-direct/range {v2 .. v16}, Lcom/android/incallui/ConferenceParticipantListAdapter;->setCallerInfoForRow(Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/graphics/drawable/Drawable;ZZZLcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;Ljava/lang/String;IZ)V

    .line 524
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 525
    const-string v2, "ConferenceParticipantListAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getView result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " position:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", call.getId():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 526
    return-object v20

    .line 492
    .end local v3    # "holder":Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;
    .end local v11    # "thisRowCanSeparate":Z
    .end local v12    # "thisRowCanDisconnect":Z
    .end local v14    # "callStateOrCallTime":Ljava/lang/String;
    .end local v17    # "cache":Lcom/android/incallui/ContactInfoCache;
    .end local v19    # "contactCache":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .end local v20    # "result":Landroid/view/View;
    :cond_1
    move-object/from16 v20, p2

    .line 493
    .restart local v20    # "result":Landroid/view/View;
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;

    .line 494
    .restart local v3    # "holder":Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;
    move-object/from16 v0, v20

    iput-object v0, v3, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->parentView:Landroid/view/View;

    .line 495
    invoke-virtual/range {v18 .. v18}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->callId:Ljava/lang/String;

    goto/16 :goto_0

    .line 506
    .restart local v17    # "cache":Lcom/android/incallui/ContactInfoCache;
    .restart local v19    # "contactCache":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 510
    :cond_3
    const/4 v11, 0x0

    goto/16 :goto_2
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 943
    const/4 v0, 0x1

    return v0
.end method

.method public refreshCall(Lcom/android/incallui/Call;)V
    .locals 5
    .param p1, "call"    # Lcom/android/incallui/Call;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 386
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "callId":Ljava/lang/String;
    const-string v2, "ConferenceParticipantListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshCall callId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 388
    iget-object v2, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParticipantsByCallId:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 389
    iget-object v2, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParticipantsByCallId:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    .line 390
    .local v1, "participantInfo":Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    invoke-virtual {v1, p1}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->setCall(Lcom/android/incallui/Call;)V

    .line 391
    invoke-direct {p0, v0}, Lcom/android/incallui/ConferenceParticipantListAdapter;->refreshView(Ljava/lang/String;)V

    .line 393
    .end local v1    # "participantInfo":Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    :cond_0
    return-void
.end method

.method public setPrimaryCallElapsedTime(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .param p1, "conferenceRowCallStateLabel"    # Landroid/widget/TextView;
    .param p2, "callTimeElapsed"    # Ljava/lang/String;

    .prologue
    .line 878
    if-eqz p1, :cond_0

    .line 879
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 880
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 881
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 883
    :cond_0
    return-void
.end method

.method public startCallTimer()V
    .locals 4

    .prologue
    .line 815
    iget-object v1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mCallTimer:Lcom/android/incallui/CallTimer;

    if-eqz v1, :cond_0

    .line 816
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    .line 817
    .local v0, "callList":Lcom/android/incallui/CallList;
    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 818
    const-string v1, "ConferenceParticipantListAdapter"

    const-string v2, "Starting the calltime timer"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    iget-object v1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mCallTimer:Lcom/android/incallui/CallTimer;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/CallTimer;->start(J)Z

    .line 822
    .end local v0    # "callList":Lcom/android/incallui/CallList;
    :cond_0
    return-void
.end method

.method public stopCallTimer()V
    .locals 2

    .prologue
    .line 826
    iget-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mCallTimer:Lcom/android/incallui/CallTimer;

    if-eqz v0, :cond_0

    .line 827
    const-string v0, "ConferenceParticipantListAdapter"

    const-string v1, "Canceling the calltime timer"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    iget-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v0}, Lcom/android/incallui/CallTimer;->cancel()V

    .line 830
    :cond_0
    return-void
.end method

.method updateContactInfo(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 536
    iget-object v1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParticipantsByCallId:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 537
    iget-object v1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParticipantsByCallId:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    .line 538
    .local v0, "participantInfo":Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    invoke-virtual {v0, p2}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->setContactCacheEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 539
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->setCacheLookupComplete(Z)V

    .line 540
    invoke-direct {p0, p1}, Lcom/android/incallui/ConferenceParticipantListAdapter;->refreshView(Ljava/lang/String;)V

    .line 542
    .end local v0    # "participantInfo":Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    :cond_0
    return-void
.end method

.method public updateParticipants(Ljava/util/List;Z)V
    .locals 0
    .param p2, "parentCanSeparate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/Call;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 339
    .local p1, "conferenceParticipants":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/Call;>;"
    iput-boolean p2, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParentCanSeparate:Z

    .line 340
    invoke-direct {p0, p1}, Lcom/android/incallui/ConferenceParticipantListAdapter;->updateParticipantInfo(Ljava/util/List;)V

    .line 341
    return-void
.end method
