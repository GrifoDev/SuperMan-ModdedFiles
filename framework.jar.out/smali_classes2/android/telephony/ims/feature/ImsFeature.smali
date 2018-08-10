.class public abstract Landroid/telephony/ims/feature/ImsFeature;
.super Ljava/lang/Object;
.source "ImsFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/feature/ImsFeature$INotifyFeatureRemoved;
    }
.end annotation


# static fields
.field public static final ACTION_IMS_SERVICE_DOWN:Ljava/lang/String; = "com.android.ims.IMS_SERVICE_DOWN"

.field public static final ACTION_IMS_SERVICE_UP:Ljava/lang/String; = "com.android.ims.IMS_SERVICE_UP"

.field public static final EMERGENCY_MMTEL:I = 0x0

.field public static final EXTRA_PHONE_ID:Ljava/lang/String; = "android:phone_id"

.field public static final INVALID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "ImsFeature"

.field public static final MAX:I = 0x3

.field public static final MMTEL:I = 0x1

.field public static final RCS:I = 0x2

.field public static final STATE_INITIALIZING:I = 0x1

.field public static final STATE_NOT_AVAILABLE:I = 0x0

.field public static final STATE_READY:I = 0x2


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRemovedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/ims/feature/ImsFeature$INotifyFeatureRemoved;",
            ">;"
        }
    .end annotation
.end field

.field private mSlotId:I

.field private mState:I

.field private final mStatusCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/ims/internal/IImsFeatureStatusCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mRemovedListeners:Ljava/util/List;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mState:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mSlotId:I

    return-void
.end method

.method static synthetic lambda$-android_telephony_ims_feature_ImsFeature_4367(ILandroid/telephony/ims/feature/ImsFeature$INotifyFeatureRemoved;)V
    .locals 0

    invoke-interface {p1, p0}, Landroid/telephony/ims/feature/ImsFeature$INotifyFeatureRemoved;->onFeatureRemoved(I)V

    return-void
.end method

.method private notifyFeatureState(I)V
    .locals 7

    iget-object v4, p0, Landroid/telephony/ims/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Landroid/telephony/ims/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/IImsFeatureStatusCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v3, "ImsFeature"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notifying ImsFeatureState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsFeatureStatusCallback;->notifyImsFeatureStatus(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    const-string/jumbo v3, "ImsFeature"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Couldn\'t notify feature state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_0
    monitor-exit v4

    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/ImsFeature;->sendImsServiceIntent(I)V

    return-void
.end method

.method private sendImsServiceIntent(I)V
    .locals 3

    iget-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mSlotId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v1, "android:phone_id"

    iget v2, p0, Landroid/telephony/ims/feature/ImsFeature;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.ims.IMS_SERVICE_UP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addFeatureRemovedListener(Landroid/telephony/ims/feature/ImsFeature$INotifyFeatureRemoved;)V
    .locals 2

    iget-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mRemovedListeners:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mRemovedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public addImsFeatureStatusCallback(Lcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mState:I

    invoke-interface {p1, v1}, Lcom/android/ims/internal/IImsFeatureStatusCallback;->notifyImsFeatureStatus(I)V

    iget-object v2, p0, Landroid/telephony/ims/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ImsFeature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Couldn\'t notify feature state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getFeatureState()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mState:I

    return v0
.end method

.method public notifyFeatureRemoved(I)V
    .locals 3

    iget-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mRemovedListeners:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mRemovedListeners:Ljava/util/List;

    new-instance v2, Landroid/telephony/ims/feature/-$Lambda$nHF_Dbrg4P2H381tqGPRuFD0u_w;

    invoke-direct {v2, p1}, Landroid/telephony/ims/feature/-$Lambda$nHF_Dbrg4P2H381tqGPRuFD0u_w;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Landroid/telephony/ims/feature/ImsFeature;->onFeatureRemoved()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public abstract onFeatureRemoved()V
.end method

.method public removeFeatureRemovedListener(Landroid/telephony/ims/feature/ImsFeature$INotifyFeatureRemoved;)V
    .locals 2

    iget-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mRemovedListeners:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mRemovedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeImsFeatureStatusCallback(Lcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/feature/ImsFeature;->mContext:Landroid/content/Context;

    return-void
.end method

.method protected final setFeatureState(I)V
    .locals 1

    iget v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mState:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/telephony/ims/feature/ImsFeature;->mState:I

    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/ImsFeature;->notifyFeatureState(I)V

    :cond_0
    return-void
.end method

.method public setSlotId(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/ims/feature/ImsFeature;->mSlotId:I

    return-void
.end method
