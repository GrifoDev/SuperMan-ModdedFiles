.class final Lcom/android/server/tv/TvInputManagerService$TvInputState;
.super Ljava/lang/Object;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TvInputState"
.end annotation


# instance fields
.field private info:Landroid/media/tv/TvInputInfo;

.field private state:I


# direct methods
.method static synthetic -get0(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/tv/TvInputManagerService$TvInputState;)I
    .locals 1

    iget v0, p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->state:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/tv/TvInputManagerService$TvInputState;Landroid/media/tv/TvInputInfo;)Landroid/media/tv/TvInputInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/tv/TvInputManagerService$TvInputState;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->state:I

    return p1
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->state:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/TvInputManagerService$TvInputState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$TvInputState;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
