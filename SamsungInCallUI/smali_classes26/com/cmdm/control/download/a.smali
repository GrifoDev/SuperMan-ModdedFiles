.class public Lcom/cmdm/control/download/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmdm/control/download/a$a;,
        Lcom/cmdm/control/download/a$b;,
        Lcom/cmdm/control/download/a$c;,
        Lcom/cmdm/control/download/a$d;
    }
.end annotation


# static fields
.field public static aV:J = 0x0L

.field public static final aW:I = 0x3c

.field public static aX:J

.field private static aY:J

.field private static aZ:J

.field private static ba:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static final bb:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final bc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final bd:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static be:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static bq:I


# instance fields
.field private bf:Z

.field private bg:Landroid/os/Handler;

.field private bh:Landroid/os/Handler;

.field private bi:I

.field private bj:Lcom/cmdm/control/download/Interface/c;

.field private bk:Lcom/cmdm/control/download/Interface/b;

.field private bl:Lcom/cmdm/control/download/Interface/d;

.field public bm:I

.field public bn:I

.field public bo:Z

.field public bp:Z

.field private lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 51
    const-wide/32 v0, 0x800000

    sput-wide v0, Lcom/cmdm/control/download/a;->aV:J

    .line 59
    sput-wide v2, Lcom/cmdm/control/download/a;->aX:J

    .line 61
    sput-wide v2, Lcom/cmdm/control/download/a;->aY:J

    .line 63
    const-wide/32 v0, 0x2dc6c0

    sput-wide v0, Lcom/cmdm/control/download/a;->aZ:J

    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/cmdm/control/download/a;->ba:Ljava/util/LinkedHashMap;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    .line 73
    const/16 v1, 0xa

    .line 72
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/cmdm/control/download/a;->bb:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cmdm/control/download/a;->bc:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cmdm/control/download/a;->bd:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 84
    sput-object v0, Lcom/cmdm/control/download/a;->be:Ljava/util/Map;

    .line 170
    sget-object v0, Lcom/cmdm/control/download/a;->ba:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x14

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    sput-object v0, Lcom/cmdm/control/download/a;->ba:Ljava/util/LinkedHashMap;

    .line 173
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x6

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/cmdm/control/download/a;->a(J)V

    .line 815
    const/4 v0, 0x0

    sput v0, Lcom/cmdm/control/download/a;->bq:I

    .line 48
    return-void
.end method

.method public constructor <init>(ILcom/cmdm/control/download/Interface/c;Lcom/cmdm/control/download/Interface/d;)V
    .locals 5
    .param p1, "hashPostion"    # I
    .param p2, "mGetImageComplete"    # Lcom/cmdm/control/download/Interface/c;
    .param p3, "mOnGetImageSuccess"    # Lcom/cmdm/control/download/Interface/d;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-boolean v2, p0, Lcom/cmdm/control/download/a;->bf:Z

    .line 90
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/cmdm/control/download/a$1;

    invoke-direct {v1, p0}, Lcom/cmdm/control/download/a$1;-><init>(Lcom/cmdm/control/download/a;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/cmdm/control/download/a;->bg:Landroid/os/Handler;

    .line 110
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/cmdm/control/download/a$2;

    invoke-direct {v1, p0}, Lcom/cmdm/control/download/a$2;-><init>(Lcom/cmdm/control/download/a;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/cmdm/control/download/a;->bh:Landroid/os/Handler;

    .line 157
    const/4 v0, -0x1

    iput v0, p0, Lcom/cmdm/control/download/a;->bi:I

    .line 159
    iput-object v4, p0, Lcom/cmdm/control/download/a;->bk:Lcom/cmdm/control/download/Interface/b;

    .line 160
    iput-object v4, p0, Lcom/cmdm/control/download/a;->bl:Lcom/cmdm/control/download/Interface/d;

    .line 162
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/download/a;->lock:Ljava/lang/Object;

    .line 324
    iput v2, p0, Lcom/cmdm/control/download/a;->bm:I

    .line 327
    iput v2, p0, Lcom/cmdm/control/download/a;->bn:I

    .line 330
    iput-boolean v3, p0, Lcom/cmdm/control/download/a;->bo:Z

    .line 332
    iput-boolean v3, p0, Lcom/cmdm/control/download/a;->bp:Z

    .line 189
    iput p1, p0, Lcom/cmdm/control/download/a;->bi:I

    .line 190
    iput-object p2, p0, Lcom/cmdm/control/download/a;->bj:Lcom/cmdm/control/download/Interface/c;

    .line 191
    iput-object p3, p0, Lcom/cmdm/control/download/a;->bl:Lcom/cmdm/control/download/Interface/d;

    .line 192
    return-void
.end method

.method public constructor <init>(Lcom/cmdm/control/download/Interface/b;Lcom/cmdm/control/download/Interface/d;)V
    .locals 5
    .param p1, "MIGetImage"    # Lcom/cmdm/control/download/Interface/b;
    .param p2, "mOnGetImageSuccess"    # Lcom/cmdm/control/download/Interface/d;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-boolean v2, p0, Lcom/cmdm/control/download/a;->bf:Z

    .line 90
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/cmdm/control/download/a$1;

    invoke-direct {v1, p0}, Lcom/cmdm/control/download/a$1;-><init>(Lcom/cmdm/control/download/a;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/cmdm/control/download/a;->bg:Landroid/os/Handler;

    .line 110
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/cmdm/control/download/a$2;

    invoke-direct {v1, p0}, Lcom/cmdm/control/download/a$2;-><init>(Lcom/cmdm/control/download/a;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/cmdm/control/download/a;->bh:Landroid/os/Handler;

    .line 157
    const/4 v0, -0x1

    iput v0, p0, Lcom/cmdm/control/download/a;->bi:I

    .line 159
    iput-object v4, p0, Lcom/cmdm/control/download/a;->bk:Lcom/cmdm/control/download/Interface/b;

    .line 160
    iput-object v4, p0, Lcom/cmdm/control/download/a;->bl:Lcom/cmdm/control/download/Interface/d;

    .line 162
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/download/a;->lock:Ljava/lang/Object;

    .line 324
    iput v2, p0, Lcom/cmdm/control/download/a;->bm:I

    .line 327
    iput v2, p0, Lcom/cmdm/control/download/a;->bn:I

    .line 330
    iput-boolean v3, p0, Lcom/cmdm/control/download/a;->bo:Z

    .line 332
    iput-boolean v3, p0, Lcom/cmdm/control/download/a;->bp:Z

    .line 196
    iput-object p1, p0, Lcom/cmdm/control/download/a;->bk:Lcom/cmdm/control/download/Interface/b;

    .line 197
    iput-object p2, p0, Lcom/cmdm/control/download/a;->bl:Lcom/cmdm/control/download/Interface/d;

    .line 198
    return-void
.end method

.method public constructor <init>(Lcom/cmdm/control/download/Interface/d;)V
    .locals 5
    .param p1, "mOnGetImageSuccess"    # Lcom/cmdm/control/download/Interface/d;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-boolean v2, p0, Lcom/cmdm/control/download/a;->bf:Z

    .line 90
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/cmdm/control/download/a$1;

    invoke-direct {v1, p0}, Lcom/cmdm/control/download/a$1;-><init>(Lcom/cmdm/control/download/a;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/cmdm/control/download/a;->bg:Landroid/os/Handler;

    .line 110
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/cmdm/control/download/a$2;

    invoke-direct {v1, p0}, Lcom/cmdm/control/download/a$2;-><init>(Lcom/cmdm/control/download/a;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/cmdm/control/download/a;->bh:Landroid/os/Handler;

    .line 157
    const/4 v0, -0x1

    iput v0, p0, Lcom/cmdm/control/download/a;->bi:I

    .line 159
    iput-object v4, p0, Lcom/cmdm/control/download/a;->bk:Lcom/cmdm/control/download/Interface/b;

    .line 160
    iput-object v4, p0, Lcom/cmdm/control/download/a;->bl:Lcom/cmdm/control/download/Interface/d;

    .line 162
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/download/a;->lock:Ljava/lang/Object;

    .line 324
    iput v2, p0, Lcom/cmdm/control/download/a;->bm:I

    .line 327
    iput v2, p0, Lcom/cmdm/control/download/a;->bn:I

    .line 330
    iput-boolean v3, p0, Lcom/cmdm/control/download/a;->bo:Z

    .line 332
    iput-boolean v3, p0, Lcom/cmdm/control/download/a;->bp:Z

    .line 183
    iput-object p1, p0, Lcom/cmdm/control/download/a;->bl:Lcom/cmdm/control/download/Interface/d;

    .line 184
    return-void
.end method

.method private Q(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "localPath"    # Ljava/lang/String;

    .prologue
    .line 646
    invoke-direct {p0, p1, p2}, Lcom/cmdm/control/download/a;->R(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 650
    .local v0, "drawable":Landroid/graphics/Bitmap;
    new-instance v2, Lcom/cmdm/control/download/a$d;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/cmdm/control/download/a$d;-><init>(Lcom/cmdm/control/download/a;Lcom/cmdm/control/download/a$d;)V

    .line 651
    .local v2, "pm":Lcom/cmdm/control/download/a$d;
    iput-object v0, v2, Lcom/cmdm/control/download/a$d;->bs:Landroid/graphics/Bitmap;

    .line 652
    iput-object p1, v2, Lcom/cmdm/control/download/a$d;->url:Ljava/lang/String;

    .line 653
    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/cmdm/control/download/a$d;->by:Ljava/lang/Boolean;

    .line 654
    iget-object v3, p0, Lcom/cmdm/control/download/a;->bg:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 655
    .local v1, "msg":Landroid/os/Message;
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 656
    iget-object v3, p0, Lcom/cmdm/control/download/a;->bg:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 657
    return-void

    .line 653
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private R(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "localPath"    # Ljava/lang/String;

    .prologue
    .line 700
    invoke-static {p1}, Lcom/cmdm/control/download/a;->ar(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 701
    .local v0, "d":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 702
    invoke-direct {p0, p2}, Lcom/cmdm/control/download/a;->as(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 703
    if-eqz v0, :cond_1

    .line 704
    invoke-static {p1, v0}, Lcom/cmdm/control/download/a;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 718
    :cond_0
    :goto_0
    return-object v0

    .line 706
    :cond_1
    const/4 v1, 0x0

    sput v1, Lcom/cmdm/control/download/a;->bq:I

    .line 707
    invoke-static {p1}, Lcom/cmdm/control/download/a;->at(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 708
    if-eqz v0, :cond_0

    .line 709
    invoke-static {p1, v0}, Lcom/cmdm/control/download/a;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 710
    sget-object v2, Lcom/cmdm/control/download/a;->bc:Ljava/util/ArrayList;

    monitor-enter v2

    .line 711
    :try_start_0
    iget-object v1, p0, Lcom/cmdm/control/download/a;->bl:Lcom/cmdm/control/download/Interface/d;

    if-eqz v1, :cond_2

    .line 712
    iget-object v1, p0, Lcom/cmdm/control/download/a;->bl:Lcom/cmdm/control/download/Interface/d;

    invoke-interface {v1, p1, v0}, Lcom/cmdm/control/download/Interface/d;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 710
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static a(Landroid/graphics/Bitmap;)J
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 150
    if-nez p0, :cond_0

    .line 151
    const-wide/16 v0, 0x0

    .line 153
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-long v0, v0

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "target"    # Landroid/graphics/Bitmap;
    .param p1, "TARGET_WIDTH"    # I
    .param p2, "TARGET_HEIGHT"    # I

    .prologue
    const/4 v1, 0x0

    .line 731
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 732
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 744
    .end local p0    # "target":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 735
    .restart local p0    # "target":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 736
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 737
    .local v4, "height":I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 738
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, p1

    int-to-float v2, v3

    div-float v9, v0, v2

    .line 739
    .local v9, "scaleWidth":F
    int-to-float v0, p2

    int-to-float v2, v4

    div-float v8, v0, v2

    .line 740
    .local v8, "scaleHeight":F
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 742
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    .line 741
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .local v7, "result":Landroid/graphics/Bitmap;
    move-object p0, v7

    .line 744
    goto :goto_0
.end method

.method public static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 804
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 805
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method static synthetic a(Lcom/cmdm/control/download/a;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 699
    invoke-direct {p0, p1, p2}, Lcom/cmdm/control/download/a;->R(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static a(J)V
    .locals 4
    .param p0, "runtimeSize"    # J

    .prologue
    .line 178
    sput-wide p0, Lcom/cmdm/control/download/a;->aV:J

    .line 179
    const-wide/16 v0, 0x1

    mul-long/2addr v0, p0

    const-wide/16 v2, 0x3

    div-long/2addr v0, v2

    sput-wide v0, Lcom/cmdm/control/download/a;->aX:J

    .line 180
    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "drawable"    # Landroid/graphics/Bitmap;

    .prologue
    .line 877
    const-class v1, Lcom/cmdm/control/download/a;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lcom/cmdm/control/download/a;->a(Landroid/graphics/Bitmap;)J

    move-result-wide v2

    sget-wide v4, Lcom/cmdm/control/download/a;->aZ:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    .line 880
    sget-object v0, Lcom/cmdm/control/download/a;->ba:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    sget-wide v2, Lcom/cmdm/control/download/a;->aY:J

    invoke-static {p1}, Lcom/cmdm/control/download/a;->a(Landroid/graphics/Bitmap;)J

    move-result-wide v4

    add-long/2addr v2, v4

    sput-wide v2, Lcom/cmdm/control/download/a;->aY:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 886
    :cond_0
    monitor-exit v1

    return-void

    .line 877
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/cmdm/control/download/a;)Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/cmdm/control/download/a;->bf:Z

    return v0
.end method

.method private static declared-synchronized aX()V
    .locals 14

    .prologue
    .line 207
    const-class v8, Lcom/cmdm/control/download/a;

    monitor-enter v8

    :try_start_0
    sget-object v5, Lcom/cmdm/control/download/a;->ba:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    .line 208
    .local v3, "length":I
    sget-wide v10, Lcom/cmdm/control/download/a;->aY:J

    sget-wide v12, Lcom/cmdm/control/download/a;->aV:J

    cmp-long v5, v10, v12

    if-gtz v5, :cond_0

    .line 209
    const/16 v5, 0x3c

    if-le v3, v5, :cond_6

    .line 211
    :cond_0
    const/4 v4, 0x0

    .line 212
    .local v4, "removeItem":I
    const-wide/16 v6, 0x0

    .line 213
    .local v6, "size":J
    sget-object v5, Lcom/cmdm/control/download/a;->ba:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 214
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 215
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_7

    .line 251
    :cond_2
    sget-object v5, Lcom/cmdm/control/download/a;->ba:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->size()I

    move-result v5

    if-eq v5, v3, :cond_4

    .line 252
    const/16 v5, 0x1e

    if-le v4, v5, :cond_3

    sget-object v5, Lcom/cmdm/control/download/a;->ba:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->size()I

    move-result v5

    sub-int v5, v3, v5

    const/16 v9, 0x14

    if-lt v5, v9, :cond_4

    .line 253
    :cond_3
    const/16 v5, 0x5a

    if-le v3, v5, :cond_5

    .line 254
    :cond_4
    invoke-static {}, Lcom/cmdm/control/download/a;->aY()V

    .line 259
    :cond_5
    sget-object v5, Lcom/cmdm/control/download/a;->ba:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 260
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 261
    .local v2, "iter2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_9

    .line 265
    sput-wide v6, Lcom/cmdm/control/download/a;->aY:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;>;"
    .end local v2    # "iter2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;>;"
    .end local v4    # "removeItem":I
    .end local v6    # "size":J
    :cond_6
    :goto_2
    monitor-exit v8

    return-void

    .line 216
    .restart local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;>;"
    .restart local v4    # "removeItem":I
    .restart local v6    # "size":J
    :cond_7
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 218
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    sget-object v5, Lcom/cmdm/control/download/a;->bd:Ljava/util/ArrayList;

    if-eqz v5, :cond_8

    sget-object v5, Lcom/cmdm/control/download/a;->bd:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_8

    .line 219
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v9, Lcom/cmdm/control/download/a;->bd:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 223
    :cond_8
    sget-wide v10, Lcom/cmdm/control/download/a;->aY:J

    sget-wide v12, Lcom/cmdm/control/download/a;->aX:J

    cmp-long v5, v10, v12

    if-lez v5, :cond_2

    .line 224
    sub-int v5, v3, v4

    const/16 v9, 0xc

    if-le v5, v9, :cond_2

    .line 225
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 226
    add-int/lit8 v4, v4, 0x1

    .line 227
    sget-wide v10, Lcom/cmdm/control/download/a;->aY:J

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-static {v5}, Lcom/cmdm/control/download/a;->a(Landroid/graphics/Bitmap;)J

    move-result-wide v12

    sub-long/2addr v10, v12

    sput-wide v10, Lcom/cmdm/control/download/a;->aY:J

    .line 228
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 229
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 230
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .line 267
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;>;"
    .end local v4    # "removeItem":I
    .end local v6    # "size":J
    :catch_0
    move-exception v5

    goto :goto_2

    .line 262
    .restart local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;>;"
    .restart local v2    # "iter2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;>;"
    .restart local v4    # "removeItem":I
    .restart local v6    # "size":J
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 263
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-static {v5}, Lcom/cmdm/control/download/a;->a(Landroid/graphics/Bitmap;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v10

    add-long/2addr v6, v10

    goto/16 :goto_1

    .line 207
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;>;"
    .end local v2    # "iter2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;>;"
    .end local v4    # "removeItem":I
    .end local v6    # "size":J
    :catchall_0
    move-exception v5

    monitor-exit v8

    throw v5
.end method

.method public static aY()V
    .locals 5

    .prologue
    .line 273
    sget-object v2, Lcom/cmdm/control/download/a;->ba:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 274
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 287
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/cmdm/control/download/a;->aY:J

    .line 288
    sget-object v2, Lcom/cmdm/control/download/a;->ba:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    .line 290
    sget-object v2, Lcom/cmdm/control/download/a;->bb:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 291
    sget-object v2, Lcom/cmdm/control/download/a;->be:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 321
    return-void

    .line 275
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 276
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 278
    sget-object v2, Lcom/cmdm/control/download/a;->bd:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/cmdm/control/download/a;->bd:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 279
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/cmdm/control/download/a;->bd:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    sget-object v2, Lcom/cmdm/control/download/a;->bd:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/cmdm/control/download/a;->bd:Ljava/util/ArrayList;

    .line 280
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 281
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public static aq(Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 418
    sget-object v0, Lcom/cmdm/control/download/a;->ba:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static ar(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 751
    sget-object v0, Lcom/cmdm/control/download/a;->ba:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    sget-object v0, Lcom/cmdm/control/download/a;->ba:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 754
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private as(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "localPath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 764
    if-nez p1, :cond_1

    .line 794
    :cond_0
    :goto_0
    return-object v1

    .line 767
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 768
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 769
    const/4 v4, 0x0

    .line 771
    .local v4, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 772
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .local v5, "stream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 773
    .local v0, "bfOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x0

    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 774
    const/4 v6, 0x1

    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 775
    const/16 v6, 0x3000

    new-array v6, v6, [B

    iput-object v6, v0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 776
    invoke-virtual {v5}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    .line 777
    const/4 v7, 0x0

    .line 776
    invoke-static {v6, v7, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 787
    .local v1, "d":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_0

    .line 788
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 789
    :catch_0
    move-exception v2

    .line 790
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 779
    .end local v0    # "bfOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v1    # "d":Landroid/graphics/Bitmap;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    .line 780
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 787
    if-eqz v4, :cond_0

    .line 788
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 789
    :catch_2
    move-exception v2

    .line 790
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 781
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 782
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 787
    if-eqz v4, :cond_0

    .line 788
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 789
    :catch_4
    move-exception v2

    .line 790
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 783
    .end local v2    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 784
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_7
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 787
    if-eqz v4, :cond_0

    .line 788
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_0

    .line 789
    :catch_6
    move-exception v2

    .line 790
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 785
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 787
    :goto_4
    if-eqz v4, :cond_2

    .line 788
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 792
    :cond_2
    :goto_5
    throw v6

    .line 789
    :catch_7
    move-exception v2

    .line 790
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 785
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 783
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :catch_8
    move-exception v2

    move-object v4, v5

    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 781
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :catch_9
    move-exception v2

    move-object v4, v5

    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 779
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :catch_a
    move-exception v2

    move-object v4, v5

    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static at(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 818
    if-nez p0, :cond_1

    move-object v2, v8

    .line 872
    :cond_0
    :goto_0
    return-object v2

    .line 821
    :cond_1
    const/4 v1, 0x0

    .line 822
    .local v1, "con":Ljava/net/HttpURLConnection;
    const/4 v6, 0x0

    .line 831
    .local v6, "stream":Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 832
    .local v4, "m":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 833
    if-eqz v1, :cond_3

    .line 834
    const/16 v7, 0x7530

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 835
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v9, 0x12d

    if-eq v7, v9, :cond_2

    .line 836
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v9, 0x12e

    if-ne v7, v9, :cond_4

    .line 837
    :cond_2
    const-string v7, "Location"

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 838
    .local v5, "redirectUrl":Ljava/lang/String;
    if-eqz v5, :cond_3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 839
    sget v7, Lcom/cmdm/control/download/a;->bq:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/cmdm/control/download/a;->bq:I

    .line 840
    sget v7, Lcom/cmdm/control/download/a;->bq:I

    const/4 v9, 0x3

    if-gt v7, v9, :cond_3

    .line 841
    invoke-static {v5}, Lcom/cmdm/control/download/a;->at(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .end local v4    # "m":Ljava/net/URL;
    .end local v5    # "redirectUrl":Ljava/lang/String;
    :cond_3
    :goto_1
    move-object v2, v8

    .line 872
    goto :goto_0

    .line 843
    .restart local v4    # "m":Ljava/net/URL;
    :cond_4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v9, 0xc8

    if-eq v7, v9, :cond_5

    .line 844
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v9, 0xce

    if-ne v7, v9, :cond_3

    .line 845
    :cond_5
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 846
    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 847
    .local v2, "d":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_0

    .line 848
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 853
    .end local v2    # "d":Landroid/graphics/Bitmap;
    .end local v4    # "m":Ljava/net/URL;
    :catch_0
    move-exception v3

    .line 854
    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 855
    sget-object v7, Lcom/cmdm/control/download/a;->bc:Ljava/util/ArrayList;

    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 856
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 857
    .local v3, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v3}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 858
    sget-object v7, Lcom/cmdm/control/download/a;->bc:Ljava/util/ArrayList;

    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 859
    .end local v3    # "e":Ljava/net/MalformedURLException;
    :catch_2
    move-exception v3

    .line 860
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_1

    .line 861
    .end local v3    # "e":Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v3

    .line 862
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic b(Lcom/cmdm/control/download/a;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/cmdm/control/download/a;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/cmdm/control/download/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 645
    invoke-direct {p0, p1, p2}, Lcom/cmdm/control/download/a;->Q(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic bb()Ljava/util/LinkedHashMap;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/cmdm/control/download/a;->ba:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic bc()V
    .locals 0

    .prologue
    .line 205
    invoke-static {}, Lcom/cmdm/control/download/a;->aX()V

    return-void
.end method

.method static synthetic c(Lcom/cmdm/control/download/a;)Lcom/cmdm/control/download/Interface/d;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/cmdm/control/download/a;->bl:Lcom/cmdm/control/download/Interface/d;

    return-object v0
.end method

.method static synthetic d(Lcom/cmdm/control/download/a;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/cmdm/control/download/a;->bh:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, -0x1

    .line 573
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/cmdm/control/download/a;->a(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;II)V

    .line 574
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;II)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 593
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 594
    :cond_0
    sget-object v1, Lcom/cmdm/control/download/a;->bc:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 595
    :cond_1
    iget-boolean v1, p0, Lcom/cmdm/control/download/a;->bf:Z

    if-eqz v1, :cond_2

    .line 597
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 601
    :goto_0
    const-string v1, "AsyncImageLoadPool"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u670d\u52a1\u5668\u7aef\u4e0d\u5b58\u5728url==="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    :goto_1
    return-void

    .line 599
    :cond_2
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 606
    :cond_3
    :try_start_0
    new-instance v0, Lcom/cmdm/control/download/a$c;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/cmdm/control/download/a$c;-><init>(Lcom/cmdm/control/download/a;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;II)V

    .line 609
    .local v0, "mPhotoToLoad":Lcom/cmdm/control/download/a$c;
    sget-object v1, Lcom/cmdm/control/download/a;->be:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    sget-object v1, Lcom/cmdm/control/download/a;->ba:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .line 611
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 612
    iget-boolean v1, p0, Lcom/cmdm/control/download/a;->bf:Z

    if-eqz v1, :cond_4

    .line 614
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 618
    :goto_2
    const/4 p3, 0x0

    goto :goto_1

    .line 616
    :cond_4
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 632
    .end local v0    # "mPhotoToLoad":Lcom/cmdm/control/download/a$c;
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v8

    .line 633
    .local v8, "e":Ljava/lang/Exception;
    iget-boolean v1, p0, Lcom/cmdm/control/download/a;->bf:Z

    if-eqz v1, :cond_7

    .line 635
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 622
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v0    # "mPhotoToLoad":Lcom/cmdm/control/download/a$c;
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    :cond_5
    :try_start_1
    new-instance v1, Lcom/cmdm/control/download/a$b;

    invoke-direct {v1, p0, v0}, Lcom/cmdm/control/download/a$b;-><init>(Lcom/cmdm/control/download/a;Lcom/cmdm/control/download/a$c;)V

    invoke-static {v1}, Lcom/cmdm/control/threadfactory/c;->d(Ljava/lang/Runnable;)V

    .line 625
    iget-boolean v1, p0, Lcom/cmdm/control/download/a;->bf:Z

    if-eqz v1, :cond_6

    .line 627
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 629
    :cond_6
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 637
    .end local v0    # "mPhotoToLoad":Lcom/cmdm/control/download/a$c;
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v8    # "e":Ljava/lang/Exception;
    :cond_7
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method protected a(ZLjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "result"    # Z
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "drawable"    # Landroid/graphics/Bitmap;

    .prologue
    .line 431
    if-eqz p1, :cond_2

    .line 432
    :try_start_0
    iget-object v1, p0, Lcom/cmdm/control/download/a;->bj:Lcom/cmdm/control/download/Interface/c;

    if-eqz v1, :cond_0

    .line 433
    iget-object v1, p0, Lcom/cmdm/control/download/a;->bj:Lcom/cmdm/control/download/Interface/c;

    iget v2, p0, Lcom/cmdm/control/download/a;->bi:I

    invoke-interface {v1, v2, p3}, Lcom/cmdm/control/download/Interface/c;->a(ILandroid/graphics/Bitmap;)V

    .line 435
    :cond_0
    iget-object v1, p0, Lcom/cmdm/control/download/a;->bk:Lcom/cmdm/control/download/Interface/b;

    if-eqz v1, :cond_1

    .line 436
    iget-object v1, p0, Lcom/cmdm/control/download/a;->bk:Lcom/cmdm/control/download/Interface/b;

    invoke-interface {v1, p3}, Lcom/cmdm/control/download/Interface/b;->b(Landroid/graphics/Bitmap;)V

    .line 448
    :cond_1
    :goto_0
    return-void

    .line 439
    :cond_2
    iget-object v1, p0, Lcom/cmdm/control/download/a;->bj:Lcom/cmdm/control/download/Interface/c;

    if-eqz v1, :cond_3

    .line 440
    iget-object v1, p0, Lcom/cmdm/control/download/a;->bj:Lcom/cmdm/control/download/Interface/c;

    .line 441
    iget v2, p0, Lcom/cmdm/control/download/a;->bi:I

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/cmdm/control/download/Interface/c;->a(ILandroid/graphics/Bitmap;)V

    .line 442
    :cond_3
    iget-object v1, p0, Lcom/cmdm/control/download/a;->bk:Lcom/cmdm/control/download/Interface/b;

    if-eqz v1, :cond_1

    .line 443
    iget-object v1, p0, Lcom/cmdm/control/download/a;->bk:Lcom/cmdm/control/download/Interface/b;

    invoke-interface {v1}, Lcom/cmdm/control/download/Interface/b;->bd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method a(Lcom/cmdm/control/download/a$c;)Z
    .locals 3
    .param p1, "photoToLoad"    # Lcom/cmdm/control/download/a$c;

    .prologue
    .line 687
    sget-object v1, Lcom/cmdm/control/download/a;->be:Ljava/util/Map;

    iget-object v2, p1, Lcom/cmdm/control/download/a$c;->bu:Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 688
    .local v0, "tag":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/cmdm/control/download/a$c;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 689
    :cond_0
    const/4 v1, 0x1

    .line 690
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public aZ()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 346
    iput-boolean v0, p0, Lcom/cmdm/control/download/a;->bo:Z

    .line 347
    iput-boolean v0, p0, Lcom/cmdm/control/download/a;->bp:Z

    .line 348
    return-void
.end method

.method public ap(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 392
    sget-object v0, Lcom/cmdm/control/download/a;->bd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 393
    sget-object v0, Lcom/cmdm/control/download/a;->bd:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    return-void
.end method

.method public ba()V
    .locals 3

    .prologue
    .line 400
    sget-object v2, Lcom/cmdm/control/download/a;->bb:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/cmdm/control/download/a;->bb:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 401
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/cmdm/control/download/a;->bb:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 409
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 402
    .restart local v0    # "i":I
    :cond_1
    sget-object v2, Lcom/cmdm/control/download/a;->bb:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 403
    .local v1, "m":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 404
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 406
    :cond_2
    sget-object v2, Lcom/cmdm/control/download/a;->bb:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 401
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public c(Z)V
    .locals 0
    .param p1, "isSetSrc"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/cmdm/control/download/a;->bf:Z

    .line 105
    return-void
.end method

.method public execute(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 458
    sget-object v0, Lcom/cmdm/control/download/a;->bc:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 465
    new-instance v0, Lcom/cmdm/control/download/a$4;

    invoke-direct {v0, p0, p1}, Lcom/cmdm/control/download/a$4;-><init>(Lcom/cmdm/control/download/a;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cmdm/control/threadfactory/c;->d(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public f(II)V
    .locals 0
    .param p1, "startLoadLimit"    # I
    .param p2, "stopLoadLimit"    # I

    .prologue
    .line 335
    if-le p1, p2, :cond_0

    .line 340
    :goto_0
    return-void

    .line 338
    :cond_0
    iput p1, p0, Lcom/cmdm/control/download/a;->bm:I

    .line 339
    iput p2, p0, Lcom/cmdm/control/download/a;->bn:I

    goto :goto_0
.end method

.method public lock()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 362
    new-instance v0, Lcom/cmdm/control/download/a$3;

    invoke-direct {v0, p0}, Lcom/cmdm/control/download/a$3;-><init>(Lcom/cmdm/control/download/a;)V

    invoke-static {v0}, Lcom/cmdm/control/threadfactory/c;->d(Ljava/lang/Runnable;)V

    .line 369
    iput-boolean v1, p0, Lcom/cmdm/control/download/a;->bo:Z

    .line 370
    iput-boolean v1, p0, Lcom/cmdm/control/download/a;->bp:Z

    .line 371
    return-void
.end method

.method public unlock()V
    .locals 2

    .prologue
    .line 384
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmdm/control/download/a;->bo:Z

    .line 385
    iget-object v1, p0, Lcom/cmdm/control/download/a;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 386
    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/download/a;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 385
    monitor-exit v1

    .line 388
    return-void

    .line 385
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
