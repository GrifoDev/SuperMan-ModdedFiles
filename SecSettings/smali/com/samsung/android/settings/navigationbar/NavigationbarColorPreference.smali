.class public Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;
.super Landroid/support/v7/preference/Preference;
.source "NavigationbarColorPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$1;,
        Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$2;,
        Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;
    }
.end annotation


# static fields
.field private static sBackgroundColor:I

.field private static sSelectedColorIndex:I


# instance fields
.field private color_value:[I

.field private mAdapter:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;

.field public mColorPickerDialog:Lcom/samsung/android/app/SemColorPickerDialog;

.field private mContext:Landroid/content/Context;

.field private mGrid:Landroid/widget/GridView;

.field mOnColorChangedListener:Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;

.field public mOnColorSetListener:Lcom/samsung/android/app/SemColorPickerDialog$OnColorSetListener;

.field private mPreviewBg:Landroid/widget/ImageView;

.field private mPreviewIcon:Landroid/widget/ImageView;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->sBackgroundColor:I

    return v0
.end method

.method static synthetic -get2()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->sSelectedColorIndex:I

    return v0
.end method

.method static synthetic -set0(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->sBackgroundColor:I

    return p0
.end method

.method static synthetic -set1(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->sSelectedColorIndex:I

    return p0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->notifyChanged()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->resetNavigationBarIconColor()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->setNavigationBarPreview(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->updatePreview()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->sSelectedColorIndex:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mColorPickerDialog:Lcom/samsung/android/app/SemColorPickerDialog;

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$1;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mOnColorSetListener:Lcom/samsung/android/app/SemColorPickerDialog$OnColorSetListener;

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$2;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mOnColorChangedListener:Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    const v0, 0x7f0d019e

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->setLayoutResource(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->color_value:[I

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->getSelectedPosition()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->sSelectedColorIndex:I

    return-void
.end method

.method private getNavigationBarIconColor(I)I
    .locals 14

    const-wide v12, 0x3feb333333333333L    # 0.85

    const-wide v10, 0x3fee666666666666L    # 0.95

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v0, 0x0

    const/4 v2, 0x3

    new-array v1, v2, [F

    invoke-static {p1, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    aget v2, v1, v7

    float-to-double v2, v2

    const-wide v4, 0x3fc999999999999aL    # 0.2

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_1

    aget v2, v1, v6

    float-to-double v2, v2

    cmpl-double v2, v2, v10

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f060190

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    :cond_0
    :goto_0
    const-string/jumbo v2, "NavigationbarColorPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get Icon color : bg ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "), icon ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    aget v2, v1, v6

    float-to-double v2, v2

    const-wide v4, 0x3fa999999999999aL    # 0.05

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f06018e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_2
    aget v2, v1, v8

    const/high16 v3, 0x41f00000    # 30.0f

    cmpg-float v2, v2, v3

    if-lez v2, :cond_3

    aget v2, v1, v8

    const/high16 v3, 0x433e0000    # 190.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_8

    aget v2, v1, v8

    const/high16 v3, 0x43b40000    # 360.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_8

    :cond_3
    aget v2, v1, v7

    float-to-double v2, v2

    const-wide v4, 0x3fc999999999999aL    # 0.2

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_5

    aget v2, v1, v7

    float-to-double v2, v2

    const-wide v4, 0x3fdccccccccccccdL    # 0.45

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_5

    aget v2, v1, v6

    float-to-double v2, v2

    cmpl-double v2, v2, v10

    if-ltz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f06018d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto/16 :goto_0

    :cond_5
    aget v2, v1, v7

    float-to-double v2, v2

    const-wide v4, 0x3fdccccccccccccdL    # 0.45

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_6

    aget v2, v1, v6

    float-to-double v2, v2

    cmpl-double v2, v2, v12

    if-ltz v2, :cond_6

    aget v2, v1, v6

    float-to-double v2, v2

    cmpg-double v2, v2, v10

    if-lez v2, :cond_4

    :cond_6
    aget v2, v1, v7

    float-to-double v2, v2

    const-wide v4, 0x3fa999999999999aL    # 0.05

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_7

    aget v2, v1, v6

    float-to-double v2, v2

    const-wide v4, 0x3fe6666666666666L    # 0.7

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_7

    aget v2, v1, v6

    float-to-double v2, v2

    cmpg-double v2, v2, v12

    if-lez v2, :cond_4

    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f06018f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto/16 :goto_0

    :cond_8
    aget v2, v1, v8

    const/high16 v3, 0x42480000    # 50.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_d

    aget v2, v1, v8

    const/high16 v3, 0x43110000    # 145.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_d

    aget v2, v1, v7

    float-to-double v2, v2

    const-wide v4, 0x3fc999999999999aL    # 0.2

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_a

    aget v2, v1, v6

    float-to-double v2, v2

    cmpl-double v2, v2, v10

    if-ltz v2, :cond_a

    :cond_9
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f06018d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto/16 :goto_0

    :cond_a
    aget v2, v1, v6

    float-to-double v2, v2

    cmpl-double v2, v2, v12

    if-ltz v2, :cond_b

    aget v2, v1, v6

    float-to-double v2, v2

    cmpg-double v2, v2, v10

    if-lez v2, :cond_9

    :cond_b
    aget v2, v1, v7

    float-to-double v2, v2

    const-wide v4, 0x3fc999999999999aL    # 0.2

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_c

    aget v2, v1, v6

    float-to-double v2, v2

    const-wide v4, 0x3fe6666666666666L    # 0.7

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_c

    aget v2, v1, v6

    float-to-double v2, v2

    cmpg-double v2, v2, v12

    if-lez v2, :cond_9

    :cond_c
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f06018f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto/16 :goto_0

    :cond_d
    aget v2, v1, v8

    const/high16 v3, 0x41f00000    # 30.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_f

    aget v2, v1, v8

    const/high16 v3, 0x42480000    # 50.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_f

    :goto_1
    aget v2, v1, v7

    float-to-double v2, v2

    const-wide v4, 0x3fc999999999999aL    # 0.2

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_10

    aget v2, v1, v6

    float-to-double v2, v2

    cmpl-double v2, v2, v10

    if-ltz v2, :cond_10

    :cond_e
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f06018d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto/16 :goto_0

    :cond_f
    aget v2, v1, v8

    const/high16 v3, 0x43110000    # 145.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    aget v2, v1, v8

    const/high16 v3, 0x433e0000    # 190.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    goto :goto_1

    :cond_10
    aget v2, v1, v7

    float-to-double v2, v2

    const-wide v4, 0x3fdccccccccccccdL    # 0.45

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_11

    aget v2, v1, v6

    float-to-double v2, v2

    cmpl-double v2, v2, v12

    if-ltz v2, :cond_11

    aget v2, v1, v6

    float-to-double v2, v2

    cmpg-double v2, v2, v10

    if-lez v2, :cond_e

    :cond_11
    aget v2, v1, v7

    float-to-double v2, v2

    const-wide v4, 0x3fc3333333333333L    # 0.15

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_12

    aget v2, v1, v6

    float-to-double v2, v2

    const-wide v4, 0x3fe6666666666666L    # 0.7

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_12

    aget v2, v1, v6

    float-to-double v2, v2

    cmpg-double v2, v2, v12

    if-lez v2, :cond_e

    :cond_12
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f06018f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto/16 :goto_0
.end method

.method private getSelectedPosition()I
    .locals 6

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->color_value:[I

    array-length v3, v3

    add-int/lit8 v2, v3, -0x1

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "navigationbar_color"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->color_value:[I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->color_value:[I

    aget v3, v3, v0

    if-ne v3, v1, :cond_0

    move v2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private resetNavigationBarIconColor()V
    .locals 2

    const-string/jumbo v1, "statusbar"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    return-void
.end method

.method private setNavigationBarPreview(I)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->getNavigationBarIconColor(I)I

    move-result v0

    const-string/jumbo v3, "statusbar"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/PhoneWindow;

    return-void
.end method

.method private updatePreview()V
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mPreviewBg:Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mPreviewIcon:Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "navigationbar_color"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->getNavigationBarIconColor(I)I

    move-result v2

    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    const v6, 0x7f0801bc

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mPreviewBg:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "navigationbar_key_order"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    const v6, 0x7f0801bd

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_0
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v2, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mPreviewIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    const v6, 0x7f0801be

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public getRecentlyUsedColor()[I
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "navigationbar_recently_used_color"

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    return-object v6

    :cond_1
    const-string/jumbo v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    new-array v2, v4, [I

    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    aget-object v4, v3, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public getSemColorPickerDialog()Lcom/samsung/android/app/SemColorPickerDialog;
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->getRecentlyUsedColor()[I

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "navigationbar_color"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v1, :cond_0

    new-instance v2, Lcom/samsung/android/app/SemColorPickerDialog;

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mOnColorSetListener:Lcom/samsung/android/app/SemColorPickerDialog$OnColorSetListener;

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/samsung/android/app/SemColorPickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/app/SemColorPickerDialog$OnColorSetListener;I[I)V

    :goto_0
    invoke-virtual {v2}, Lcom/samsung/android/app/SemColorPickerDialog;->getColorPicker()Lcom/samsung/android/widget/SemColorPicker;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mOnColorChangedListener:Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;

    invoke-virtual {v3, v4}, Lcom/samsung/android/widget/SemColorPicker;->setOnColorChangedListener(Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;)V

    new-instance v3, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$3;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/SemColorPickerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object v2

    :cond_0
    new-instance v2, Lcom/samsung/android/app/SemColorPickerDialog;

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mOnColorSetListener:Lcom/samsung/android/app/SemColorPickerDialog$OnColorSetListener;

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/SemColorPickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/app/SemColorPickerDialog$OnColorSetListener;)V

    goto :goto_0
.end method

.method public isDefaultBackgroundColor()Z
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->getSelectedPosition()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    return v1
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->color_value:[I

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;Landroid/content/Context;[I)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mAdapter:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;

    const v0, 0x7f0a0391

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mGrid:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mAdapter:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f0a0672

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mPreviewBg:Landroid/widget/ImageView;

    const v0, 0x7f0a0674

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mPreviewIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->updateUI()V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mColorPickerDialog:Lcom/samsung/android/app/SemColorPickerDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mColorPickerDialog:Lcom/samsung/android/app/SemColorPickerDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/SemColorPickerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mColorPickerDialog:Lcom/samsung/android/app/SemColorPickerDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/SemColorPickerDialog;->dismiss()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->getSemColorPickerDialog()Lcom/samsung/android/app/SemColorPickerDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mColorPickerDialog:Lcom/samsung/android/app/SemColorPickerDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mColorPickerDialog:Lcom/samsung/android/app/SemColorPickerDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/SemColorPickerDialog;->show()V

    :cond_0
    return-void
.end method

.method public setDefaultBackgroundColor()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "navigationbar_color"

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->color_value:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->updateUI()V

    return-void
.end method

.method public setRecentlyUsedColor(I)V
    .locals 8

    const-string/jumbo v2, ""

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "navigationbar_recently_used_color"

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "navigationbar_recently_used_color"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x6

    if-ge v4, v5, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "navigationbar_recently_used_color"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_2
    const/4 v4, 0x5

    if-ge v0, v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public updateGridNumberColumns(Z)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mGrid:Landroid/widget/GridView;

    if-nez v1, :cond_0

    const-string/jumbo v1, "NavigationbarColorPreference"

    const-string/jumbo v2, "updateGridNumberColumns : mGridView is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mGrid:Landroid/widget/GridView;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070590

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mGrid:Landroid/widget/GridView;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07058c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0
.end method

.method public updateUI()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->updatePreview()V

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->getSelectedPosition()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->sSelectedColorIndex:I

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mAdapter:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mGrid:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mAdapter:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;

    invoke-virtual {v0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mAdapter:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method
