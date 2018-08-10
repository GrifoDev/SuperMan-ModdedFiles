.class public Landroid/telephony/ims/ImsService;
.super Landroid/app/Service;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ImsService$1;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsService"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.telephony.ims.ImsService"


# instance fields
.field private final mFeatures:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/telephony/ims/feature/ImsFeature;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final mImsServiceController:Landroid/os/IBinder;


# direct methods
.method static synthetic -get0(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ImsService;->mFeatures:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/feature/MMTelFeature;
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/ImsService;->resolveMMTelFeature(II)Landroid/telephony/ims/feature/MMTelFeature;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/telephony/ims/ImsService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsService;->enforceReadPhoneStatePermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/telephony/ims/ImsService;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/ImsService;->onCreateImsFeatureInternal(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    return-void
.end method

.method static synthetic -wrap3(Landroid/telephony/ims/ImsService;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/ImsService;->onRemoveImsFeatureInternal(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsService;->mFeatures:Landroid/util/SparseArray;

    new-instance v0, Landroid/telephony/ims/ImsService$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/ImsService$1;-><init>(Landroid/telephony/ims/ImsService;)V

    iput-object v0, p0, Landroid/telephony/ims/ImsService;->mImsServiceController:Landroid/os/IBinder;

    return-void
.end method

.method private enforceReadPhoneStatePermission(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p0, v0}, Landroid/telephony/ims/ImsService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0, p1}, Landroid/telephony/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private makeImsFeature(II)Landroid/telephony/ims/feature/ImsFeature;
    .locals 1

    packed-switch p2, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsService;->onCreateEmergencyMMTelImsFeature(I)Landroid/telephony/ims/feature/MMTelFeature;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsService;->onCreateMMTelImsFeature(I)Landroid/telephony/ims/feature/MMTelFeature;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsService;->onCreateRcsFeature(I)Landroid/telephony/ims/feature/RcsFeature;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onCreateImsFeatureInternal(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 3

    iget-object v2, p0, Landroid/telephony/ims/ImsService;->mFeatures:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iget-object v2, p0, Landroid/telephony/ims/ImsService;->mFeatures:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/ImsService;->makeImsFeature(II)Landroid/telephony/ims/feature/ImsFeature;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/telephony/ims/feature/ImsFeature;->setContext(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/telephony/ims/feature/ImsFeature;->setSlotId(I)V

    invoke-virtual {v0, p3}, Landroid/telephony/ims/feature/ImsFeature;->addImsFeatureStatusCallback(Lcom/android/ims/internal/IImsFeatureStatusCallback;)V

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private onRemoveImsFeatureInternal(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 3

    iget-object v2, p0, Landroid/telephony/ims/ImsService;->mFeatures:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0, p2}, Landroid/telephony/ims/ImsService;->getImsFeatureFromType(Landroid/util/SparseArray;I)Landroid/telephony/ims/feature/ImsFeature;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {v1, p1}, Landroid/telephony/ims/feature/ImsFeature;->notifyFeatureRemoved(I)V

    invoke-virtual {v1, p3}, Landroid/telephony/ims/feature/ImsFeature;->removeImsFeatureStatusCallback(Lcom/android/ims/internal/IImsFeatureStatusCallback;)V

    :cond_1
    return-void
.end method

.method private resolveImsFeature(Landroid/util/SparseArray;ILjava/lang/Class;)Landroid/telephony/ims/feature/ImsFeature;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/telephony/ims/feature/ImsFeature;",
            ">(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/telephony/ims/feature/ImsFeature;",
            ">;I",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/ImsService;->getImsFeatureFromType(Landroid/util/SparseArray;I)Landroid/telephony/ims/feature/ImsFeature;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v5

    :cond_0
    :try_start_0
    invoke-virtual {p3, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/feature/ImsFeature;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "ImsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can not cast ImsFeature! Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5
.end method

.method private resolveMMTelFeature(II)Landroid/telephony/ims/feature/MMTelFeature;
    .locals 3

    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsService;->getImsFeatureMap(I)Landroid/util/SparseArray;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    const-class v2, Landroid/telephony/ims/feature/MMTelFeature;

    invoke-direct {p0, v1, p2, v2}, Landroid/telephony/ims/ImsService;->resolveImsFeature(Landroid/util/SparseArray;ILjava/lang/Class;)Landroid/telephony/ims/feature/ImsFeature;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/feature/MMTelFeature;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getImsFeatureFromType(Landroid/util/SparseArray;I)Landroid/telephony/ims/feature/ImsFeature;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/telephony/ims/feature/ImsFeature;",
            ">;I)",
            "Landroid/telephony/ims/feature/ImsFeature;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/feature/ImsFeature;

    return-object v0
.end method

.method public getImsFeatureMap(I)Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/telephony/ims/feature/ImsFeature;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/ImsService;->mFeatures:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string/jumbo v0, "android.telephony.ims.ImsService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsService;->mImsServiceController:Landroid/os/IBinder;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateEmergencyMMTelImsFeature(I)Landroid/telephony/ims/feature/MMTelFeature;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateMMTelImsFeature(I)Landroid/telephony/ims/feature/MMTelFeature;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateRcsFeature(I)Landroid/telephony/ims/feature/RcsFeature;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
