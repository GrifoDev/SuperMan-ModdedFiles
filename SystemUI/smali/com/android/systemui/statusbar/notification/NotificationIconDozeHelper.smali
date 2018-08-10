.class public Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;
.super Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;
.source "NotificationIconDozeHelper.java"


# instance fields
.field private mColor:I

.field private mContext:Landroid/content/Context;

.field private final mImageColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private final mImageDarkAlpha:I

.field private final mImageDarkColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->mImageDarkColor:I

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->mImageColorFilter:Landroid/graphics/PorterDuffColorFilter;

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->mColor:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->mImageDarkAlpha:I

    return-void
.end method

.method private fadeImageAlpha(Landroid/widget/ImageView;ZJ)V
    .locals 7

    new-instance v2, Lcom/android/systemui/statusbar/notification/-$Lambda$LCMezY9h6DBYUBMVzDU1-KTiAGE;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/notification/-$Lambda$LCMezY9h6DBYUBMVzDU1-KTiAGE;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->startIntensityAnimation(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ZJLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private fadeImageColorFilter(Landroid/widget/ImageView;ZJ)V
    .locals 7

    new-instance v2, Lcom/android/systemui/statusbar/notification/-$Lambda$LCMezY9h6DBYUBMVzDU1-KTiAGE$1;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/notification/-$Lambda$LCMezY9h6DBYUBMVzDU1-KTiAGE$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->startIntensityAnimation(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ZJLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private updateImageAlpha(Landroid/widget/ImageView;Z)V
    .locals 1

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->mImageDarkAlpha:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    return-void

    :cond_0
    const/16 v0, 0xff

    goto :goto_0
.end method

.method private updateImageColorFilter(Landroid/widget/ImageView;F)V
    .locals 4

    iget v2, p0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->mColor:I

    const/4 v3, -0x1

    invoke-static {v2, v3, p2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(IIF)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->mImageColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v2, v0}, Landroid/graphics/PorterDuffColorFilter;->setColor(I)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-void
.end method

.method private updateImageColorFilter(Landroid/widget/ImageView;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->updateImageColorFilter(Landroid/widget/ImageView;F)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_statusbar_notification_NotificationIconDozeHelper_2507(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->updateImageColorFilter(Landroid/widget/ImageView;F)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_notification_NotificationIconDozeHelper_2773(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->mImageDarkAlpha:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    return-void
.end method

.method public setColor(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->mColor:I

    return-void
.end method

.method public setImageDark(Landroid/widget/ImageView;ZZJZ)V
    .locals 0

    if-eqz p3, :cond_1

    if-nez p6, :cond_0

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->fadeImageColorFilter(Landroid/widget/ImageView;ZJ)V

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->fadeImageAlpha(Landroid/widget/ImageView;ZJ)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->fadeGrayscale(Landroid/widget/ImageView;ZJ)V

    goto :goto_0

    :cond_1
    if-nez p6, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->updateImageColorFilter(Landroid/widget/ImageView;Z)V

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->updateImageAlpha(Landroid/widget/ImageView;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->updateGrayscale(Landroid/widget/ImageView;Z)V

    goto :goto_0
.end method
