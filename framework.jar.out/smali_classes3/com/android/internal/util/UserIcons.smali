.class public Lcom/android/internal/util/UserIcons;
.super Ljava/lang/Object;
.source "UserIcons.java"


# static fields
.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final LOG_USERICON_TAG:Ljava/lang/String; = "UserIcon"

.field private static final USER_DRAWABLES:[I

.field private static final USER_ICON_COLORS:[I

.field static mFotaVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const v0, 0x1060299

    const v1, 0x106029a

    const v2, 0x106029b

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/UserIcons;->USER_ICON_COLORS:[I

    const v0, 0x1080102

    const v1, 0x1080103

    const v2, 0x1080104

    const v3, 0x1080105

    const v4, 0x1080106

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/UserIcons;->USER_DRAWABLES:[I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/util/UserIcons;->mFotaVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez p0, :cond_0

    return-object v4

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v5, v5, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public static getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    const v0, 0x10602a2

    :goto_0
    const/16 v2, -0x2710

    if-eq p0, v2, :cond_1

    sget-object v2, Lcom/android/internal/util/UserIcons;->USER_ICON_COLORS:[I

    sget-object v3, Lcom/android/internal/util/UserIcons;->USER_ICON_COLORS:[I

    array-length v3, v3

    rem-int v3, p0, v3

    aget v0, v2, v3

    :goto_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10805dc

    invoke-virtual {v2, v3, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-object v1

    :cond_0
    const v0, 0x10602a1

    goto :goto_0

    :cond_1
    const v0, 0x106029c

    goto :goto_1
.end method

.method public static getDefaultUserIconForBMode(IZZ)Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v2, "UserIcon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getDefaultUserIconForBMode , userId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " isPrimary : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const v0, 0x10602a2

    :goto_0
    const/16 v2, -0x2710

    if-eq p0, v2, :cond_1

    sget-object v2, Lcom/android/internal/util/UserIcons;->USER_ICON_COLORS:[I

    sget-object v3, Lcom/android/internal/util/UserIcons;->USER_ICON_COLORS:[I

    array-length v3, v3

    rem-int v3, p0, v3

    aget v0, v2, v3

    :goto_1
    const/4 v1, 0x0

    if-eqz p2, :cond_2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10805de

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-object v1

    :cond_0
    const v0, 0x10602a1

    goto :goto_0

    :cond_1
    const v0, 0x106029c

    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10805dd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2
.end method
