.class public abstract Lcom/android/contacts/common/ContactPhotoManager;
.super Ljava/lang/Object;
.source "ContactPhotoManager.java"

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
.field private static final CONTACT_TYPE_PARAM_KEY:Ljava/lang/String; = "contact_type"

.field static final DEBUG:Z = false

.field static final DEBUG_SIZES:Z = false

.field public static DEFAULT_AVATAR:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider; = null

.field public static final DEFAULT_BLANK:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

.field private static final DEFAULT_IMAGE_URI:Landroid/net/Uri;

.field private static final DEFAULT_IMAGE_URI_SCHEME:Ljava/lang/String; = "defaultimage"

.field private static final DISPLAY_NAME_PARAM_KEY:Ljava/lang/String; = "display_name"

.field private static final IDENTIFIER_PARAM_KEY:Ljava/lang/String; = "identifier"

.field public static final IS_CIRCULAR_DEFAULT:Z = false

.field private static final IS_CIRCULAR_PARAM_KEY:Ljava/lang/String; = "is_circular"

.field public static final OFFSET_DEFAULT:F = 0.0f

.field private static final OFFSET_PARAM_KEY:Ljava/lang/String; = "offset"

.field public static final SCALE_DEFAULT:F = 1.0f

.field private static final SCALE_PARAM_KEY:Ljava/lang/String; = "scale"

.field static final TAG:Ljava/lang/String; = "ContactPhotoManager"

.field public static final TYPE_BUSINESS:I = 0x2

.field public static final TYPE_DEFAULT:I = 0x1

.field public static final TYPE_PERSON:I = 0x1

.field public static final TYPE_VOICEMAIL:I = 0x3

.field private static sDefaultLetterAvatar:Landroid/graphics/drawable/Drawable;

.field private static sInstance:Lcom/android/contacts/common/ContactPhotoManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "defaultimage://"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/ContactPhotoManager;->DEFAULT_IMAGE_URI:Landroid/net/Uri;

    sput-object v1, Lcom/android/contacts/common/ContactPhotoManager;->sDefaultLetterAvatar:Landroid/graphics/drawable/Drawable;

    new-instance v0, Lcom/android/contacts/common/ContactPhotoManager$LetterTileDefaultImageProvider;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/ContactPhotoManager$LetterTileDefaultImageProvider;-><init>(Lcom/android/contacts/common/ContactPhotoManager$1;)V

    sput-object v0, Lcom/android/contacts/common/ContactPhotoManager;->DEFAULT_AVATAR:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    new-instance v0, Lcom/android/contacts/common/ContactPhotoManager$BlankDefaultImageProvider;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/ContactPhotoManager$BlankDefaultImageProvider;-><init>(Lcom/android/contacts/common/ContactPhotoManager$1;)V

    sput-object v0, Lcom/android/contacts/common/ContactPhotoManager;->DEFAULT_BLANK:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendBusinessContactType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static declared-synchronized createContactPhotoManager(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;
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

.method public static getDefaultAvatarDrawableForContact(Landroid/content/res/Resources;ZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-nez p2, :cond_1

    sget-object v0, Lcom/android/contacts/common/ContactPhotoManager;->sDefaultLetterAvatar:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/contacts/common/ContactPhotoManager$LetterTileDefaultImageProvider;->getDefaultImageForContact(Landroid/content/res/Resources;Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/ContactPhotoManager;->sDefaultLetterAvatar:Landroid/graphics/drawable/Drawable;

    :cond_0
    sget-object v0, Lcom/android/contacts/common/ContactPhotoManager;->sDefaultLetterAvatar:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p2}, Lcom/android/contacts/common/ContactPhotoManager$LetterTileDefaultImageProvider;->getDefaultImageForContact(Landroid/content/res/Resources;Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDefaultAvatarUriForContact(Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)Landroid/net/Uri;
    .locals 3

    sget-object v1, Lcom/android/contacts/common/ContactPhotoManager;->DEFAULT_IMAGE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    if-eqz p0, :cond_5

    iget-object v1, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->displayName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "display_name"

    iget-object v2, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->identifier:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "identifier"

    iget-object v2, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_1
    iget v1, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->contactType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const-string v1, "contact_type"

    iget v2, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->contactType:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_2
    iget v1, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->scale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    const-string v1, "scale"

    iget v2, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->scale:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_3
    iget v1, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->offset:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_4

    const-string v1, "offset"

    iget v2, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->offset:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_4
    iget-boolean v1, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->isCircular:Z

    if-eqz v1, :cond_5

    const-string v1, "is_circular"

    iget-boolean v2, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->isCircular:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_5
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method protected static getDefaultImageRequestFromUri(Landroid/net/Uri;)Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    .locals 9

    new-instance v4, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    const-string v6, "display_name"

    invoke-virtual {p0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "identifier"

    invoke-virtual {p0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v4, v6, v7, v8}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :try_start_0
    const-string v6, "contact_type"

    invoke-virtual {p0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v4, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->contactType:I

    :cond_0
    const-string v6, "scale"

    invoke-virtual {p0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iput v6, v4, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->scale:F

    :cond_1
    const-string v6, "offset"

    invoke-virtual {p0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iput v6, v4, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->offset:F

    :cond_2
    const-string v6, "is_circular"

    invoke-virtual {p0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, v4, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->isCircular:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-object v4

    :catch_0
    move-exception v1

    const-string v6, "ContactPhotoManager"

    const-string v7, "Invalid DefaultImageRequest image parameters provided, ignoring and using defaults."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;
    .locals 2

    sget-object v1, Lcom/android/contacts/common/ContactPhotoManager;->sInstance:Lcom/android/contacts/common/ContactPhotoManager;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/ContactPhotoManager;->createContactPhotoManager(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v1

    sput-object v1, Lcom/android/contacts/common/ContactPhotoManager;->sInstance:Lcom/android/contacts/common/ContactPhotoManager;

    sget-object v1, Lcom/android/contacts/common/ContactPhotoManager;->sInstance:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    invoke-static {p0}, Lcom/android/contacts/common/util/PermissionsUtil;->hasContactsPermissions(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/contacts/common/ContactPhotoManager;->sInstance:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v1}, Lcom/android/contacts/common/ContactPhotoManager;->preloadPhotosInBackground()V

    :cond_0
    sget-object v1, Lcom/android/contacts/common/ContactPhotoManager;->sInstance:Lcom/android/contacts/common/ContactPhotoManager;

    return-object v1
.end method

.method public static injectContactPhotoManagerForTesting(Lcom/android/contacts/common/ContactPhotoManager;)V
    .locals 0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    sput-object p0, Lcom/android/contacts/common/ContactPhotoManager;->sInstance:Lcom/android/contacts/common/ContactPhotoManager;

    return-void
.end method

.method public static isBusinessContactUri(Landroid/net/Uri;)Z
    .locals 3

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static removeContactType(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public abstract cacheBitmap(Landroid/net/Uri;Landroid/graphics/Bitmap;[B)V
.end method

.method public abstract cancelPendingRequests(Landroid/view/View;)V
.end method

.method protected isDefaultImageUri(Landroid/net/Uri;)Z
    .locals 2

    const-string v0, "defaultimage"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final loadDirectoryPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V
    .locals 8

    const/4 v3, -0x1

    sget-object v7, Lcom/android/contacts/common/ContactPhotoManager;->DEFAULT_AVATAR:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/common/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V

    return-void
.end method

.method public final loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V
    .locals 8

    sget-object v7, Lcom/android/contacts/common/ContactPhotoManager;->DEFAULT_AVATAR:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/common/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V

    return-void
.end method

.method public abstract loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V
.end method

.method public final loadThumbnail(Landroid/widget/ImageView;JZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V
    .locals 8

    sget-object v7, Lcom/android/contacts/common/ContactPhotoManager;->DEFAULT_AVATAR:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/common/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V

    return-void
.end method

.method public abstract loadThumbnail(Landroid/widget/ImageView;JZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V
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

.method public abstract pause()V
.end method

.method public abstract preloadPhotosInBackground()V
.end method

.method public abstract refreshCache()V
.end method

.method public abstract removePhoto(Landroid/widget/ImageView;)V
.end method

.method public abstract resume()V
.end method
