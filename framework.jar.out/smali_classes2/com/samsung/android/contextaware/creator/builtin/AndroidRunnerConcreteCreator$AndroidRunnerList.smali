.class abstract enum Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;
.super Ljava/lang/Enum;
.source "AndroidRunnerConcreteCreator.java"

# interfaces
.implements Lcom/samsung/android/contextaware/creator/IListObjectCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "AndroidRunnerList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$1;,
        Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$2;,
        Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$3;,
        Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$4;,
        Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$5;,
        Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$6;,
        Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$7;,
        Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$8;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;",
        ">;",
        "Lcom/samsung/android/contextaware/creator/IListObjectCreator;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

.field public static final enum ACCELEROMETER_SENSOR:Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

.field public static final enum BEST_LOCATION:Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

.field public static final enum GYROSCOPE_SENSOR:Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

.field public static final enum MAGNETIC_SENSOR:Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

.field public static final enum ORIENTATION_SENSOR:Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

.field public static final enum RAW_GPS:Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

.field public static final enum RAW_SATELLITE:Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

.field public static final enum RAW_WPS:Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$1;

    const-string/jumbo v1, "RAW_GPS"

    sget-object v2, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_GPS:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;->RAW_GPS:Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

    new-instance v0, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$2;

    const-string/jumbo v1, "RAW_WPS"

    sget-object v2, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_WPS:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;->RAW_WPS:Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

    new-instance v0, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$3;

    const-string/jumbo v1, "RAW_SATELLITE"

    sget-object v2, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_SATELLITE:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;->RAW_SATELLITE:Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

    new-instance v0, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$4;

    const-string/jumbo v1, "BEST_LOCATION"

    sget-object v2, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_BEST_LOCATION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v7, v2}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;->BEST_LOCATION:Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

    new-instance v0, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$5;

    const-string/jumbo v1, "ACCELEROMETER_SENSOR"

    sget-object v2, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_ACCELEROMETER_SENSOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v8, v2}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;->ACCELEROMETER_SENSOR:Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

    new-instance v0, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$6;

    const-string/jumbo v1, "ORIENTATION_SENSOR"

    sget-object v2, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_ORIENTATION_SENSOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;->ORIENTATION_SENSOR:Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

    new-instance v0, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$7;

    const-string/jumbo v1, "MAGNETIC_SENSOR"

    sget-object v2, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_MAGNETIC_SENSOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$7;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;->MAGNETIC_SENSOR:Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

    new-instance v0, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$8;

    const-string/jumbo v1, "GYROSCOPE_SENSOR"

    sget-object v2, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_GYROSCOPE_SENSOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$8;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;->GYROSCOPE_SENSOR:Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

    sget-object v1, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;->RAW_GPS:Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;->RAW_WPS:Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;->RAW_SATELLITE:Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;->BEST_LOCATION:Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;->ACCELEROMETER_SENSOR:Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;->ORIENTATION_SENSOR:Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;->MAGNETIC_SENSOR:Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;->GYROSCOPE_SENSOR:Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;->$VALUES:[Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;->name:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;
    .locals 1

    const-class v0, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;->$VALUES:[Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

    return-object v0
.end method


# virtual methods
.method public varargs getObject([Ljava/lang/Object;)Lcom/samsung/android/contextaware/manager/ContextComponent;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;->getObject()Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v0

    return-object v0
.end method

.method public getObjectForSubCollection()Lcom/samsung/android/contextaware/manager/ContextComponent;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;->getObject()Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v0

    return-object v0
.end method

.method public varargs getObjectForSubCollection([Ljava/lang/Object;)Lcom/samsung/android/contextaware/manager/ContextComponent;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;->getObjectForSubCollection()Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v0

    return-object v0
.end method

.method public removeObject(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->-wrap2(Ljava/lang/String;)Z

    return-void
.end method
