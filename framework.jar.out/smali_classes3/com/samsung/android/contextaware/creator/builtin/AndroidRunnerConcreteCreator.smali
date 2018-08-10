.class public Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator;
.super Lcom/samsung/android/contextaware/creator/ContextProviderCreator;
.source "AndroidRunnerConcreteCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;
    }
.end annotation


# direct methods
.method static synthetic -wrap0()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1()Landroid/os/Looper;
    .locals 1

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->removeObj(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->getApPowerObservable()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4()I
    .locals 1

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap5()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;I)V

    return-void
.end method


# virtual methods
.method public final getValueOfList(Ljava/lang/String;)Lcom/samsung/android/contextaware/creator/IListObjectCreator;
    .locals 5

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;->values()[Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method
