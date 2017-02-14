.class abstract enum Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;
.super Ljava/lang/Enum;
.source "AggregatorConcreteCreator.java"

# interfaces
.implements Lcom/samsung/android/contextaware/creator/IListObjectCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "AggregatorList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList$1;,
        Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList$2;,
        Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList$3;,
        Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList$4;,
        Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList$5;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;",
        ">;",
        "Lcom/samsung/android/contextaware/creator/IListObjectCreator;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

.field public static final enum LIFE_LOG:Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

.field public static final enum LOCATION:Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

.field public static final enum LPP:Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

.field public static final enum MOVING:Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

.field public static final enum TEMPERATURE_HUMIDITY:Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList$1;

    const-string/jumbo v1, "LOCATION"

    sget-object v2, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_LOCATION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->LOCATION:Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    new-instance v0, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList$2;

    const-string/jumbo v1, "MOVING"

    sget-object v2, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_MOVING:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->MOVING:Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    new-instance v0, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList$3;

    const-string/jumbo v1, "LPP"

    sget-object v2, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_LPP:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->LPP:Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    new-instance v0, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList$4;

    const-string/jumbo v1, "TEMPERATURE_HUMIDITY"

    sget-object v2, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_TEMPERATURE_HUMIDITY:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList$4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->TEMPERATURE_HUMIDITY:Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    new-instance v0, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList$5;

    const-string/jumbo v1, "LIFE_LOG"

    sget-object v2, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_LIFE_LOG:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v7, v2}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList$5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->LIFE_LOG:Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    sget-object v1, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->LOCATION:Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->MOVING:Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->LPP:Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->TEMPERATURE_HUMIDITY:Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->LIFE_LOG:Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    aput-object v1, v0, v7

    sput-object v0, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->$VALUES:[Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->name:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private static varargs getRunnerObj(Ljava/lang/String;[Ljava/lang/Object;)Lcom/samsung/android/contextaware/manager/ContextComponent;
    .locals 4

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->-wrap6()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v0, p0, v3, p1}, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;->create(Ljava/lang/String;Z[Ljava/lang/Object;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v2

    if-eqz v2, :cond_0

    :cond_1
    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;
    .locals 1

    const-class v0, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->$VALUES:[Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    return-object v0
.end method


# virtual methods
.method public final varargs getObject([Ljava/lang/Object;)Lcom/samsung/android/contextaware/manager/ContextComponent;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->getObject()Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v0

    return-object v0
.end method

.method public final getObjectForSubCollection()Lcom/samsung/android/contextaware/manager/ContextComponent;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->getObject()Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v0

    return-object v0
.end method

.method public final varargs getObjectForSubCollection([Ljava/lang/Object;)Lcom/samsung/android/contextaware/manager/ContextComponent;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->getObjectForSubCollection()Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v0

    return-object v0
.end method

.method public getSubCollectionList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    return-object v0
.end method

.method protected final makeListForContextCreation()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/manager/ContextComponent;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->getSubCollectionList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    if-nez v3, :cond_0

    const-string/jumbo v4, "list is null."

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-object v5

    :cond_0
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->getRunnerObj(Ljava/lang/String;[Ljava/lang/Object;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public removeObject(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->-wrap2(Ljava/lang/String;)Z

    return-void
.end method
