.class public Lcom/cmdm/control/download/a;
.super Ljava/lang/Object;


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

    const-wide/16 v2, 0x0

    const-wide/32 v0, 0x800000

    sput-wide v0, Lcom/cmdm/control/download/a;->aV:J

    sput-wide v2, Lcom/cmdm/control/download/a;->aX:J

    sput-wide v2, Lcom/cmdm/control/download/a;->aY:J

    const-wide/32 v0, 0x2dc6c0

    sput-wide v0, Lcom/cmdm/control/download/a;->aZ:J

    const/4 v0, 0x0

    sput-object v0, Lcom/cmdm/control/download/a;->ba:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/cmdm/control/download/a;->bb:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cmdm/control/download/a;->bc:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cmdm/control/download/a;->bd:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/cmdm/control/download/a;->be:Ljava/util/Map;

    sget-object v0, Lcom/cmdm/control/download/a;->ba:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x14

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    sput-object v0, Lcom/cmdm/control/download/a;->ba:Ljava/util/LinkedHashMap;

    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x6

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/cmdm/control/download/a;->a(J)V

    const/4 v0, 0x0

    sput v0, Lcom/cmdm/control/download/a;->bq:I

    return-void
.end method

.method public constructor <init>(ILcom/cmdm/control/download/Interface/c;Lcom/cmdm/control/download/Interface/d;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/cmdm/control/download/a;->bf:Z

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/cmdm/control/download/a$1;

    invoke-direct {v1, p0}, Lcom/cmdm/control/download/a$1;-><init>(Lcom/cmdm/control/download/a;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/cmdm/control/download/a;->bg:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/cmdm/control/download/a$2;

    invoke-direct {v1, p0}, Lcom/cmdm/control/download/a$2;-><init>(Lcom/cmdm/control/download/a;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/cmdm/control/download/a;->bh:Landroid/os/Handler;

    const/4 v0, -0x1

    iput v0, p0, Lcom/cmdm/control/download/a;->bi:I

    iput-object v4, p0, Lcom/cmdm/control/download/a;->bk:Lcom/cmdm/control/download/Interface/b;

    iput-object v4, p0, Lcom/cmdm/control/download/a;->bl:Lcom/cmdm/control/download/Interface/d;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/download/a;->lock:Ljava/lang/Object;

    iput v2, p0, Lcom/cmdm/control/download/a;->bm:I

    iput v2, p0, Lcom/cmdm/control/download/a;->bn:I

    iput-boolean v3, p0, Lcom/cmdm/control/download/a;->bo:Z

    iput-boolean v3, p0, Lcom/cmdm/control/download/a;->bp:Z

    iput p1, p0, Lcom/cmdm/control/download/a;->bi:I

    iput-object p2, p0, Lcom/cmdm/control/download/a;->bj:Lcom/cmdm/control/download/Interface/c;

    iput-object p3, p0, Lcom/cmdm/control/download/a;->bl:Lcom/cmdm/control/download/Interface/d;

    return-void
.end method

.method public constructor <init>(Lcom/cmdm/control/download/Interface/b;Lcom/cmdm/control/download/Interface/d;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/cmdm/control/download/a;->bf:Z

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/cmdm/control/download/a$1;

    invoke-direct {v1, p0}, Lcom/cmdm/control/download/a$1;-><init>(Lcom/cmdm/control/download/a;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/cmdm/control/download/a;->bg:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/cmdm/control/download/a$2;

    invoke-direct {v1, p0}, Lcom/cmdm/control/download/a$2;-><init>(Lcom/cmdm/control/download/a;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/cmdm/control/download/a;->bh:Landroid/os/Handler;

    const/4 v0, -0x1

    iput v0, p0, Lcom/cmdm/control/download/a;->bi:I

    iput-object v4, p0, Lcom/cmdm/control/download/a;->bk:Lcom/cmdm/control/download/Interface/b;

    iput-object v4, p0, Lcom/cmdm/control/download/a;->bl:Lcom/cmdm/control/download/Interface/d;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/download/a;->lock:Ljava/lang/Object;

    iput v2, p0, Lcom/cmdm/control/download/a;->bm:I

    iput v2, p0, Lcom/cmdm/control/download/a;->bn:I

    iput-boolean v3, p0, Lcom/cmdm/control/download/a;->bo:Z

    iput-boolean v3, p0, Lcom/cmdm/control/download/a;->bp:Z

    iput-object p1, p0, Lcom/cmdm/control/download/a;->bk:Lcom/cmdm/control/download/Interface/b;

    iput-object p2, p0, Lcom/cmdm/control/download/a;->bl:Lcom/cmdm/control/download/Interface/d;

    return-void
.end method

.method public constructor <init>(Lcom/cmdm/control/download/Interface/d;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/cmdm/control/download/a;->bf:Z

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/cmdm/control/download/a$1;

    invoke-direct {v1, p0}, Lcom/cmdm/control/download/a$1;-><init>(Lcom/cmdm/control/download/a;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/cmdm/control/download/a;->bg:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/cmdm/control/download/a$2;

    invoke-direct {v1, p0}, Lcom/cmdm/control/download/a$2;-><init>(Lcom/cmdm/control/download/a;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/cmdm/control/download/a;->bh:Landroid/os/Handler;

    const/4 v0, -0x1

    iput v0, p0, Lcom/cmdm/control/download/a;->bi:I

    iput-object v4, p0, Lcom/cmdm/control/download/a;->bk:Lcom/cmdm/control/download/Interface/b;

    iput-object v4, p0, Lcom/cmdm/control/download/a;->bl:Lcom/cmdm/control/download/Interface/d;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/download/a;->lock:Ljava/lang/Object;

    iput v2, p0, Lcom/cmdm/control/download/a;->bm:I

    iput v2, p0, Lcom/cmdm/control/download/a;->bn:I

    iput-boolean v3, p0, Lcom/cmdm/control/download/a;->bo:Z

    iput-boolean v3, p0, Lcom/cmdm/control/download/a;->bp:Z

    iput-object p1, p0, Lcom/cmdm/control/download/a;->bl:Lcom/cmdm/control/download/Interface/d;

    return-void
.end method

.method private Q(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/cmdm/control/download/a;->R(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lcom/cmdm/control/download/a$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/cmdm/control/download/a$d;-><init>(Lcom/cmdm/control/download/a;Lcom/cmdm/control/download/a$d;)V

    iput-object v0, v1, Lcom/cmdm/control/download/a$d;->bs:Landroid/graphics/Bitmap;

    iput-object p1, v1, Lcom/cmdm/control/download/a$d;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/cmdm/control/download/a$d;->by:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/cmdm/control/download/a;->bg:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/cmdm/control/download/a;->bg:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private R(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-static {p1}, Lcom/cmdm/control/download/a;->ar(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/cmdm/control/download/a;->as(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1, v0}, Lcom/cmdm/control/download/a;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    sput v0, Lcom/cmdm/control/download/a;->bq:I

    invoke-static {p1}, Lcom/cmdm/control/download/a;->at(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, Lcom/cmdm/control/download/a;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    sget-object v1, Lcom/cmdm/control/download/a;->bc:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/cmdm/control/download/a;->bl:Lcom/cmdm/control/download/Interface/d;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/cmdm/control/download/a;->bl:Lcom/cmdm/control/download/Interface/d;

    invoke-interface {v2, p1, v0}, Lcom/cmdm/control/download/Interface/d;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static a(Landroid/graphics/Bitmap;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

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
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, p1

    int-to-float v2, v3

    div-float/2addr v0, v2

    int-to-float v2, p2

    int-to-float v6, v4

    div-float/2addr v2, v6

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method public static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 1

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/cmdm/control/download/a;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/cmdm/control/download/a;->R(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static a(J)V
    .locals 4

    sput-wide p0, Lcom/cmdm/control/download/a;->aV:J

    const-wide/16 v0, 0x1

    mul-long/2addr v0, p0

    const-wide/16 v2, 0x3

    div-long/2addr v0, v2

    sput-wide v0, Lcom/cmdm/control/download/a;->aX:J

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6

    const-class v1, Lcom/cmdm/control/download/a;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lcom/cmdm/control/download/a;->a(Landroid/graphics/Bitmap;)J

    move-result-wide v2

    sget-wide v4, Lcom/cmdm/control/download/a;->aZ:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    sget-object v0, Lcom/cmdm/control/download/a;->ba:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-wide v2, Lcom/cmdm/control/download/a;->aY:J

    invoke-static {p1}, Lcom/cmdm/control/download/a;->a(Landroid/graphics/Bitmap;)J

    move-result-wide v4

    add-long/2addr v2, v4

    sput-wide v2, Lcom/cmdm/control/download/a;->aY:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/cmdm/control/download/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/cmdm/control/download/a;->bf:Z

    return v0
.end method

.method private static declared-synchronized aX()V
    .locals 12

    const/4 v0, 0x0

    const-class v5, Lcom/cmdm/control/download/a;

    monitor-enter v5

    :try_start_0
    sget-object v1, Lcom/cmdm/control/download/a;->ba:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v6

    sget-wide v2, Lcom/cmdm/control/download/a;->aY:J

    sget-wide v8, Lcom/cmdm/control/download/a;->aV:J

    cmp-long v1, v2, v8

    if-gtz v1, :cond_0

    const/16 v1, 0x3c

    if-le v6, v1, :cond_6

    :cond_0
    const-wide/16 v2, 0x0

    sget-object v1, Lcom/cmdm/control/download/a;->ba:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v4, v0

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_2
    sget-object v0, Lcom/cmdm/control/download/a;->ba:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-eq v0, v6, :cond_4

    const/16 v0, 0x1e

    if-le v4, v0, :cond_3

    sget-object v0, Lcom/cmdm/control/download/a;->ba:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    sub-int v0, v6, v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_4

    :cond_3
    const/16 v0, 0x5a

    if-le v6, v0, :cond_5

    :cond_4
    invoke-static {}, Lcom/cmdm/control/download/a;->aY()V

    :cond_5
    sget-object v0, Lcom/cmdm/control/download/a;->ba:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    sput-wide v2, Lcom/cmdm/control/download/a;->aY:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    :goto_2
    monitor-exit v5

    return-void

    :cond_7
    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    sget-object v1, Lcom/cmdm/control/download/a;->bd:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    sget-object v1, Lcom/cmdm/control/download/a;->bd:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v8, Lcom/cmdm/control/download/a;->bd:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_8
    sget-wide v8, Lcom/cmdm/control/download/a;->aY:J

    sget-wide v10, Lcom/cmdm/control/download/a;->aX:J

    cmp-long v1, v8, v10

    if-lez v1, :cond_2

    sub-int v1, v6, v4

    const/16 v8, 0xc

    if-le v1, v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v4, v4, 0x1

    sget-wide v8, Lcom/cmdm/control/download/a;->aY:J

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/cmdm/control/download/a;->a(Landroid/graphics/Bitmap;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    sput-wide v8, Lcom/cmdm/control/download/a;->aY:J

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/cmdm/control/download/a;->a(Landroid/graphics/Bitmap;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    add-long/2addr v0, v2

    move-wide v2, v0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0
.end method

.method public static aY()V
    .locals 5

    sget-object v0, Lcom/cmdm/control/download/a;->ba:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/cmdm/control/download/a;->aY:J

    sget-object v0, Lcom/cmdm/control/download/a;->ba:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    sget-object v0, Lcom/cmdm/control/download/a;->bb:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/cmdm/control/download/a;->be:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/cmdm/control/download/a;->bd:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/cmdm/control/download/a;->bd:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v3, Lcom/cmdm/control/download/a;->bd:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    sget-object v1, Lcom/cmdm/control/download/a;->bd:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/cmdm/control/download/a;->bd:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public static aq(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/cmdm/control/download/a;->ba:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static ar(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/cmdm/control/download/a;->ba:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cmdm/control/download/a;->ba:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private as(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    const/16 v3, 0x3000

    new-array v3, v3, [B

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v0

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v1

    move-object v2, v0

    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_0

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception v1

    move-object v2, v0

    :goto_3
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v2, :cond_0

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_0

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_4
    if-eqz v2, :cond_2

    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    :cond_2
    :goto_5
    throw v0

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_8
    move-exception v1

    goto :goto_3

    :catch_9
    move-exception v1

    goto :goto_2

    :catch_a
    move-exception v1

    goto :goto_1
.end method

.method public static at(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v1, 0x0

    if-nez p0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_3

    const/16 v2, 0x7530

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0x12d

    if-eq v2, v3, :cond_2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0x12e

    if-ne v2, v3, :cond_4

    :cond_2
    const-string v2, "Location"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget v2, Lcom/cmdm/control/download/a;->bq:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/cmdm/control/download/a;->bq:I

    sget v2, Lcom/cmdm/control/download/a;->bq:I

    const/4 v3, 0x3

    if-gt v2, v3, :cond_3

    invoke-static {v0}, Lcom/cmdm/control/download/a;->at(Ljava/lang/String;)Landroid/graphics/Bitmap;

    :cond_3
    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_5

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xce

    if-ne v2, v3, :cond_3

    :cond_5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    sget-object v0, Lcom/cmdm/control/download/a;->bc:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    sget-object v0, Lcom/cmdm/control/download/a;->bc:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic b(Lcom/cmdm/control/download/a;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/download/a;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/cmdm/control/download/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cmdm/control/download/a;->Q(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic bb()Ljava/util/LinkedHashMap;
    .locals 1

    sget-object v0, Lcom/cmdm/control/download/a;->ba:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic bc()V
    .locals 0

    invoke-static {}, Lcom/cmdm/control/download/a;->aX()V

    return-void
.end method

.method static synthetic c(Lcom/cmdm/control/download/a;)Lcom/cmdm/control/download/Interface/d;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/download/a;->bl:Lcom/cmdm/control/download/Interface/d;

    return-object v0
.end method

.method static synthetic d(Lcom/cmdm/control/download/a;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/download/a;->bh:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 6

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/cmdm/control/download/a;->a(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;II)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;II)V
    .locals 7

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/cmdm/control/download/a;->bc:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-boolean v0, p0, Lcom/cmdm/control/download/a;->bf:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    const-string v0, "AsyncImageLoadPool"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u670d\u52a1\u5668\u7aef\u4e0d\u5b58\u5728url==="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_2
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

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

    sget-object v1, Lcom/cmdm/control/download/a;->be:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/cmdm/control/download/a;->ba:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_5

    iget-boolean v0, p0, Lcom/cmdm/control/download/a;->bf:Z

    if-eqz v0, :cond_4

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-boolean v0, p0, Lcom/cmdm/control/download/a;->bf:Z

    if-eqz v0, :cond_7

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_4
    :try_start_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_5
    new-instance v1, Lcom/cmdm/control/download/a$b;

    invoke-direct {v1, p0, v0}, Lcom/cmdm/control/download/a$b;-><init>(Lcom/cmdm/control/download/a;Lcom/cmdm/control/download/a$c;)V

    invoke-static {v1}, Lcom/cmdm/control/threadfactory/c;->d(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/cmdm/control/download/a;->bf:Z

    if-eqz v0, :cond_6

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_7
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method protected a(ZLjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/download/a;->bj:Lcom/cmdm/control/download/Interface/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/download/a;->bj:Lcom/cmdm/control/download/Interface/c;

    iget v1, p0, Lcom/cmdm/control/download/a;->bi:I

    invoke-interface {v0, v1, p3}, Lcom/cmdm/control/download/Interface/c;->a(ILandroid/graphics/Bitmap;)V

    :cond_0
    iget-object v0, p0, Lcom/cmdm/control/download/a;->bk:Lcom/cmdm/control/download/Interface/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/download/a;->bk:Lcom/cmdm/control/download/Interface/b;

    invoke-interface {v0, p3}, Lcom/cmdm/control/download/Interface/b;->b(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/cmdm/control/download/a;->bj:Lcom/cmdm/control/download/Interface/c;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cmdm/control/download/a;->bj:Lcom/cmdm/control/download/Interface/c;

    iget v1, p0, Lcom/cmdm/control/download/a;->bi:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/cmdm/control/download/Interface/c;->a(ILandroid/graphics/Bitmap;)V

    :cond_3
    iget-object v0, p0, Lcom/cmdm/control/download/a;->bk:Lcom/cmdm/control/download/Interface/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/download/a;->bk:Lcom/cmdm/control/download/Interface/b;

    invoke-interface {v0}, Lcom/cmdm/control/download/Interface/b;->bd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method a(Lcom/cmdm/control/download/a$c;)Z
    .locals 2

    sget-object v0, Lcom/cmdm/control/download/a;->be:Ljava/util/Map;

    iget-object v1, p1, Lcom/cmdm/control/download/a$c;->bu:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/cmdm/control/download/a$c;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aZ()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmdm/control/download/a;->bo:Z

    iput-boolean v0, p0, Lcom/cmdm/control/download/a;->bp:Z

    return-void
.end method

.method public ap(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/cmdm/control/download/a;->bd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/cmdm/control/download/a;->bd:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public ba()V
    .locals 3

    sget-object v0, Lcom/cmdm/control/download/a;->bb:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cmdm/control/download/a;->bb:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/cmdm/control/download/a;->bb:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/cmdm/control/download/a;->bb:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    sget-object v0, Lcom/cmdm/control/download/a;->bb:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cmdm/control/download/a;->bf:Z

    return-void
.end method

.method public execute(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/cmdm/control/download/a;->bc:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    new-instance v0, Lcom/cmdm/control/download/a$4;

    invoke-direct {v0, p0, p1}, Lcom/cmdm/control/download/a$4;-><init>(Lcom/cmdm/control/download/a;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cmdm/control/threadfactory/c;->d(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public f(II)V
    .locals 0

    if-le p1, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/cmdm/control/download/a;->bm:I

    iput p2, p0, Lcom/cmdm/control/download/a;->bn:I

    goto :goto_0
.end method

.method public lock()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/cmdm/control/download/a$3;

    invoke-direct {v0, p0}, Lcom/cmdm/control/download/a$3;-><init>(Lcom/cmdm/control/download/a;)V

    invoke-static {v0}, Lcom/cmdm/control/threadfactory/c;->d(Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Lcom/cmdm/control/download/a;->bo:Z

    iput-boolean v1, p0, Lcom/cmdm/control/download/a;->bp:Z

    return-void
.end method

.method public unlock()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmdm/control/download/a;->bo:Z

    iget-object v1, p0, Lcom/cmdm/control/download/a;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/download/a;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
