.class public Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator;
.super Ljava/lang/Object;
.source "SensorHubParserConcreteCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;
    }
.end annotation


# static fields
.field private static sPowerResetNotiObservable:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static synthetic -get0()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator;->sPowerResetNotiObservable:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;
    .locals 0

    sput-object p0, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator;->sPowerResetNotiObservable:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator;->create()V

    return-void
.end method

.method private create()V
    .locals 5

    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;->values()[Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    iget-object v4, p0, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;->createObj(Landroid/content/Context;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final getPowerObservable()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator;->sPowerResetNotiObservable:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;

    return-object v0
.end method
