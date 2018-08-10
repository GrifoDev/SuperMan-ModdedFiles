.class final enum Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$7;
.super Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;
.source "AndroidRunnerConcreteCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;)V

    return-void
.end method


# virtual methods
.method public final getObject()Lcom/samsung/android/contextaware/manager/ContextComponent;
    .locals 7

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->-wrap5()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$7;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->-wrap5()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$7;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/contextaware/dataprovider/androidprovider/builtin/MagneticSensorRunner;

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->-wrap4()I

    move-result v3

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->-wrap0()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->-wrap1()Landroid/os/Looper;

    move-result-object v5

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->-wrap3()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/builtin/MagneticSensorRunner;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->-wrap5()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$7;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/manager/ContextComponent;

    return-object v0
.end method

.method public final varargs getObject([Ljava/lang/Object;)Lcom/samsung/android/contextaware/manager/ContextComponent;
    .locals 8

    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->-wrap5()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$7;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->-wrap5()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$7;->name()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/builtin/MagneticSensorRunner;

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->-wrap4()I

    move-result v1

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->-wrap0()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->-wrap1()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->-wrap3()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, p1, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/builtin/MagneticSensorRunner;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;I)V

    invoke-virtual {v6, v7, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->-wrap5()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$7;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/manager/ContextComponent;

    return-object v0
.end method

.method public final getObjectForSubCollection()Lcom/samsung/android/contextaware/manager/ContextComponent;
    .locals 5

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/builtin/MagneticSensorRunner;

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->-wrap4()I

    move-result v1

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->-wrap0()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->-wrap1()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/builtin/MagneticSensorRunner;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    return-object v0
.end method

.method public final varargs getObjectForSubCollection([Ljava/lang/Object;)Lcom/samsung/android/contextaware/manager/ContextComponent;
    .locals 6

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/builtin/MagneticSensorRunner;

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->-wrap4()I

    move-result v1

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->-wrap0()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->-wrap1()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, p1, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/builtin/MagneticSensorRunner;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;I)V

    return-object v0
.end method
