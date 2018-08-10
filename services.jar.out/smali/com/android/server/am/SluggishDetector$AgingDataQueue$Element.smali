.class Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SluggishDetector$AgingDataQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Element"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAfterSlgInfoDataList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mAverageAfterSlgInfoData:Ljava/lang/String;

.field public mAverageBeforeSlgInfoData:Ljava/lang/String;

.field public mAverageLaunchTime:J

.field public mAveragePss:J

.field public mAverageSwapPss:J

.field private mBeforeSlgInfoDataList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLaunchTimeList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPssList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mRunCount:J

.field private mShortComponentName:Ljava/lang/String;

.field private mSwapUsedList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mRunCount:J

    return-wide v0
.end method

.method static synthetic -get1(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mShortComponentName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->toDumpString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;JJJLcom/android/server/am/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;II)V
    .locals 1

    invoke-direct/range {p0 .. p10}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->add(JJJLcom/android/server/am/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mShortComponentName:Ljava/lang/String;

    iput-wide v2, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mRunCount:J

    iput-wide v2, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageLaunchTime:J

    iput-wide v2, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAveragePss:J

    iput-wide v2, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageSwapPss:J

    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageBeforeSlgInfoData:Ljava/lang/String;

    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageAfterSlgInfoData:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Element()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mShortComponentName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->init()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private add(JJJLcom/android/server/am/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;II)V
    .locals 5

    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "add()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->checkStatus()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->init()V

    :cond_1
    iget-wide v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mRunCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mRunCount:J

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mLaunchTimeList:Ljava/util/LinkedList;

    invoke-direct {p0, v0, p1, p2, p9}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->add(Ljava/util/LinkedList;JI)V

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mPssList:Ljava/util/LinkedList;

    invoke-direct {p0, v0, p3, p4, p9}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->add(Ljava/util/LinkedList;JI)V

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mSwapUsedList:Ljava/util/LinkedList;

    invoke-direct {p0, v0, p5, p6, p9}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->add(Ljava/util/LinkedList;JI)V

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mBeforeSlgInfoDataList:Ljava/util/LinkedList;

    invoke-direct {p0, v0, p7, p9}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->add(Ljava/util/LinkedList;Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;I)V

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAfterSlgInfoDataList:Ljava/util/LinkedList;

    invoke-direct {p0, v0, p8, p9}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->add(Ljava/util/LinkedList;Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;I)V

    invoke-direct {p0, p10}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->refresh(I)V

    return-void
.end method

.method private add(Ljava/util/LinkedList;JI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;JI)V"
        }
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    if-lez p4, :cond_0

    :goto_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, p4, :cond_0

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private add(Ljava/util/LinkedList;Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;",
            ">;",
            "Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;",
            "I)V"
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    if-lez p3, :cond_0

    :goto_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, p3, :cond_0

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkStatus()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "checkStatus()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mLaunchTimeList:Ljava/util/LinkedList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mPssList:Ljava/util/LinkedList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mSwapUsedList:Ljava/util/LinkedList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mBeforeSlgInfoDataList:Ljava/util/LinkedList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAfterSlgInfoDataList:Ljava/util/LinkedList;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private init()V
    .locals 2

    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mLaunchTimeList:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mPssList:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mSwapUsedList:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mBeforeSlgInfoDataList:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAfterSlgInfoDataList:Ljava/util/LinkedList;

    return-void
.end method

.method private refresh(Ljava/util/LinkedList;I)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;I)J"
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-lt v5, p2, :cond_1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v5

    int-to-long v6, v5

    div-long/2addr v0, v6

    :cond_1
    return-wide v0
.end method

.method private refresh(I)V
    .locals 12

    const-wide/16 v10, 0x400

    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Z

    move-result v8

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "refresh()"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->checkStatus()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->init()V

    :cond_1
    iget-object v8, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mLaunchTimeList:Ljava/util/LinkedList;

    invoke-direct {p0, v8, p1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->refresh(Ljava/util/LinkedList;I)J

    move-result-wide v2

    iget-object v8, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mPssList:Ljava/util/LinkedList;

    invoke-direct {p0, v8, p1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->refresh(Ljava/util/LinkedList;I)J

    move-result-wide v4

    iget-object v8, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mSwapUsedList:Ljava/util/LinkedList;

    invoke-direct {p0, v8, p1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->refresh(Ljava/util/LinkedList;I)J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mBeforeSlgInfoDataList:Ljava/util/LinkedList;

    invoke-direct {p0, v8, p1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->refreshForSlgInfoData(Ljava/util/LinkedList;I)Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    move-result-object v1

    iget-object v8, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAfterSlgInfoDataList:Ljava/util/LinkedList;

    invoke-direct {p0, v8, p1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->refreshForSlgInfoData(Ljava/util/LinkedList;I)Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    move-result-object v0

    iput-wide v2, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageLaunchTime:J

    div-long v8, v4, v10

    iput-wide v8, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAveragePss:J

    div-long v8, v6, v10

    iput-wide v8, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageSwapPss:J

    invoke-virtual {v1}, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageBeforeSlgInfoData:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageAfterSlgInfoData:Ljava/lang/String;

    return-void
.end method

.method private refreshForSlgInfoData(Ljava/util/LinkedList;I)Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;",
            ">;I)",
            "Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;"
        }
    .end annotation

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v3

    move/from16 v0, p2

    if-lt v3, v0, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    iget-object v3, v2, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->mMeminfo:[J

    const/4 v13, 0x0

    aget-wide v14, v3, v13

    add-long/2addr v4, v14

    iget-object v3, v2, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->mMeminfo:[J

    const/4 v13, 0x1

    aget-wide v14, v3, v13

    add-long/2addr v6, v14

    iget-object v3, v2, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->mMeminfo:[J

    const/4 v13, 0x2

    aget-wide v14, v3, v13

    add-long/2addr v8, v14

    iget-object v3, v2, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->mDha:[I

    const/4 v13, 0x0

    aget v3, v3, v13

    add-int/2addr v10, v3

    iget-object v3, v2, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->mDha:[I

    const/4 v13, 0x1

    aget v3, v3, v13

    add-int/2addr v11, v3

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v3

    int-to-long v14, v3

    div-long/2addr v4, v14

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v3

    int-to-long v14, v3

    div-long/2addr v6, v14

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v3

    int-to-long v14, v3

    div-long/2addr v8, v14

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v3

    div-int/2addr v10, v3

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v3

    div-int/2addr v11, v3

    :cond_1
    new-instance v3, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    invoke-direct/range {v3 .. v11}, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;-><init>(JJJII)V

    return-object v3
.end method

.method private toDumpString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "toDumpString()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mShortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mRunCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageLaunchTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAveragePss:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageSwapPss:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageBeforeSlgInfoData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageAfterSlgInfoData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
