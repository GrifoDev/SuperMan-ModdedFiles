.class public Lcom/android/server/audio/AudioService$VolumeStreamState;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VolumeStreamState"
.end annotation


# instance fields
.field private final mIndexMap:Landroid/util/SparseIntArray;

.field private final mIndexMax:I

.field private final mIndexMin:I

.field private mIsMuted:Z

.field private mObservedAddress:Ljava/lang/String;

.field private mObservedDevices:I

.field private final mStreamDevicesChanged:Landroid/content/Intent;

.field private final mStreamType:I

.field private mVolumeIndexSettingName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method static synthetic -get0(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/audio/AudioService$VolumeStreamState;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/audio/AudioService$VolumeStreamState;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/audio/AudioService$VolumeStreamState;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/audio/AudioService$VolumeStreamState;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/audio/AudioService$VolumeStreamState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    iput-object p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {}, Lcom/android/server/audio/AudioService;->-get1()[I

    move-result-object v0

    aget v0, v0, p3

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-get0(Lcom/android/server/audio/AudioService;)[I

    move-result-object v0

    aget v0, v0, p3

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    div-int/lit8 v0, v0, 0xa

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    div-int/lit8 v1, v1, 0xa

    invoke-static {p3, v0, v1}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->readSettings()V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChanged:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChanged:Landroid/content/Intent;

    const-string/jumbo v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;ILcom/android/server/audio/AudioService$VolumeStreamState;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService$VolumeStreamState;-><init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V

    return-void
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .locals 10

    const/high16 v9, 0x40000000    # 2.0f

    const-string/jumbo v7, "   Muted: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v7, "   Min: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    add-int/lit8 v7, v7, 0x5

    div-int/lit8 v7, v7, 0xa

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v7, "   Max: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v7, v7, 0x5

    div-int/lit8 v7, v7, 0xa

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v7, "   Current: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-ge v3, v7, :cond_3

    if-lez v3, :cond_0

    const-string/jumbo v7, ", "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-ne v0, v9, :cond_2

    const-string/jumbo v1, "default"

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, " ("

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, ")"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v7, ": "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x5

    div-int/lit8 v4, v7, 0xa

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v7, "   Devices: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v7, v8}, Lcom/android/server/audio/AudioService;->-wrap11(Lcom/android/server/audio/AudioService;I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v6, v5

    :goto_2
    const/4 v7, 0x1

    shl-int v0, v7, v3

    if-eq v0, v9, :cond_5

    and-int v7, v2, v0

    if-eqz v7, :cond_6

    add-int/lit8 v5, v6, 0x1

    if-lez v6, :cond_4

    const-string/jumbo v7, ", "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    invoke-static {v0}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v6, v5

    goto :goto_2

    :cond_5
    const-string/jumbo v7, "   SCO Device : "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    const/16 v8, 0x10

    invoke-static {v7, v8}, Lcom/android/server/audio/AudioService;->-wrap1(Lcom/android/server/audio/AudioService;I)Z

    move-result v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Z)V

    return-void

    :cond_6
    move v5, v6

    goto :goto_3
.end method

.method private getAbsoluteVolumeIndex(I)I
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    double-to-int v0, v0

    div-int/lit8 p1, v0, 0xa

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    int-to-double v0, v0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v0, v2

    double-to-int v0, v0

    div-int/lit8 p1, v0, 0xa

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    int-to-double v0, v0

    const-wide v2, 0x3feb333333333333L    # 0.85

    mul-double/2addr v0, v2

    double-to-int v0, v0

    div-int/lit8 p1, v0, 0xa

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 p1, v0, 0xa

    goto :goto_0
.end method

.method private getValidIndex(I)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get74(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    if-le p1, v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    return v0

    :cond_2
    return p1
.end method


# virtual methods
.method public adjustIndex(IILjava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public applyAllVolumes()V
    .locals 14

    const/high16 v13, 0x40000000    # 2.0f

    const/4 v1, 0x1

    const/4 v12, 0x2

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get51(Lcom/android/server/audio/AudioService;)I

    move-result v0

    if-ne v0, v12, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get53(Lcom/android/server/audio/AudioService;)I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get53(Lcom/android/server/audio/AudioService;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {v1, v10}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v0, v1, :cond_1

    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const-class v11, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v11

    const/4 v8, 0x0

    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-ge v8, v0, :cond_6

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    if-eq v3, v13, :cond_2

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-eqz v0, :cond_3

    const/4 v9, 0x0

    :goto_2
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v0, v9, v3}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get34(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$FineVolumeState;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get34(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$FineVolumeState;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/audio/AudioService$FineVolumeState;->getIndex(I)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get15(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get34(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$FineVolumeState;

    move-result-object v5

    const/16 v1, 0x70

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->-wrap55(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :catch_0
    move-exception v7

    const-string/jumbo v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error in Thread.sleep() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    and-int/lit16 v0, v3, 0x380

    if-eqz v0, :cond_4

    :try_start_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get18(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getAbsoluteVolumeIndex(I)I

    move-result v9

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v0, v0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v9, v0, 0xa

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v9, v0, 0xa

    goto/16 :goto_2

    :cond_6
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-eqz v0, :cond_9

    const/4 v9, 0x0

    :goto_3
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v0, v12, :cond_a

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    :goto_4
    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-wrap9(Lcom/android/server/audio/AudioService;)I

    move-result v0

    and-int/lit16 v0, v0, 0x3f0

    if-eqz v0, :cond_8

    :cond_7
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v9, v1}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    monitor-exit v11

    return-void

    :cond_9
    const/high16 v0, 0x40000000    # 2.0f

    :try_start_3
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v9, v0, 0xa
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :cond_a
    move v0, v10

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v11

    throw v0
.end method

.method public applyDeviceVolume_syncVSS(I)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->isMediaSilentMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    if-eqz v1, :cond_0

    const-string/jumbo v1, "AudioService"

    const-string/jumbo v2, "setStreamVolumeIndex reset mMediaSilentMode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->-set25(Lcom/android/server/audio/AudioService;Z)Z

    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->-set24(Lcom/android/server/audio/AudioService;I)I

    :cond_0
    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v1, v0, p1}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    return-void

    :cond_1
    and-int/lit16 v1, p1, 0x380

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get18(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getAbsoluteVolumeIndex(I)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, v1, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v0, v1, 0xa

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v0, v1, 0xa

    goto :goto_0
.end method

.method public checkFixedVolumeDevices()V
    .locals 6

    const-class v4, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get69(Lcom/android/server/audio/AudioService;)[I

    move-result-object v3

    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v3, v3, v5

    const/4 v5, 0x3

    if-ne v3, v5, :cond_2

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, v3, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    and-int/2addr v3, v0

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, v3, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-virtual {v3, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getIndex(I)I
    .locals 5

    const/4 v4, -0x1

    const-class v2, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    const/4 v3, -0x1

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v1, v3}, Landroid/util/SparseIntArray;->get(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :cond_0
    monitor-exit v2

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getMaxIndex()I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    return v0
.end method

.method public getMinIndex()I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    return v0
.end method

.method public getSettingNameForDevice(I)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getStreamType()I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    return v0
.end method

.method public mute(Z)V
    .locals 10

    const/4 v7, 0x0

    const-class v9, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v9

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-eq p1, v0, :cond_0

    const/4 v7, 0x1

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get15(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v0

    const/16 v1, 0xa

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->-wrap55(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v9

    if-eqz v7, :cond_1

    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v0, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "android.media.EXTRA_STREAM_VOLUME_MUTED"

    invoke-virtual {v8, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, v8}, Lcom/android/server/audio/AudioService;->-wrap52(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public observeDevicesForStream_syncVSS(Z)I
    .locals 7

    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v4}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v1

    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4, v1}, Lcom/android/server/audio/AudioService;->-wrap14(Lcom/android/server/audio/AudioService;I)Ljava/lang/String;

    move-result-object v0

    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDevices:I

    if-ne v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedAddress:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v1

    :cond_0
    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDevices:I

    iput v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDevices:I

    iput-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedAddress:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v4, v5}, Lcom/android/server/audio/AudioService;->-wrap30(Lcom/android/server/audio/AudioService;I)V

    :cond_1
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->-get69(Lcom/android/server/audio/AudioService;)[I

    move-result-object v4

    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v4, v4, v5

    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v4, v5, :cond_2

    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v4, v3, v1}, Lcom/android/server/EventLogTags;->writeStreamDevicesChanged(III)V

    :cond_2
    invoke-static {}, Lcom/android/server/audio/AudioService;->-get2()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->-get43(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setDevice, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->-get43(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/audio/MediaFocusControl;->setDevice(I)V

    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->-wrap0(Lcom/android/server/audio/AudioService;)Landroid/media/session/ISessionManager;

    move-result-object v4

    const/4 v5, -0x1

    invoke-interface {v4, v5, v1}, Landroid/media/session/ISessionManager;->updateSoundKitchenInfo(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChanged:Landroid/content/Intent;

    const-string/jumbo v6, "android.media.EXTRA_PREV_VOLUME_STREAM_DEVICES"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "android.media.EXTRA_VOLUME_STREAM_DEVICES"

    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "android.media.EXTRA_VOLUME_STREAM_MUSIC_ADDRESS"

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/audio/AudioService;->-wrap52(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    return v1

    :catch_0
    move-exception v2

    const-string/jumbo v4, "AudioService"

    const-string/jumbo v5, "Error in updateSoundKitchenInfo."

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public readSettings()V
    .locals 12

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x3

    const/4 v9, -0x1

    const-class v7, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->-get74(Lcom/android/server/audio/AudioService;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    iget v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    const/high16 v9, 0x40000000    # 2.0f

    invoke-virtual {v6, v9, v8}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    return-void

    :cond_0
    const v5, 0x5fffffff

    const/4 v2, 0x0

    :goto_0
    if-eqz v5, :cond_6

    const/4 v6, 0x1

    shl-int v1, v6, v2

    and-int v6, v1, v5

    if-nez v6, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    not-int v6, v1

    and-int/2addr v5, v6

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v4

    if-ne v1, v11, :cond_4

    sget-object v6, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    iget v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v0, v6, v8

    :goto_2
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->-get27(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v8, -0x2

    invoke-static {v6, v4, v0, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v9, :cond_3

    iget v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v6, v10, :cond_5

    const/4 v6, 0x2

    if-ne v1, v6, :cond_5

    const-string/jumbo v6, "AudioService"

    const-string/jumbo v8, "Media speaker volume set as default"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    const/4 v8, 0x3

    aget v3, v6, v8

    :cond_3
    :goto_3
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    mul-int/lit8 v8, v3, 0xa

    invoke-direct {p0, v8}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v8

    invoke-virtual {v6, v1, v8}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_4
    const/4 v0, -0x1

    goto :goto_2

    :cond_5
    :try_start_2
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    const/4 v8, -0x1

    invoke-virtual {v6, v1, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    if-eq v6, v9, :cond_1

    sget-object v6, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    iget v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v3, v6, v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_6
    monitor-exit v7

    return-void
.end method

.method public setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V
    .locals 8

    const-class v6, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v6

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getStreamType()I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {p1, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v5, v2, v4, v7}, Lcom/android/server/audio/AudioService;->-wrap12(Lcom/android/server/audio/AudioService;III)I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v5, v7, v2}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v5, v2, v4, v7}, Lcom/android/server/audio/AudioService;->-wrap12(Lcom/android/server/audio/AudioService;III)I

    move-result v2

    invoke-virtual {p0, v2, v0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    monitor-exit v6

    return-void

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public setAllIndexesToMax()V
    .locals 5

    const-class v2, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v2

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setIndex(IILjava/lang/String;)Z
    .locals 11

    const/4 v6, 0x0

    const/4 v0, 0x0

    const-class v7, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v7

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v3

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result p1

    iget-object v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v8}, Lcom/android/server/audio/AudioService;->-get24(Lcom/android/server/audio/AudioService;)Ljava/lang/Boolean;

    move-result-object v8

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v9, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v10, 0x7

    if-ne v9, v10, :cond_0

    iget-object v9, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v9}, Lcom/android/server/audio/AudioService;->-get24(Lcom/android/server/audio/AudioService;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_0

    iget p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    monitor-exit v8

    iget-object v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v8, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    if-eq v3, p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_4

    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v6, v8}, Lcom/android/server/audio/AudioService;->-wrap10(Lcom/android/server/audio/AudioService;I)I

    move-result v6

    if-ne p2, v6, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    add-int/lit8 v5, v2, -0x1

    :goto_2
    if-ltz v5, :cond_4

    iget v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-eq v5, v6, :cond_1

    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->-get69(Lcom/android/server/audio/AudioService;)[I

    move-result-object v6

    aget v6, v6, v5

    iget v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v6, v8, :cond_1

    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v6, p1, v8, v5}, Lcom/android/server/audio/AudioService;->-wrap12(Lcom/android/server/audio/AudioService;III)I

    move-result v4

    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->-get68(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-virtual {v6, v4, p2, p3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    if-eqz v1, :cond_1

    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->-get68(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v6

    aget-object v6, v6, v5

    iget-object v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v8, v5}, Lcom/android/server/audio/AudioService;->-wrap10(Lcom/android/server/audio/AudioService;I)I

    move-result v8

    invoke-virtual {v6, v4, v8, p3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :catchall_0
    move-exception v6

    monitor-exit v8

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_2
    move v0, v6

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    monitor-exit v7

    return v0
.end method
