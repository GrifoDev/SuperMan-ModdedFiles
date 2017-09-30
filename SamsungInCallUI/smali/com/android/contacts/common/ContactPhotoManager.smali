.class public abstract Lcom/android/contacts/common/ContactPhotoManager;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/ContactPhotoManager$BlankDefaultImageProvider;,
        Lcom/android/contacts/common/ContactPhotoManager$LetterTileDefaultImageProvider;,
        Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;,
        Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    }
.end annotation


# static fields
.field public static a:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

.field public static final b:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

.field private static final c:Landroid/net/Uri;

.field private static d:Landroid/graphics/drawable/Drawable;

.field private static e:Lcom/android/contacts/common/ContactPhotoManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "defaultimage://"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/ContactPhotoManager;->c:Landroid/net/Uri;

    sput-object v1, Lcom/android/contacts/common/ContactPhotoManager;->d:Landroid/graphics/drawable/Drawable;

    new-instance v0, Lcom/android/contacts/common/ContactPhotoManager$LetterTileDefaultImageProvider;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/ContactPhotoManager$LetterTileDefaultImageProvider;-><init>(Lcom/android/contacts/common/ContactPhotoManager$1;)V

    sput-object v0, Lcom/android/contacts/common/ContactPhotoManager;->a:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    new-instance v0, Lcom/android/contacts/common/ContactPhotoManager$BlankDefaultImageProvider;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/ContactPhotoManager$BlankDefaultImageProvider;-><init>(Lcom/android/contacts/common/ContactPhotoManager$1;)V

    sput-object v0, Lcom/android/contacts/common/ContactPhotoManager;->b:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/res/Resources;ZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-nez p2, :cond_1

    sget-object v0, Lcom/android/contacts/common/ContactPhotoManager;->d:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/contacts/common/ContactPhotoManager$LetterTileDefaultImageProvider;->a(Landroid/content/res/Resources;Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/ContactPhotoManager;->d:Landroid/graphics/drawable/Drawable;

    :cond_0
    sget-object v0, Lcom/android/contacts/common/ContactPhotoManager;->d:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p2}, Lcom/android/contacts/common/ContactPhotoManager$LetterTileDefaultImageProvider;->a(Landroid/content/res/Resources;Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2

    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;
    .locals 2

    sget-object v0, Lcom/android/contacts/common/ContactPhotoManager;->e:Lcom/android/contacts/common/ContactPhotoManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/ContactPhotoManager;->b(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v1

    sput-object v1, Lcom/android/contacts/common/ContactPhotoManager;->e:Lcom/android/contacts/common/ContactPhotoManager;

    sget-object v1, Lcom/android/contacts/common/ContactPhotoManager;->e:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    invoke-static {p0}, Lcom/android/contacts/common/util/PermissionsUtil;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/contacts/common/ContactPhotoManager;->e:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/common/ContactPhotoManager;->d()V

    :cond_0
    sget-object v0, Lcom/android/contacts/common/ContactPhotoManager;->e:Lcom/android/contacts/common/ContactPhotoManager;

    return-object v0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;
    .locals 2

    const-class v1, Lcom/android/contacts/common/ContactPhotoManager;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/android/contacts/common/ContactPhotoManagerImpl;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Landroid/net/Uri;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected static c(Landroid/net/Uri;)Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    .locals 4

    new-instance v0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    const-string v1, "display_name"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "identifier"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :try_start_0
    const-string v1, "contact_type"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->c:I

    :cond_0
    const-string v1, "scale"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->d:F

    :cond_1
    const-string v1, "offset"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->e:F

    :cond_2
    const-string v1, "is_circular"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->f:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v1, "ContactPhotoManager"

    const-string v2, "Invalid DefaultImageRequest image parameters provided, ignoring and using defaults."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Landroid/view/View;)V
.end method

.method public final a(Landroid/widget/ImageView;JZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V
    .locals 8

    sget-object v7, Lcom/android/contacts/common/ContactPhotoManager;->a:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/common/ContactPhotoManager;->a(Landroid/widget/ImageView;JZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V

    return-void
.end method

.method public abstract a(Landroid/widget/ImageView;JZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V
.end method

.method public final a(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V
    .locals 8

    sget-object v7, Lcom/android/contacts/common/ContactPhotoManager;->a:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/common/ContactPhotoManager;->a(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V

    return-void
.end method

.method public abstract a(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V
.end method

.method public final a(Landroid/widget/ImageView;Landroid/net/Uri;ZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V
    .locals 8

    const/4 v3, -0x1

    sget-object v7, Lcom/android/contacts/common/ContactPhotoManager;->a:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/common/ContactPhotoManager;->a(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V

    return-void
.end method

.method public abstract b()V
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method

.method protected d(Landroid/net/Uri;)Z
    .locals 2

    const-string v0, "defaultimage"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    return-void
.end method
