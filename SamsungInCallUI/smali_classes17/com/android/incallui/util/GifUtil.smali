.class public Lcom/android/incallui/util/GifUtil;
.super Ljava/lang/Object;
.source "GifUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GIFUtil"


# instance fields
.field private bAnimate:Z

.field private bitmap:Landroid/graphics/Bitmap;

.field private canvas:Landroid/graphics/Canvas;

.field private duration:I

.field private file:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private height:I

.field private iv:Landroid/widget/ImageView;

.field private movie:Landroid/graphics/Movie;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/incallui/util/GifUtil;->movie:Landroid/graphics/Movie;

    .line 16
    iput v1, p0, Lcom/android/incallui/util/GifUtil;->duration:I

    .line 17
    iput-object v0, p0, Lcom/android/incallui/util/GifUtil;->canvas:Landroid/graphics/Canvas;

    .line 18
    iput-object v0, p0, Lcom/android/incallui/util/GifUtil;->bitmap:Landroid/graphics/Bitmap;

    .line 21
    iput-object v0, p0, Lcom/android/incallui/util/GifUtil;->iv:Landroid/widget/ImageView;

    .line 22
    iput-boolean v1, p0, Lcom/android/incallui/util/GifUtil;->bAnimate:Z

    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/util/GifUtil;->handler:Landroid/os/Handler;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/incallui/util/GifUtil;->movie:Landroid/graphics/Movie;

    .line 16
    iput v1, p0, Lcom/android/incallui/util/GifUtil;->duration:I

    .line 17
    iput-object v0, p0, Lcom/android/incallui/util/GifUtil;->canvas:Landroid/graphics/Canvas;

    .line 18
    iput-object v0, p0, Lcom/android/incallui/util/GifUtil;->bitmap:Landroid/graphics/Bitmap;

    .line 21
    iput-object v0, p0, Lcom/android/incallui/util/GifUtil;->iv:Landroid/widget/ImageView;

    .line 22
    iput-boolean v1, p0, Lcom/android/incallui/util/GifUtil;->bAnimate:Z

    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/util/GifUtil;->handler:Landroid/os/Handler;

    .line 28
    iput-object p1, p0, Lcom/android/incallui/util/GifUtil;->iv:Landroid/widget/ImageView;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/util/GifUtil;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/util/GifUtil;

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/android/incallui/util/GifUtil;->bAnimate:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/incallui/util/GifUtil;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/util/GifUtil;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/android/incallui/util/GifUtil;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    iget-object v0, p0, Lcom/android/incallui/util/GifUtil;->movie:Landroid/graphics/Movie;

    if-eqz v0, :cond_0

    .line 50
    iput-object v1, p0, Lcom/android/incallui/util/GifUtil;->movie:Landroid/graphics/Movie;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/util/GifUtil;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/util/GifUtil;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/android/incallui/util/GifUtil;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 53
    iput-object v1, p0, Lcom/android/incallui/util/GifUtil;->bitmap:Landroid/graphics/Bitmap;

    .line 55
    :cond_1
    return-void
.end method

.method public static isAGIF(Ljava/lang/String;)Z
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "isAgif":Z
    invoke-static {p0}, Landroid/graphics/Movie;->decodeFile(Ljava/lang/String;)Landroid/graphics/Movie;

    move-result-object v1

    .line 66
    .local v1, "tempmovie":Landroid/graphics/Movie;
    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {v1}, Landroid/graphics/Movie;->duration()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v0, 0x1

    .line 69
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 70
    const-string v2, "GIFUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAGIF : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return v0

    .line 67
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/util/GifUtil;->bAnimate:Z

    .line 59
    invoke-direct {p0}, Lcom/android/incallui/util/GifUtil;->init()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/util/GifUtil;->iv:Landroid/widget/ImageView;

    .line 61
    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/incallui/util/GifUtil;->file:Ljava/lang/String;

    .line 33
    invoke-direct {p0}, Lcom/android/incallui/util/GifUtil;->init()V

    .line 34
    iget-object v0, p0, Lcom/android/incallui/util/GifUtil;->file:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Movie;->decodeFile(Ljava/lang/String;)Landroid/graphics/Movie;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/util/GifUtil;->movie:Landroid/graphics/Movie;

    .line 35
    const-string v0, "GIFUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Movie : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/util/GifUtil;->movie:Landroid/graphics/Movie;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v0, p0, Lcom/android/incallui/util/GifUtil;->movie:Landroid/graphics/Movie;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/android/incallui/util/GifUtil;->movie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->duration()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/util/GifUtil;->duration:I

    .line 38
    iget-object v0, p0, Lcom/android/incallui/util/GifUtil;->movie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->width()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/util/GifUtil;->width:I

    .line 39
    iget-object v0, p0, Lcom/android/incallui/util/GifUtil;->movie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->height()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/util/GifUtil;->height:I

    .line 40
    const-string v0, "GIFUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duration : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/util/GifUtil;->duration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/util/GifUtil;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/util/GifUtil;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_0
    return-void
.end method

.method public setImageView(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/incallui/util/GifUtil;->iv:Landroid/widget/ImageView;

    .line 46
    return-void
.end method

.method public startAnimate()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/util/GifUtil;->bAnimate:Z

    .line 99
    new-instance v0, Lcom/android/incallui/util/GifUtil$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/util/GifUtil$1;-><init>(Lcom/android/incallui/util/GifUtil;)V

    .line 115
    invoke-virtual {v0}, Lcom/android/incallui/util/GifUtil$1;->start()V

    .line 116
    return-void
.end method

.method public stopAnimate()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/util/GifUtil;->bAnimate:Z

    .line 120
    return-void
.end method

.method public updateView()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 75
    iget-object v4, p0, Lcom/android/incallui/util/GifUtil;->movie:Landroid/graphics/Movie;

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/incallui/util/GifUtil;->duration:I

    if-eqz v4, :cond_1

    .line 76
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 77
    .local v2, "now":J
    iget v4, p0, Lcom/android/incallui/util/GifUtil;->duration:I

    int-to-long v4, v4

    rem-long v4, v2, v4

    long-to-int v1, v4

    .line 78
    .local v1, "realtime":I
    iget-object v4, p0, Lcom/android/incallui/util/GifUtil;->movie:Landroid/graphics/Movie;

    invoke-virtual {v4, v1}, Landroid/graphics/Movie;->setTime(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 79
    iget-object v4, p0, Lcom/android/incallui/util/GifUtil;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/util/GifUtil;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 80
    iget-object v4, p0, Lcom/android/incallui/util/GifUtil;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 82
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 83
    .local v0, "config":Landroid/graphics/Bitmap$Config;
    iget v4, p0, Lcom/android/incallui/util/GifUtil;->width:I

    iget v5, p0, Lcom/android/incallui/util/GifUtil;->height:I

    invoke-static {v4, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/util/GifUtil;->bitmap:Landroid/graphics/Bitmap;

    .line 84
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/android/incallui/util/GifUtil;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lcom/android/incallui/util/GifUtil;->canvas:Landroid/graphics/Canvas;

    .line 85
    iget-object v4, p0, Lcom/android/incallui/util/GifUtil;->canvas:Landroid/graphics/Canvas;

    const/4 v5, 0x0

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 86
    iget-object v4, p0, Lcom/android/incallui/util/GifUtil;->movie:Landroid/graphics/Movie;

    iget-object v5, p0, Lcom/android/incallui/util/GifUtil;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v5, v7, v7}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 87
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/incallui/util/GifUtil;->canvas:Landroid/graphics/Canvas;

    .line 88
    iget-object v4, p0, Lcom/android/incallui/util/GifUtil;->iv:Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    .line 89
    iget-object v4, p0, Lcom/android/incallui/util/GifUtil;->iv:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/incallui/util/GifUtil;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 93
    .end local v0    # "config":Landroid/graphics/Bitmap$Config;
    .end local v1    # "realtime":I
    .end local v2    # "now":J
    :cond_1
    return-void
.end method
