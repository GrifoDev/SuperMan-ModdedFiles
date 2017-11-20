.class Lcom/android/contacts/common/ContactPhotoManagerImpl;
.super Lcom/android/contacts/common/ContactPhotoManager;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;,
        Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;,
        Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;
    }
.end annotation


# static fields
.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;

.field private static final e:Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

.field private static p:I


# instance fields
.field private final f:Landroid/content/Context;

.field private final g:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;",
            ">;"
        }
    .end annotation
.end field

.field private volatile h:Z

.field private final i:I

.field private final j:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Object;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/widget/ImageView;",
            "Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Landroid/os/Handler;

.field private m:Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;

.field private n:Z

.field private o:Z

.field private final q:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final r:Ljava/util/concurrent/atomic/AtomicInteger;

.field private s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->c:[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "data15"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->d:[Ljava/lang/String;

    new-instance v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    new-array v1, v3, [B

    invoke-direct {v0, v1, v3}, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;-><init>([BI)V

    sput-object v0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->e:Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    sget-object v0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->e:Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    new-instance v1, Ljava/lang/ref/SoftReference;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->e:Ljava/lang/ref/Reference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Lcom/android/contacts/common/ContactPhotoManager;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->h:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->k:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->l:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->f:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f000000    # 0.5f

    :goto_0
    const/high16 v1, 0x49d80000    # 1769472.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    new-instance v2, Lcom/android/contacts/common/ContactPhotoManagerImpl$1;

    invoke-direct {v2, p0, v1}, Lcom/android/contacts/common/ContactPhotoManagerImpl$1;-><init>(Lcom/android/contacts/common/ContactPhotoManagerImpl;I)V

    iput-object v2, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->j:Landroid/util/LruCache;

    const v1, 0x49f42400    # 2000000.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    new-instance v2, Lcom/android/contacts/common/ContactPhotoManagerImpl$2;

    invoke-direct {v2, p0, v1}, Lcom/android/contacts/common/ContactPhotoManagerImpl$2;-><init>(Lcom/android/contacts/common/ContactPhotoManagerImpl;I)V

    iput-object v2, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->g:Landroid/util/LruCache;

    int-to-double v2, v1

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->i:I

    const-string v1, "ContactPhotoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cache adj: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0353

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->p:I

    invoke-static {p1}, Lcom/android/contacts/a/c/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->s:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->s:Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private a(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;)Landroid/graphics/drawable/Drawable;
    .locals 3

    invoke-static {p3}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->a(Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Landroid/support/v4/a/a/q;->a(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/a/a/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/a/a/o;->a(Z)V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v4/a/a/o;->a(F)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/contacts/common/ContactPhotoManagerImpl;)Landroid/util/LruCache;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->g:Landroid/util/LruCache;

    return-object v0
.end method

.method private a(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V
    .locals 1

    invoke-static {p2}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->c(Landroid/net/Uri;)Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    move-result-object v0

    iput-boolean p5, v0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->f:Z

    invoke-virtual {p6, p1, p3, p4, v0}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;->a(Landroid/widget/ImageView;IZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    return-void
.end method

.method private a(Landroid/widget/ImageView;Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->a(Landroid/widget/ImageView;Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->o:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->i()V

    goto :goto_0
.end method

.method private static a(Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;I)V
    .locals 6

    iget v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->b:I

    invoke-static {v0, p1}, Lcom/android/contacts/common/util/BitmapUtil;->a(II)I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->a:[B

    if-eqz v2, :cond_0

    array-length v0, v2

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->f:I

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->e:Ljava/lang/ref/Reference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->e:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->d:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->d:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    :cond_2
    :try_start_0
    invoke-static {v2, v1}, Lcom/android/contacts/common/util/BitmapUtil;->a([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-eq v2, v3, :cond_3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    sget v5, Lcom/android/contacts/common/ContactPhotoManagerImpl;->p:I

    mul-int/lit8 v5, v5, 0x2

    if-gt v4, v5, :cond_3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v2, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_3
    iput v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->f:I

    iput-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->d:Landroid/graphics/Bitmap;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->e:Ljava/lang/ref/Reference;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/contacts/common/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->a(Ljava/lang/Object;[BZI)V

    return-void
.end method

.method static synthetic a(Lcom/android/contacts/common/ContactPhotoManagerImpl;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method private a(Ljava/lang/Object;[BZI)V
    .locals 2

    new-instance v1, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    if-nez p2, :cond_2

    const/4 v0, -0x1

    :goto_0
    invoke-direct {v1, p2, v0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;-><init>([BI)V

    if-nez p3, :cond_0

    invoke-static {v1, p4}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->a(Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;I)V

    :cond_0
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->g:Landroid/util/LruCache;

    invoke-virtual {v0, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->g:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v1, :cond_1

    const-string v0, "ContactPhotoManager"

    const-string v1, "Bitmap too big to fit in cache."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->g:Landroid/util/LruCache;

    sget-object v1, Lcom/android/contacts/common/ContactPhotoManagerImpl;->e:Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    invoke-virtual {v0, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->h:Z

    return-void

    :cond_2
    invoke-static {p2}, Lcom/android/contacts/common/util/BitmapUtil;->a([B)I

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->g:Landroid/util/LruCache;

    sget-object v1, Lcom/android/contacts/common/ContactPhotoManagerImpl;->e:Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    invoke-virtual {v0, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    invoke-interface {p2}, Ljava/util/Set;->clear()V

    invoke-interface {p3}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;

    iget-object v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->g:Landroid/util/LruCache;

    invoke-virtual {v0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->e()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    sget-object v4, Lcom/android/contacts/common/ContactPhotoManagerImpl;->e:Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    if-eq v1, v4, :cond_0

    if-eqz v1, :cond_2

    iget-object v4, v1, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->a:[B

    if-eqz v4, :cond_2

    iget-boolean v4, v1, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->c:Z

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->e:Ljava/lang/ref/Reference;

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->e:Ljava/lang/ref/Reference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_1
    invoke-virtual {v0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->d()I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->a(Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;I)V

    const/4 v2, 0x1

    move v0, v2

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    iget-boolean v1, v1, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->c:Z

    if-nez v1, :cond_5

    :cond_3
    invoke-virtual {v0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->b(Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    if-eqz v2, :cond_7

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->l:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_7
    return-void
.end method

.method private static a(Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {p0, v0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/widget/ImageView;Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;Z)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->g:Landroid/util/LruCache;

    invoke-virtual {p2}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->a(Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;)Z

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->a(Landroid/widget/ImageView;Z)V

    move v0, v3

    :goto_0
    return v0

    :cond_0
    iget-object v1, v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->a:[B

    if-nez v1, :cond_1

    invoke-static {p2}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->a(Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;)Z

    move-result v1

    invoke-virtual {p2, p1, v1}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->a(Landroid/widget/ImageView;Z)V

    iget-boolean v0, v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->c:Z

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->e:Ljava/lang/ref/Reference;

    if-nez v1, :cond_2

    move-object v1, v4

    :goto_1
    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->a:[B

    array-length v1, v1

    const/16 v2, 0x2000

    if-ge v1, v2, :cond_3

    invoke-virtual {p2}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->d()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->a(Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;I)V

    iget-object v1, v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->d:Landroid/graphics/Bitmap;

    if-nez v1, :cond_4

    move v0, v3

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->e:Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->a(Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;)Z

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->a(Landroid/widget/ImageView;Z)V

    move v0, v3

    goto :goto_0

    :cond_4
    move-object v2, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz p3, :cond_7

    if-eqz v1, :cond_7

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    instance-of v6, v1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v6, :cond_6

    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/TransitionDrawable;->getNumberOfLayers()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/TransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v5, v3

    :goto_2
    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->f:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {p0, v3, v2, p2}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->a(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v5, v1

    new-instance v1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v1, v5}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v3, 0xc8

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :goto_3
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    iget-object v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->j:Landroid/util/LruCache;

    invoke-virtual {v3}, Landroid/util/LruCache;->maxSize()I

    move-result v3

    div-int/lit8 v3, v3, 0x6

    if-ge v1, v3, :cond_5

    iget-object v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->j:Landroid/util/LruCache;

    invoke-virtual {p2}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->e()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iput-object v4, v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->d:Landroid/graphics/Bitmap;

    iget-boolean v0, v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->c:Z

    goto/16 :goto_0

    :cond_6
    aput-object v1, v5, v3

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, v1, v2, p2}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->a(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3
.end method

.method static synthetic b(Lcom/android/contacts/common/ContactPhotoManagerImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->i:I

    return v0
.end method

.method static synthetic c(Lcom/android/contacts/common/ContactPhotoManagerImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/android/contacts/common/ContactPhotoManagerImpl;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->l:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/android/contacts/common/ContactPhotoManagerImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->d:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->c:[Ljava/lang/String;

    return-object v0
.end method

.method private i()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->n:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->n:Z

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->l:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private j()V
    .locals 4

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v0, v3}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->a(Landroid/widget/ImageView;Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->k()V

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->i()V

    :cond_2
    return-void
.end method

.method private k()V
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->g:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->d:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->o:Z

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {p1, v0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public a(Landroid/widget/ImageView;JZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p7, p1, v0, p4, p6}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;->a(Landroid/widget/ImageView;IZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    invoke-static {p2, p3, p4, p5, p7}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->a(JZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->a(Landroid/widget/ImageView;Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;)V

    goto :goto_0
.end method

.method public a(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V
    .locals 7

    if-nez p2, :cond_0

    invoke-virtual {p7, p1, p3, p4, p6}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;->a(Landroid/widget/ImageView;IZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->d(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->a(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V

    goto :goto_0

    :cond_1
    invoke-static {p2, p3, p4, p5, p7}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->a(Landroid/net/Uri;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->a(Landroid/widget/ImageView;Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->o:Z

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->i()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->h:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->h:Z

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->g:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    sget-object v2, Lcom/android/contacts/common/ContactPhotoManagerImpl;->e:Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    if-eq v0, v2, :cond_2

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->c:Z

    goto :goto_0
.end method

.method public d()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->f()V

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->m:Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;

    invoke-virtual {v0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->b()V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->g:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->j:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->m:Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;

    iget-object v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;-><init>(Lcom/android/contacts/common/ContactPhotoManagerImpl;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->m:Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->m:Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;

    invoke-virtual {v0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->start()V

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    iput-boolean v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->n:Z

    iget-boolean v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->o:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->f()V

    iget-object v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->m:Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;

    invoke-virtual {v1}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->c()V

    goto :goto_0

    :pswitch_1
    iget-boolean v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->o:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->j()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTrimMemory(I)V
    .locals 1

    const/16 v0, 0x3c

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->e()V

    :cond_0
    return-void
.end method
