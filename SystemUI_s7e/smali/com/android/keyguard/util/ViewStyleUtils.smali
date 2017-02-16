.class public Lcom/android/keyguard/util/ViewStyleUtils;
.super Ljava/lang/Object;
.source "ViewStyleUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/util/ViewStyleUtils$UpdatedFrom;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/keyguard/util/ViewStyleUtils;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFontEffectUtil:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/util/ViewStyleUtils;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;

    iget-object v1, p0, Lcom/android/keyguard/util/ViewStyleUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/util/ViewStyleUtils;->mFontEffectUtil:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;
    .locals 1

    sget-object v0, Lcom/android/keyguard/util/ViewStyleUtils;->sInstance:Lcom/android/keyguard/util/ViewStyleUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/util/ViewStyleUtils;

    invoke-direct {v0, p0}, Lcom/android/keyguard/util/ViewStyleUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/util/ViewStyleUtils;->sInstance:Lcom/android/keyguard/util/ViewStyleUtils;

    :cond_0
    sget-object v0, Lcom/android/keyguard/util/ViewStyleUtils;->sInstance:Lcom/android/keyguard/util/ViewStyleUtils;

    return-object v0
.end method


# virtual methods
.method public getColorFromColorType(I)I
    .locals 3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/util/ViewStyleUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    return v1

    :pswitch_0
    sget v0, Lcom/android/keyguard/R$color;->theme_textclock_color:I

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    goto :goto_0

    :pswitch_2
    sget v0, Lcom/android/keyguard/R$color;->theme_keyguard_message_area_text_color:I

    goto :goto_0

    :pswitch_3
    sget v0, Lcom/android/keyguard/R$color;->theme_pin_digit_text_color:I

    goto :goto_0

    :pswitch_4
    sget v0, Lcom/android/keyguard/R$color;->theme_pin_text_color:I

    goto :goto_0

    :pswitch_5
    sget v0, Lcom/android/keyguard/R$color;->theme_pin_klondike_text_color:I

    goto :goto_0

    :pswitch_6
    sget v0, Lcom/android/keyguard/R$color;->theme_keyguard_indication_text_color:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getCurrentLookType()I
    .locals 5

    iget-object v4, p0, Lcom/android/keyguard/util/ViewStyleUtils;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/util/SettingsHelper;->getActiveThemePackage()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/keyguard/util/ViewStyleUtils;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v3

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-nez v3, :cond_1

    if-eqz v1, :cond_4

    :cond_1
    if-nez v3, :cond_5

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    :cond_2
    :goto_1
    return v0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_6

    if-eqz v1, :cond_7

    :cond_6
    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :cond_7
    const/4 v0, 0x2

    goto :goto_1
.end method

.method public setTextFontEffect(Landroid/widget/TextView;)V
    .locals 4

    iget-object v1, p0, Lcom/android/keyguard/util/ViewStyleUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->theme_clockfont_effect_type:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "ViewStyleUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "font effect info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/util/ViewStyleUtils;->mFontEffectUtil:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->parsingFontEffectString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/util/ViewStyleUtils;->mFontEffectUtil:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;

    invoke-static {p1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->setTextFontEffect(Landroid/widget/TextView;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "ViewStyleUtils"

    const-string/jumbo v2, "font effect info: null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateButtonOuterlineColor(Landroid/widget/TextView;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    iget-object v4, p0, Lcom/android/keyguard/util/ViewStyleUtils;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/util/ViewStyleUtils;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/keyguard/R$drawable;->ripple_effect_transparent_black_button_drawable:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/util/ViewStyleUtils;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/keyguard/R$drawable;->ripple_effect_transparent_button_drawable:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public updateImageStyle(III)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/util/ViewStyleUtils;->getCurrentLookType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_0
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/keyguard/util/ViewStyleUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-object v1

    :pswitch_0
    move v2, p1

    goto :goto_0

    :pswitch_1
    move v2, p2

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0, p3}, Lcom/android/keyguard/util/ViewStyleUtils;->getColorFromColorType(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :pswitch_2
    move v2, p2

    goto :goto_0

    :pswitch_3
    move v2, p2

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const v4, -0xbbbbbc

    invoke-direct {v0, v4, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public updateViewStyle(Landroid/widget/TextView;I)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/keyguard/util/ViewStyleUtils;->getColorFromColorType(I)I

    move-result v1

    const v0, -0xbbbbbc

    invoke-virtual {p1}, Landroid/widget/TextView;->semClearAllTextEffect()V

    invoke-virtual {p0}, Lcom/android/keyguard/util/ViewStyleUtils;->getCurrentLookType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getShadowDx()F

    move-result v3

    invoke-virtual {p1}, Landroid/widget/TextView;->getShadowDy()F

    move-result v4

    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    return-void

    :pswitch_0
    const/high16 v0, -0x80000000

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    const v1, -0xbbbbbc

    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
