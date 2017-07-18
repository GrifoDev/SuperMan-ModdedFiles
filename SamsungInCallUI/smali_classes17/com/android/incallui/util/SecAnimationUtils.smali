.class public Lcom/android/incallui/util/SecAnimationUtils;
.super Ljava/lang/Object;
.source "SecAnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/util/SecAnimationUtils$Scale;,
        Lcom/android/incallui/util/SecAnimationUtils$Change;,
        Lcom/android/incallui/util/SecAnimationUtils$Move;,
        Lcom/android/incallui/util/SecAnimationUtils$CrossFadeDrawable;,
        Lcom/android/incallui/util/SecAnimationUtils$Fade;
    }
.end annotation


# static fields
.field public static final ANIMATION_DURATION:I = 0xfa

.field public static final ANIMATION_DURATION_LONG:I = 0x9c4

.field public static final ANIMATION_DURATION_SHORT:I = 0x64

.field public static final ANIMATION_DURATION_USA:I = 0x1f4

.field public static final ANIMATION_IMMEDIATELY:I

.field private static final ENG_DBG:Z

.field private static final FADE_DBG:Z

.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/android/incallui/util/SecAnimationUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/util/SecAnimationUtils;->LOG_TAG:Ljava/lang/String;

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/incallui/util/SecAnimationUtils;->ENG_DBG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/incallui/util/SecAnimationUtils;->ENG_DBG:Z

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/incallui/util/SecAnimationUtils;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/incallui/util/SecAnimationUtils;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static newCrossFadeDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/android/incallui/util/SecAnimationUtils$CrossFadeDrawable;
    .locals 2

    const/4 v1, 0x2

    new-array v0, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    new-instance v1, Lcom/android/incallui/util/SecAnimationUtils$CrossFadeDrawable;

    invoke-direct {v1, v0}, Lcom/android/incallui/util/SecAnimationUtils$CrossFadeDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method public static startCrossFade(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 9

    const/4 v7, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v3, v7

    :goto_0
    if-eqz p1, :cond_5

    instance-of v6, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_5

    move-object v6, p1

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_5

    move v4, v7

    :goto_1
    if-eqz p2, :cond_6

    instance-of v6, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_6

    move-object v6, p2

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_6

    move v5, v7

    :goto_2
    if-nez v3, :cond_0

    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    move-object v6, p1

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    move-object v6, p2

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move v1, v7

    :cond_1
    if-nez v1, :cond_7

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    :cond_2
    invoke-static {p1, p2}, Lcom/android/incallui/util/SecAnimationUtils;->newCrossFadeDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/android/incallui/util/SecAnimationUtils$CrossFadeDrawable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/util/SecAnimationUtils$CrossFadeDrawable;->getAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-wide/16 v6, 0xfa

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v6, Lcom/android/incallui/util/SecAnimationUtils$1;

    invoke-direct {v6, p1, p2, p0}, Lcom/android/incallui/util/SecAnimationUtils$1;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :cond_3
    :goto_3
    return-void

    :cond_4
    move v3, v1

    goto :goto_0

    :cond_5
    move v4, v1

    goto :goto_1

    :cond_6
    move v5, v1

    goto :goto_2

    :cond_7
    if-nez v4, :cond_3

    if-eqz v5, :cond_3

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_3
.end method
