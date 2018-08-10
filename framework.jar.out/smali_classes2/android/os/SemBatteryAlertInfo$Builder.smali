.class public final Landroid/os/SemBatteryAlertInfo$Builder;
.super Ljava/lang/Object;
.source "SemBatteryAlertInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SemBatteryAlertInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private builderDoNotAlertWhenChargerConnected:Z

.field private builderHourArr:[I

.field private builderId:I

.field private builderIncubationPeriod:J

.field private builderMaxLevelArr:[I

.field private builderMinLevelArr:[I

.field private builderPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method static synthetic -get0(Landroid/os/SemBatteryAlertInfo$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/os/SemBatteryAlertInfo$Builder;->builderDoNotAlertWhenChargerConnected:Z

    return v0
.end method

.method static synthetic -get1(Landroid/os/SemBatteryAlertInfo$Builder;)[I
    .locals 1

    iget-object v0, p0, Landroid/os/SemBatteryAlertInfo$Builder;->builderHourArr:[I

    return-object v0
.end method

.method static synthetic -get2(Landroid/os/SemBatteryAlertInfo$Builder;)I
    .locals 1

    iget v0, p0, Landroid/os/SemBatteryAlertInfo$Builder;->builderId:I

    return v0
.end method

.method static synthetic -get3(Landroid/os/SemBatteryAlertInfo$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/os/SemBatteryAlertInfo$Builder;->builderIncubationPeriod:J

    return-wide v0
.end method

.method static synthetic -get4(Landroid/os/SemBatteryAlertInfo$Builder;)[I
    .locals 1

    iget-object v0, p0, Landroid/os/SemBatteryAlertInfo$Builder;->builderMaxLevelArr:[I

    return-object v0
.end method

.method static synthetic -get5(Landroid/os/SemBatteryAlertInfo$Builder;)[I
    .locals 1

    iget-object v0, p0, Landroid/os/SemBatteryAlertInfo$Builder;->builderMinLevelArr:[I

    return-object v0
.end method

.method static synthetic -get6(Landroid/os/SemBatteryAlertInfo$Builder;)Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Landroid/os/SemBatteryAlertInfo$Builder;->builderPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    const/16 v2, 0x18

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/SemBatteryAlertInfo$Builder;->builderId:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/SemBatteryAlertInfo$Builder;->builderPendingIntent:Landroid/app/PendingIntent;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/SemBatteryAlertInfo$Builder;->builderIncubationPeriod:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/SemBatteryAlertInfo$Builder;->builderDoNotAlertWhenChargerConnected:Z

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/os/SemBatteryAlertInfo$Builder;->builderHourArr:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/os/SemBatteryAlertInfo$Builder;->builderMinLevelArr:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Landroid/os/SemBatteryAlertInfo$Builder;->builderMaxLevelArr:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
    .end array-data
.end method


# virtual methods
.method public build()Landroid/os/SemBatteryAlertInfo;
    .locals 2

    new-instance v0, Landroid/os/SemBatteryAlertInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/os/SemBatteryAlertInfo;-><init>(Landroid/os/SemBatteryAlertInfo$Builder;Landroid/os/SemBatteryAlertInfo;)V

    return-object v0
.end method

.method public setAlertId(I)Landroid/os/SemBatteryAlertInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/os/SemBatteryAlertInfo$Builder;->builderId:I

    return-object p0
.end method

.method public setAllWithSameLevel(II)Landroid/os/SemBatteryAlertInfo$Builder;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/SemBatteryAlertInfo$Builder;->setHourWithLevel(III)Landroid/os/SemBatteryAlertInfo$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setDoNotAlertWhenChargerConnected(Z)Landroid/os/SemBatteryAlertInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/os/SemBatteryAlertInfo$Builder;->builderDoNotAlertWhenChargerConnected:Z

    return-object p0
.end method

.method public setHourWithLevel(III)Landroid/os/SemBatteryAlertInfo$Builder;
    .locals 2

    const/16 v1, 0x64

    if-gez p1, :cond_0

    const/16 v0, 0x17

    if-gt p1, v0, :cond_1

    :cond_0
    if-ltz p2, :cond_1

    if-gt p2, v1, :cond_1

    if-ltz p3, :cond_1

    if-gt p3, v1, :cond_1

    if-gt p2, p3, :cond_1

    iget-object v0, p0, Landroid/os/SemBatteryAlertInfo$Builder;->builderHourArr:[I

    const/4 v1, 0x1

    aput v1, v0, p1

    iget-object v0, p0, Landroid/os/SemBatteryAlertInfo$Builder;->builderMinLevelArr:[I

    aput p2, v0, p1

    iget-object v0, p0, Landroid/os/SemBatteryAlertInfo$Builder;->builderMaxLevelArr:[I

    aput p3, v0, p1

    :cond_1
    return-object p0
.end method

.method public setIncubationPeriod(J)Landroid/os/SemBatteryAlertInfo$Builder;
    .locals 1

    iput-wide p1, p0, Landroid/os/SemBatteryAlertInfo$Builder;->builderIncubationPeriod:J

    return-object p0
.end method

.method public setPendingIntent(Landroid/app/PendingIntent;)Landroid/os/SemBatteryAlertInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/os/SemBatteryAlertInfo$Builder;->builderPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method
