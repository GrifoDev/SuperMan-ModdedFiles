.class public Lcom/android/systemui/statusbar/StatusBarIconView;
.super Lcom/android/systemui/statusbar/AnimatedImageView;
.source "StatusBarIconView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/StatusBarIconView$1;,
        Lcom/android/systemui/statusbar/StatusBarIconView$2;,
        Lcom/android/systemui/statusbar/StatusBarIconView$OnVisibilityChangedListener;
    }
.end annotation


# static fields
.field private static final DOT_APPEAR_AMOUNT:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/systemui/statusbar/StatusBarIconView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final ICON_APPEAR_AMOUNT:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/systemui/statusbar/StatusBarIconView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ANIMATION_DURATION_FAST:I

.field private mAlwaysScaleIcon:Z

.field private mAnimationStartColor:I

.field private final mBlocked:Z

.field private mCachedContrastBackgroundColor:I

.field private mColorAnimator:Landroid/animation/ValueAnimator;

.field private final mColorUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mContrastedDrawableColor:I

.field private mCurrentSetColor:I

.field private mDarkAmount:F

.field private mDecorColor:I

.field private mDensity:I

.field private mDotAnimator:Landroid/animation/ObjectAnimator;

.field private mDotAppearAmount:F

.field private final mDotPaint:Landroid/graphics/Paint;

.field private mDotRadius:F

.field private final mDozer:Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

.field private mDrawableColor:I

.field protected mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

.field private mIconAppearAmount:F

.field private mIconAppearAnimator:Landroid/animation/ObjectAnimator;

.field private mIconColor:I

.field private mIconScale:F

.field private mNotification:Landroid/service/notification/StatusBarNotification;

.field private mNumberBackground:Landroid/graphics/drawable/Drawable;

.field private mNumberPain:Landroid/graphics/Paint;

.field private mNumberText:Ljava/lang/String;

.field private mNumberX:I

.field private mNumberY:I

.field private mOnVisibilityChangedListener:Lcom/android/systemui/statusbar/StatusBarIconView$OnVisibilityChangedListener;

.field private mSlot:Ljava/lang/String;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mStaticDotRadius:I

.field private mStatusBarIconDrawingSize:I

.field private mStatusBarIconDrawingSizeDark:I

.field private mStatusBarIconSize:I

.field private mVisibleState:I


# direct methods
.method static synthetic -set0(Lcom/android/systemui/statusbar/StatusBarIconView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAnimationStartColor:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/StatusBarIconView;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->runRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView$1;

    const-string/jumbo v1, "iconAppearAmount"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarIconView;->ICON_APPEAR_AMOUNT:Landroid/util/Property;

    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView$2;

    const-string/jumbo v1, "dot_appear_amount"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarIconView;->DOT_APPEAR_AMOUNT:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/AnimatedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->ANIMATION_DURATION_FAST:I

    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSizeDark:I

    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSize:I

    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconSize:I

    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconScale:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotPaint:Landroid/graphics/Paint;

    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mVisibleState:I

    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAmount:F

    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCurrentSetColor:I

    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAnimationStartColor:I

    new-instance v0, Lcom/android/systemui/statusbar/-$Lambda$8GVkhItfkCKqtDvTlHTILsytvsQ;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/-$Lambda$8GVkhItfkCKqtDvTlHTILsytvsQ;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCachedContrastBackgroundColor:I

    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDozer:Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mBlocked:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAlwaysScaleIcon:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateIconScaleDimens()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDensity:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Z)V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/AnimatedImageView;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->ANIMATION_DURATION_FAST:I

    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSizeDark:I

    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSize:I

    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconSize:I

    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconScale:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotPaint:Landroid/graphics/Paint;

    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mVisibleState:I

    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAmount:F

    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCurrentSetColor:I

    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAnimationStartColor:I

    new-instance v0, Lcom/android/systemui/statusbar/-$Lambda$8GVkhItfkCKqtDvTlHTILsytvsQ$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/-$Lambda$8GVkhItfkCKqtDvTlHTILsytvsQ$1;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCachedContrastBackgroundColor:I

    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDozer:Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mBlocked:Z

    iput-object p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberPain:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberPain:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberPain:Landroid/graphics/Paint;

    const v1, 0x7f08048c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberPain:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setNotification(Landroid/service/notification/StatusBarNotification;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->maybeUpdateIconScaleDimens()V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDensity:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/service/notification/StatusBarNotification;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10600f5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->reloadDimens()V

    return-void
.end method

.method public static contentDescForNotification(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/String;
    .locals 11

    const-string/jumbo v1, ""

    :try_start_0
    invoke-static {p0, p1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->loadHeaderAppName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    iget-object v9, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v10, "android.title"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    iget-object v9, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v10, "android.text"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v7, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v8, v5

    :goto_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    move-object v3, v8

    :goto_2
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    const/4 v10, 0x1

    aput-object v3, v9, v10

    const v10, 0x7f120060

    invoke-virtual {p0, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    return-object v9

    :catch_0
    move-exception v4

    const-string/jumbo v9, "StatusBarIconView"

    const-string/jumbo v10, "Unable to recover builder"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v9, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v10, "android.appInfo"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    instance-of v9, v0, Landroid/content/pm/ApplicationInfo;

    if-eqz v9, :cond_0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v8, v7

    goto :goto_1

    :cond_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    move-object v3, v6

    goto :goto_2

    :cond_3
    const-string/jumbo v3, ""

    goto :goto_2
.end method

.method public static getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;
    .locals 7

    iget-object v4, p1, Lcom/android/internal/statusbar/StatusBarIcon;->user:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    :cond_0
    iget-object v4, p1, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v4, p0, v3}, Landroid/graphics/drawable/Icon;->loadDrawableAsUser(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070681

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v2, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v1, v4

    if-nez v4, :cond_1

    return-object v0

    :cond_1
    new-instance v4, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    invoke-direct {v4, v0, v1}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    return-object v4
.end method

.method private getIcon(Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private maybeUpdateIconScaleDimens()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/service/notification/StatusBarNotification;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAlwaysScaleIcon:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateIconScaleDimens()V

    :cond_1
    return-void
.end method

.method private reloadDimens()V
    .locals 3

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotRadius:F

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStaticDotRadius:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07046a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStaticDotRadius:I

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStaticDotRadius:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotRadius:F

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private runRunnable(Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private setColorInternal(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCurrentSetColor:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateIconColor()V

    return-void
.end method

.method private setContentDescription(Landroid/app/Notification;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->contentDescForNotification(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateContrastedStaticColor()V
    .locals 4

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCachedContrastBackgroundColor:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    const/16 v3, 0xff

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDrawableColor:I

    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mContrastedDrawableColor:I

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDrawableColor:I

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCachedContrastBackgroundColor:I

    invoke-static {v2, v0}, Lcom/android/internal/util/NotificationColorUtil;->satisfiesTextContrast(II)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x3

    new-array v1, v2, [F

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDrawableColor:I

    invoke-static {v2, v1}, Landroid/support/v4/graphics/ColorUtils;->colorToHSL(I[F)V

    const/4 v2, 0x1

    aget v2, v1, v2

    const v3, 0x3e4ccccd    # 0.2f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    const/4 v0, 0x0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCachedContrastBackgroundColor:I

    invoke-static {v2, v0, v3}, Lcom/android/internal/util/NotificationColorUtil;->resolveContrastColor(Landroid/content/Context;II)I

    move-result v0

    :cond_2
    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mContrastedDrawableColor:I

    return-void
.end method

.method private updateDecorColor()V
    .locals 4

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDecorColor:I

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDarkAmount:F

    const/4 v3, -0x1

    invoke-static {v1, v3, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(IIF)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAppearAmount:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->invalidate()V

    :cond_0
    return-void
.end method

.method private updateDrawable(Z)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    if-nez v2, :cond_0

    return v5

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v2, "StatusBarIconView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No icon for slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v4, v4, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :catch_0
    move-exception v1

    const-string/jumbo v2, "StatusBarIconView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "OOM while inflating "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v4, v4, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " for slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x1

    return v2
.end method

.method private updateIconColor()V
    .locals 3

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCurrentSetColor:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCurrentSetColor:I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDarkAmount:F

    const/4 v2, -0x1

    invoke-static {v0, v2, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(IIF)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDozer:Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDarkAmount:F

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->updateGrayscale(Landroid/widget/ImageView;F)V

    goto :goto_0
.end method

.method private updateIconScale()V
    .locals 5

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSize:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSizeDark:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDarkAmount:F

    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconSize:I

    int-to-float v2, v1

    div-float v2, v0, v2

    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconScale:F

    return-void
.end method

.method private updateIconScaleDimens()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070438

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconSize:I

    const v1, 0x7f07067f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSizeDark:I

    const v1, 0x7f07067e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSize:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateIconScale()V

    return-void
.end method


# virtual methods
.method protected debug(I)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AnimatedImageView;->debug(I)V

    const-string/jumbo v0, "View"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->debugIndent(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "slot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "View"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->debugIndent(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "icon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public equalIcons(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v3

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    return v1

    :pswitch_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v3

    if-ne v2, v3, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method getContrastedStaticDrawableColor(I)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCachedContrastBackgroundColor:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCachedContrastBackgroundColor:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateContrastedStaticColor()V

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mContrastedDrawableColor:I

    return v0
.end method

.method public getDotAppearAmount()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAppearAmount:F

    return v0
.end method

.method public getIconAppearAmount()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAmount:F

    return v0
.end method

.method public getIconScale()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconScale:F

    return v0
.end method

.method public getIconScaleFullyDark()F
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSizeDark:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getNotification()Landroid/service/notification/StatusBarNotification;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/service/notification/StatusBarNotification;

    return-object v0
.end method

.method public getSourceIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getStaticDrawableColor()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDrawableColor:I

    return v0
.end method

.method public getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    return-object v0
.end method

.method public getVisibleState()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mVisibleState:I

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$-com_android_systemui_statusbar_StatusBarIconView_27532(Ljava/lang/Float;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDarkAmount:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateIconScale()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDecorColor()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateIconColor()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_StatusBarIconView_4698(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAnimationStartColor:I

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconColor:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(IIF)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setColorInternal(I)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AnimatedImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDensity:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDensity:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->maybeUpdateIconScaleDimens()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDrawable()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->reloadDimens()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAmount:F

    cmpl-float v3, v3, v8

    if-lez v3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconScale:F

    iget v4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAmount:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconScale:F

    iget v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAmount:F

    mul-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AnimatedImageView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberText:Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberX:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberY:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberPain:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAppearAmount:F

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAppearAmount:F

    cmpg-float v3, v3, v7

    if-gtz v3, :cond_3

    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotRadius:F

    iget v4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAppearAmount:F

    mul-float v2, v3, v4

    const v0, 0x3f333333    # 0.7f

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_2
    return-void

    :cond_3
    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAppearAmount:F

    sub-float v1, v3, v7

    sub-float v0, v7, v1

    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotRadius:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    int-to-float v4, v4

    invoke-static {v3, v4, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v2

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AnimatedImageView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/service/notification/StatusBarNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AnimatedImageView;->onRtlPropertiesChanged(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDrawable()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/AnimatedImageView;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->placeNumber()V

    :cond_0
    return-void
.end method

.method placeNumber()V
    .locals 13

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10e0003

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget v10, v10, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    if-le v10, v7, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1040017

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_0
    iput-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberText:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getHeight()I

    move-result v3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberPain:Landroid/graphics/Paint;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v10, v5, v12, v11, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v10, v4, Landroid/graphics/Rect;->right:I

    iget v11, v4, Landroid/graphics/Rect;->left:I

    sub-int v8, v10, v11

    iget v10, v4, Landroid/graphics/Rect;->bottom:I

    iget v11, v4, Landroid/graphics/Rect;->top:I

    sub-int v6, v10, v11

    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v10, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v8

    iget v11, v4, Landroid/graphics/Rect;->right:I

    add-int v1, v10, v11

    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v10

    if-ge v1, v10, :cond_0

    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    :cond_0
    iget v10, v4, Landroid/graphics/Rect;->right:I

    sub-int v10, v9, v10

    iget v11, v4, Landroid/graphics/Rect;->right:I

    sub-int v11, v1, v11

    iget v12, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    iput v10, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberX:I

    iget v10, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v6

    iget v11, v4, Landroid/graphics/Rect;->bottom:I

    add-int v0, v10, v11

    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v10

    if-ge v0, v10, :cond_1

    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    :cond_1
    iget v10, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v10, v3, v10

    iget v11, v4, Landroid/graphics/Rect;->top:I

    sub-int v11, v0, v11

    sub-int/2addr v11, v6

    iget v12, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    iput v10, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberY:I

    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    sub-int v11, v9, v1

    sub-int v12, v3, v0

    invoke-virtual {v10, v11, v12, v9, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void

    :cond_2
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v2

    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget v10, v10, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    int-to-long v10, v10

    invoke-virtual {v2, v10, v11}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public set(Lcom/android/internal/statusbar/StatusBarIcon;)Z
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v5, v5, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    iget-object v6, p1, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p0, v5, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->equalIcons(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget v5, v5, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    iget v6, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    if-ne v5, v6, :cond_1

    const/4 v1, 0x1

    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-boolean v5, v5, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    iget-boolean v6, p1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-ne v5, v6, :cond_3

    const/4 v3, 0x1

    :goto_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget v5, v5, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    iget v6, p1, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    if-ne v5, v6, :cond_5

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {p1}, Lcom/android/internal/statusbar/StatusBarIcon;->clone()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v5, p1, Lcom/android/internal/statusbar/StatusBarIcon;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    if-nez v0, :cond_8

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDrawable(Z)Z

    move-result v5

    if-nez v5, :cond_7

    return v4

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    goto :goto_3

    :cond_7
    const v5, 0x7f0a0223

    invoke-virtual {p0, v5, v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->setTag(ILjava/lang/Object;)V

    :cond_8
    if-nez v1, :cond_9

    iget v5, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageLevel(I)V

    :cond_9
    if-nez v2, :cond_b

    iget v5, p1, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    if-lez v5, :cond_d

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050021

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_a

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08027b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->placeNumber()V

    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->invalidate()V

    :cond_b
    if-nez v3, :cond_c

    iget-boolean v5, p1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-eqz v5, :cond_e

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mBlocked:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_e

    :goto_5
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    :cond_c
    const/4 v4, 0x1

    return v4

    :cond_d
    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberText:Ljava/lang/String;

    goto :goto_4

    :cond_e
    const/16 v4, 0x8

    goto :goto_5
.end method

.method public setDark(ZZJ)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDozer:Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    new-instance v1, Lcom/android/systemui/statusbar/-$Lambda$8GVkhItfkCKqtDvTlHTILsytvsQ$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/-$Lambda$8GVkhItfkCKqtDvTlHTILsytvsQ$2;-><init>(Ljava/lang/Object;)V

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->setIntensityDark(Ljava/util/function/Consumer;ZZJ)V

    return-void
.end method

.method public setDecorColor(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDecorColor:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDecorColor()V

    return-void
.end method

.method public setDotAppearAmount(F)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAppearAmount:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAppearAmount:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setIconAppearAmount(F)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAmount:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAmount:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setIconColor(IZ)V
    .locals 4

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconColor:I

    if-eq v0, p1, :cond_2

    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconColor:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCurrentSetColor:I

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCurrentSetColor:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCurrentSetColor:I

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAnimationStartColor:I

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/StatusBarIconView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/StatusBarIconView$3;-><init>(Lcom/android/systemui/statusbar/StatusBarIconView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setColorInternal(I)V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setNotification(Landroid/service/notification/StatusBarNotification;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/service/notification/StatusBarNotification;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setContentDescription(Landroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method public setOnVisibilityChangedListener(Lcom/android/systemui/statusbar/StatusBarIconView$OnVisibilityChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mOnVisibilityChangedListener:Lcom/android/systemui/statusbar/StatusBarIconView$OnVisibilityChangedListener;

    return-void
.end method

.method public setStaticDrawableColor(I)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDrawableColor:I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setColorInternal(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateContrastedStaticColor()V

    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconColor:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDozer:Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->setColor(I)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AnimatedImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mOnVisibilityChangedListener:Lcom/android/systemui/statusbar/StatusBarIconView$OnVisibilityChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mOnVisibilityChangedListener:Lcom/android/systemui/statusbar/StatusBarIconView$OnVisibilityChangedListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView$OnVisibilityChangedListener;->onVisibilityChanged(I)V

    :cond_0
    return-void
.end method

.method public setVisibleState(IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(IZLjava/lang/Runnable;)V

    return-void
.end method

.method public setVisibleState(IZLjava/lang/Runnable;)V
    .locals 11

    const/4 v10, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    iget v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mVisibleState:I

    if-eq p1, v5, :cond_5

    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mVisibleState:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    if-eqz p2, :cond_8

    const/4 v4, 0x0

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    if-nez p1, :cond_2

    const/high16 v4, 0x3f800000    # 1.0f

    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIconAppearAmount()F

    move-result v0

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/systemui/statusbar/StatusBarIconView;->ICON_APPEAR_AMOUNT:Landroid/util/Property;

    new-array v6, v10, [F

    aput v0, v6, v8

    aput v4, v6, v9

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAnimator:Landroid/animation/ObjectAnimator;

    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v6, 0x64

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAnimator:Landroid/animation/ObjectAnimator;

    new-instance v6, Lcom/android/systemui/statusbar/StatusBarIconView$4;

    invoke-direct {v6, p0, p3}, Lcom/android/systemui/statusbar/StatusBarIconView$4;-><init>(Lcom/android/systemui/statusbar/StatusBarIconView;Ljava/lang/Runnable;)V

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    const/4 v3, 0x1

    :cond_3
    if-nez p1, :cond_7

    const/high16 v4, 0x40000000    # 2.0f

    :goto_0
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    if-ne p1, v9, :cond_4

    const/high16 v4, 0x3f800000    # 1.0f

    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getDotAppearAmount()F

    move-result v0

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_5

    sget-object v5, Lcom/android/systemui/statusbar/StatusBarIconView;->DOT_APPEAR_AMOUNT:Landroid/util/Property;

    new-array v6, v10, [F

    aput v0, v6, v8

    aput v4, v6, v9

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAnimator:Landroid/animation/ObjectAnimator;

    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v6, 0x64

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    xor-int/lit8 v2, v3, 0x1

    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAnimator:Landroid/animation/ObjectAnimator;

    new-instance v6, Lcom/android/systemui/statusbar/StatusBarIconView$5;

    invoke-direct {v6, p0, v2, p3}, Lcom/android/systemui/statusbar/StatusBarIconView$5;-><init>(Lcom/android/systemui/statusbar/StatusBarIconView;ZLjava/lang/Runnable;)V

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    const/4 v3, 0x1

    :cond_5
    :goto_1
    if-nez v3, :cond_6

    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/StatusBarIconView;->runRunnable(Ljava/lang/Runnable;)V

    :cond_6
    return-void

    :cond_7
    const/4 v4, 0x0

    goto :goto_0

    :cond_8
    if-nez p1, :cond_9

    move v5, v6

    :goto_2
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->setIconAppearAmount(F)V

    if-ne p1, v9, :cond_a

    :goto_3
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDotAppearAmount(F)V

    goto :goto_1

    :cond_9
    move v5, v7

    goto :goto_2

    :cond_a
    if-nez p1, :cond_b

    const/high16 v6, 0x40000000    # 2.0f

    goto :goto_3

    :cond_b
    move v6, v7

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "StatusBarIconView(slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " notification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDrawable()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDrawable(Z)Z

    return-void
.end method
