.class public Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;
.super Ljava/lang/Object;
.source "LppConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private GPSAlways:Z

.field public GPSKeepOn_Timer:I

.field public GPSRequest_APDR:I

.field private GPSRequest_By:I

.field public GPSRequest_Timer:I

.field private LogConfig:Ljava/lang/String;

.field private LogFlags:[Z

.field private LogFolderName:Ljava/lang/String;

.field private flag_log:Z

.field public transient looper:Landroid/os/Looper;

.field private mcontext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->flag_log:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->GPSAlways:Z

    const-string/jumbo v0, "LPPTest"

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->LogFolderName:Ljava/lang/String;

    const-string/jumbo v0, "[LPPTest Configuration]\r\n"

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->LogConfig:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->GPSRequest_By:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->GPSRequest_APDR:I

    const/16 v0, 0x2d

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->GPSRequest_Timer:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->GPSKeepOn_Timer:I

    const/4 v0, 0x4

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->LogFlags:[Z

    iput p2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->GPSRequest_APDR:I

    iput p3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->GPSRequest_Timer:I

    iput p4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->GPSKeepOn_Timer:I

    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->mcontext:Landroid/content/Context;

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;)V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->flag_log:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->GPSAlways:Z

    const-string/jumbo v2, "LPPTest"

    iput-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->LogFolderName:Ljava/lang/String;

    const-string/jumbo v2, "[LPPTest Configuration]\r\n"

    iput-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->LogConfig:Ljava/lang/String;

    iput v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->GPSRequest_By:I

    const/16 v2, 0x64

    iput v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->GPSRequest_APDR:I

    const/16 v2, 0x2d

    iput v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->GPSRequest_Timer:I

    const/16 v2, 0xf

    iput v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->GPSKeepOn_Timer:I

    new-array v2, v4, [Z

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->LogFlags:[Z

    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->getLogFlags()[Z

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->LogFlags:[Z

    aget-boolean v3, v1, v0

    aput-boolean v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v2, p1, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->GPSRequest_APDR:I

    iput v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->GPSRequest_APDR:I

    iget v2, p1, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->GPSRequest_Timer:I

    iput v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->GPSRequest_Timer:I

    iget v2, p1, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->GPSKeepOn_Timer:I

    iput v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->GPSKeepOn_Timer:I

    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->getConfigStr()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->LogConfig:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->getLogFolderNameStr()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->LogFolderName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->mcontext:Landroid/content/Context;

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(ZZZZIIIILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->flag_log:Z

    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->GPSAlways:Z

    const-string/jumbo v0, "LPPTest"

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->LogFolderName:Ljava/lang/String;

    const-string/jumbo v0, "[LPPTest Configuration]\r\n"

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->LogConfig:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->GPSRequest_By:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->GPSRequest_APDR:I

    const/16 v0, 0x2d

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->GPSRequest_Timer:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->GPSKeepOn_Timer:I

    const/4 v0, 0x4

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->LogFlags:[Z

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->LogFlags:[Z

    aput-boolean p1, v0, v1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->LogFlags:[Z

    aput-boolean p2, v0, v2

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->LogFlags:[Z

    const/4 v1, 0x2

    aput-boolean p3, v0, v1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->LogFlags:[Z

    const/4 v1, 0x3

    aput-boolean p4, v0, v1

    iput p5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->GPSRequest_By:I

    iput p6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->GPSRequest_APDR:I

    iput p7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->GPSRequest_Timer:I

    iput p8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->GPSKeepOn_Timer:I

    iput-object p9, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->LogConfig:Ljava/lang/String;

    iput-object p10, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->LogFolderName:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(ZZZZIZLjava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->flag_log:Z

    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->GPSAlways:Z

    const-string/jumbo v0, "LPPTest"

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->LogFolderName:Ljava/lang/String;

    const-string/jumbo v0, "[LPPTest Configuration]\r\n"

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->LogConfig:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->GPSRequest_By:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->GPSRequest_APDR:I

    const/16 v0, 0x2d

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->GPSRequest_Timer:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->GPSKeepOn_Timer:I

    const/4 v0, 0x4

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->LogFlags:[Z

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->LogFlags:[Z

    aput-boolean p1, v0, v1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->LogFlags:[Z

    aput-boolean p2, v0, v2

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->LogFlags:[Z

    const/4 v1, 0x2

    aput-boolean p3, v0, v1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->LogFlags:[Z

    const/4 v1, 0x3

    aput-boolean p4, v0, v1

    iput-boolean p6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->GPSAlways:Z

    iput-object p7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->LogFolderName:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public getConfigStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->LogConfig:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->mcontext:Landroid/content/Context;

    return-object v0
.end method

.method public getLogCommand()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->flag_log:Z

    return v0
.end method

.method public getLogFlags()[Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->LogFlags:[Z

    return-object v0
.end method

.method public getLogFolderNameStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->LogFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->mcontext:Landroid/content/Context;

    return-void
.end method

.method public setLogParameter(ZZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->flag_log:Z

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->LogFlags:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->LogFlags:[Z

    aput-boolean p2, v0, v2

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->LogFlags:[Z

    const/4 v1, 0x2

    aput-boolean p3, v0, v1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->LogFlags:[Z

    const/4 v1, 0x3

    aput-boolean p4, v0, v1

    iput-object p5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->LogConfig:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->LogFolderName:Ljava/lang/String;

    return-void
.end method
