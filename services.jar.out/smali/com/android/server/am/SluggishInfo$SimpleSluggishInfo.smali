.class public Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;
.super Ljava/lang/Object;
.source "SluggishInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SluggishInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleSluggishInfo"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mDha:[I

.field mMeminfo:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/am/SluggishInfo;->-get1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->mMeminfo:[J

    iput-object v0, p0, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->mDha:[I

    invoke-static {}, Lcom/android/server/am/SluggishInfo;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "SimpleSluggishInfo()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/am/SluggishInfo;->-wrap1()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->mMeminfo:[J

    invoke-static {}, Lcom/android/server/am/SluggishInfo;->-wrap0()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->mDha:[I

    return-void
.end method

.method constructor <init>(JJJII)V
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->mMeminfo:[J

    iput-object v0, p0, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->mDha:[I

    invoke-static {}, Lcom/android/server/am/SluggishInfo;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "SimpleSluggishInfo()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [J

    aput-wide p1, v0, v2

    aput-wide p3, v0, v3

    aput-wide p5, v0, v4

    iput-object v0, p0, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->mMeminfo:[J

    new-array v0, v4, [I

    aput p7, v0, v2

    aput p8, v0, v3

    iput-object v0, p0, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->mDha:[I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 12

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/server/am/SluggishInfo;->-get0()Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "toString()"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->mMeminfo:[J

    if-eqz v6, :cond_1

    iget-object v7, p0, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->mMeminfo:[J

    array-length v8, v7

    move v6, v5

    :goto_0
    if-ge v6, v8, :cond_1

    aget-wide v2, v7, v6

    const-string/jumbo v9, "/"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v10, 0x400

    div-long v10, v2, v10

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->mDha:[I

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->mDha:[I

    array-length v7, v6

    :goto_1
    if-ge v5, v7, :cond_2

    aget v0, v6, v5

    const-string/jumbo v8, "/"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "/"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v4, "null"

    :cond_3
    return-object v4
.end method
