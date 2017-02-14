.class public final Lcn/com/xy/sms/sdk/util/l;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static final a:Ljava/lang/String; = "MemoryCache"


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 6

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0xa

    const/high16 v2, 0x3fc00000    # 1.5f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcn/com/xy/sms/sdk/util/l;->b:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/com/xy/sms/sdk/util/l;->c:J

    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Lcn/com/xy/sms/sdk/util/l;->d:J

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcn/com/xy/sms/sdk/util/l;->d:J

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MemoryCache will use up to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcn/com/xy/sms/sdk/util/l;->d:J

    long-to-double v2, v2

    div-double/2addr v2, v4

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static a(Landroid/graphics/drawable/BitmapDrawable;)J
    .locals 4

    const-wide/16 v2, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    mul-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0

    :cond_0
    return-wide v2

    :cond_1
    return-wide v2
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/util/l;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/util/l;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    return-object v1
.end method

.method private a()V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "cache size="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcn/com/xy/sms/sdk/util/l;->c:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " length="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcn/com/xy/sms/sdk/util/l;->b:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcn/com/xy/sms/sdk/util/l;->c:J

    iget-wide v6, p0, Lcn/com/xy/sms/sdk/util/l;->d:J

    cmp-long v0, v4, v6

    if-gtz v0, :cond_3

    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/com/xy/sms/sdk/util/l;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-wide v4, p0, Lcn/com/xy/sms/sdk/util/l;->c:J

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/l;->a(Landroid/graphics/drawable/BitmapDrawable;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcn/com/xy/sms/sdk/util/l;->c:J

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    iget-wide v4, p0, Lcn/com/xy/sms/sdk/util/l;->c:J

    iget-wide v6, p0, Lcn/com/xy/sms/sdk/util/l;->d:J

    cmp-long v0, v4, v6

    if-gtz v0, :cond_4

    move v0, v1

    :goto_1
    if-eqz v0, :cond_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Clean cache. New size "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/com/xy/sms/sdk/util/l;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method private a(J)V
    .locals 7

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    iput-wide p1, p0, Lcn/com/xy/sms/sdk/util/l;->d:J

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MemoryCache will use up to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcn/com/xy/sms/sdk/util/l;->d:J

    long-to-double v2, v2

    div-double/2addr v2, v4

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/util/l;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/util/l;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v4, p0, Lcn/com/xy/sms/sdk/util/l;->c:J

    invoke-static {p2}, Lcn/com/xy/sms/sdk/util/l;->a(Landroid/graphics/drawable/BitmapDrawable;)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcn/com/xy/sms/sdk/util/l;->c:J

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "cache size="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcn/com/xy/sms/sdk/util/l;->c:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " length="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcn/com/xy/sms/sdk/util/l;->b:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcn/com/xy/sms/sdk/util/l;->c:J

    iget-wide v6, p0, Lcn/com/xy/sms/sdk/util/l;->d:J

    cmp-long v0, v4, v6

    if-gtz v0, :cond_4

    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/com/xy/sms/sdk/util/l;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-wide v4, p0, Lcn/com/xy/sms/sdk/util/l;->c:J

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/l;->a(Landroid/graphics/drawable/BitmapDrawable;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcn/com/xy/sms/sdk/util/l;->c:J

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    iget-wide v4, p0, Lcn/com/xy/sms/sdk/util/l;->c:J

    iget-wide v6, p0, Lcn/com/xy/sms/sdk/util/l;->d:J

    cmp-long v0, v4, v6

    if-gtz v0, :cond_5

    move v0, v1

    :goto_2
    if-eqz v0, :cond_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Clean cache. New size "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/com/xy/sms/sdk/util/l;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    return-void

    :cond_3
    iget-wide v4, p0, Lcn/com/xy/sms/sdk/util/l;->c:J

    iget-object v0, p0, Lcn/com/xy/sms/sdk/util/l;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/l;->a(Landroid/graphics/drawable/BitmapDrawable;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcn/com/xy/sms/sdk/util/l;->c:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "put: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/util/l;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
