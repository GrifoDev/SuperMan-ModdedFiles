.class final Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/ContactPhotoManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Request"
.end annotation


# instance fields
.field private final a:J

.field private final b:Landroid/net/Uri;

.field private final c:Z

.field private final d:I

.field private final e:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

.field private final f:Z


# direct methods
.method private constructor <init>(JLandroid/net/Uri;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->a:J

    iput-object p3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->b:Landroid/net/Uri;

    iput-boolean p5, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->c:Z

    iput-boolean p6, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->f:Z

    iput p4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->d:I

    iput-object p7, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->e:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    return-void
.end method

.method public static a(JZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;
    .locals 10

    new-instance v1, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-wide v2, p0

    move v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;-><init>(JLandroid/net/Uri;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V

    return-object v1
.end method

.method public static a(Landroid/net/Uri;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;
    .locals 9

    new-instance v1, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;

    const-wide/16 v2, 0x0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;-><init>(JLandroid/net/Uri;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V

    return-object v1
.end method

.method static synthetic a(Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->a:J

    return-wide v0
.end method


# virtual methods
.method public a(Landroid/widget/ImageView;Z)V
    .locals 4

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->b:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/contacts/common/ContactPhotoManager;->b(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->j:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    :goto_0
    iget-object v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->e:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    iget v2, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->d:I

    iget-boolean v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->c:Z

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;->a(Landroid/widget/ImageView;IZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    return-void

    :cond_0
    sget-object v0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->i:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->b:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/contacts/common/ContactPhotoManager;->b(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->h:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->g:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->b:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->a:J

    return-wide v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->d:I

    return v0
.end method

.method public e()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->b:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->b:Landroid/net/Uri;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;

    iget-wide v2, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->a:J

    iget-wide v4, p1, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->a:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->d:I

    iget v3, p1, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->d:I

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->b:Landroid/net/Uri;

    iget-object v3, p1, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->b:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/android/contacts/common/util/UriUtils;->a(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    iget-wide v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->a:J

    iget-wide v2, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->a:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->b:Landroid/net/Uri;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    goto :goto_0
.end method
