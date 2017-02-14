.class public Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;
.super Ljava/lang/Object;
.source "OpenThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/theme/OpenThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThemeStyle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;
    }
.end annotation


# instance fields
.field private allapps:Landroid/graphics/drawable/Drawable;

.field private appTitleBg:Landroid/graphics/drawable/Drawable;

.field private appTrayBg:Landroid/graphics/drawable/Drawable;

.field private apps_fontColor:I

.field private badgeBg:Landroid/graphics/drawable/Drawable;

.field private badgeBgColor:I

.field private badgeTextColor:I

.field private enableAppTitle:Z

.field private enableShadow:Z

.field private fontStyle:Landroid/graphics/Typeface;

.field private home_fontColor:I

.field private home_textShadowColor:I

.field private key:[Ljava/lang/String;

.field private mThemeManager:Lcom/android/launcher2/theme/OpenThemeManager;

.field private pageIndicatorDefault:Landroid/graphics/drawable/Drawable;

.field private pageIndicatorHeadlines:Landroid/graphics/drawable/Drawable;

.field private pageIndicatorHome:Landroid/graphics/drawable/Drawable;

.field private text_highlight:I

.field private transitionEffect:I

.field private useImageForBadge:Z


# direct methods
.method constructor <init>(Lcom/android/launcher2/theme/OpenThemeManager;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1ffffff

    iput v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->home_textShadowColor:I

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "homescreen_menu_page_navi_home_f"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "homescreen_menu_page_navi_default_f"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "homescreen_menu_page_navi_headlines_f"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "enable_shadow"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "enable_title"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "font"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "title_background"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "home_title_color"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "apps_title_color"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ic_allapps"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "homescreen_apps_bg"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "page_transition_effect"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "material_blue_grey_900"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "counter_bubble"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "badge_bg_color"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "badge_text_color"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "enable_text_shadow"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "text_shadow_color"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->key:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->mThemeManager:Lcom/android/launcher2/theme/OpenThemeManager;

    iput-object p1, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->mThemeManager:Lcom/android/launcher2/theme/OpenThemeManager;

    return-void
.end method

.method private setBadgeImage()V
    .locals 4

    iget-object v2, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->badgeBg:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->badgeBgColor:I

    const v3, 0x1ffffff

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->mThemeManager:Lcom/android/launcher2/theme/OpenThemeManager;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020055

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->badgeBgColor:I

    invoke-static {v1, v2}, Lcom/android/launcher2/theme/ThemeUtils;->getNinepatchWithColor(Landroid/graphics/Bitmap;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->badgeBg:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->useImageForBadge:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->useImageForBadge:Z

    goto :goto_0
.end method


# virtual methods
.method public getAllapps()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->allapps:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getAppTitleBg()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->appTitleBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getAppTrayBg()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->appTrayBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getAppsTextColor()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->apps_fontColor:I

    return v0
.end method

.method public getBadgeBg()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->badgeBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBadgeTextColor()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->badgeTextColor:I

    return v0
.end method

.method public getFontStyle()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->fontStyle:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getHomeTextColor()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->home_fontColor:I

    return v0
.end method

.method public getHomeTextShadowColor()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->home_textShadowColor:I

    return v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->key:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPageIndicatorDefault()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->pageIndicatorDefault:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPageIndicatorHeadlines()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->pageIndicatorHeadlines:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPageIndicatorHome()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->pageIndicatorHome:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getText_highlight()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->text_highlight:I

    return v0
.end method

.method public getTransitionEffect()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->transitionEffect:I

    return v0
.end method

.method public getUseImageForBadge()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->useImageForBadge:Z

    return v0
.end method

.method public isEnableAppTitle()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->enableAppTitle:Z

    return v0
.end method

.method public isEnableShadow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->enableShadow:Z

    return v0
.end method

.method public readShadowColor()V
    .locals 4

    const/4 v3, 0x0

    # getter for: Lcom/android/launcher2/theme/OpenThemeManager;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->access$300()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "need_dark_font"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->mThemeManager:Lcom/android/launcher2/theme/OpenThemeManager;

    iget-object v1, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->key:[Ljava/lang/String;

    sget-object v2, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;->TEXT_SHADOW_COLOR:Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;->value()I

    move-result v2

    aget-object v1, v1, v2

    sget-object v2, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->HOME:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/launcher2/theme/OpenThemeManager;->getEachItemforColorType(Ljava/lang/String;ZI)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->home_textShadowColor:I

    :cond_0
    return-void
.end method

.method public readTextColor()V
    .locals 4

    const/4 v3, 0x0

    # getter for: Lcom/android/launcher2/theme/OpenThemeManager;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->access$300()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "need_dark_font"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->mThemeManager:Lcom/android/launcher2/theme/OpenThemeManager;

    # getter for: Lcom/android/launcher2/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher2/theme/OpenThemeLoader;
    invoke-static {v0}, Lcom/android/launcher2/theme/OpenThemeManager;->access$000(Lcom/android/launcher2/theme/OpenThemeManager;)Lcom/android/launcher2/theme/OpenThemeLoader;

    move-result-object v0

    const-string v1, "icon_title_dark_font_color"

    invoke-virtual {v0, v1}, Lcom/android/launcher2/theme/OpenThemeLoader;->getItemColorforDefaultResource(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->home_fontColor:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->mThemeManager:Lcom/android/launcher2/theme/OpenThemeManager;

    iget-object v1, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->key:[Ljava/lang/String;

    sget-object v2, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;->HOME_TEXT_COLOR:Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;->value()I

    move-result v2

    aget-object v1, v1, v2

    sget-object v2, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->HOME:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/launcher2/theme/OpenThemeManager;->getEachItemforColorType(Ljava/lang/String;ZI)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->home_fontColor:I

    goto :goto_0
.end method

.method public setHomeTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->home_fontColor:I

    return-void
.end method

.method setTheme()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->mThemeManager:Lcom/android/launcher2/theme/OpenThemeManager;

    iget-object v1, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->key:[Ljava/lang/String;

    sget-object v2, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;->SHADOW:Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;->value()I

    move-result v2

    aget-object v1, v1, v2

    sget-object v2, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->HOME:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/launcher2/theme/OpenThemeManager;->getEachItemforBooleanType(Ljava/lang/String;ZI)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->enableShadow:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->enableAppTitle:Z

    invoke-virtual {p0}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->readTextColor()V

    iget-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->mThemeManager:Lcom/android/launcher2/theme/OpenThemeManager;

    # getter for: Lcom/android/launcher2/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher2/theme/OpenThemeLoader;
    invoke-static {v0}, Lcom/android/launcher2/theme/OpenThemeManager;->access$000(Lcom/android/launcher2/theme/OpenThemeManager;)Lcom/android/launcher2/theme/OpenThemeLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->key:[Ljava/lang/String;

    sget-object v2, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;->APPS_TEXT_COLOR:Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;->value()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/theme/OpenThemeLoader;->getItemColorforDefaultResource(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->apps_fontColor:I

    iget-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->mThemeManager:Lcom/android/launcher2/theme/OpenThemeManager;

    iget-object v1, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->mThemeManager:Lcom/android/launcher2/theme/OpenThemeManager;

    iget-object v2, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->key:[Ljava/lang/String;

    sget-object v3, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;->FONT:Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;

    invoke-virtual {v3}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;->value()I

    move-result v3

    aget-object v2, v2, v3

    sget-object v3, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->HOME:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v3}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/theme/OpenThemeManager;->getEachItemforStringType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/theme/OpenThemeManager;->getFontStyle(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->fontStyle:Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->mThemeManager:Lcom/android/launcher2/theme/OpenThemeManager;

    iget-object v1, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->key:[Ljava/lang/String;

    sget-object v2, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;->TITLE_BACKGROUND:Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;->value()I

    move-result v2

    aget-object v1, v1, v2

    sget-object v2, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->HOME:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v2

    # invokes: Lcom/android/launcher2/theme/OpenThemeManager;->getEachItemforDrawableType(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1, v2}, Lcom/android/launcher2/theme/OpenThemeManager;->access$100(Lcom/android/launcher2/theme/OpenThemeManager;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->appTitleBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->readShadowColor()V

    iget-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->mThemeManager:Lcom/android/launcher2/theme/OpenThemeManager;

    iget-object v1, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->key:[Ljava/lang/String;

    sget-object v2, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;->PAGEINDICATOR_HOME:Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;->value()I

    move-result v2

    aget-object v1, v1, v2

    sget-object v2, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->HOME:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v2

    # invokes: Lcom/android/launcher2/theme/OpenThemeManager;->getEachItemforDrawableType(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1, v2}, Lcom/android/launcher2/theme/OpenThemeManager;->access$100(Lcom/android/launcher2/theme/OpenThemeManager;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->pageIndicatorHome:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->mThemeManager:Lcom/android/launcher2/theme/OpenThemeManager;

    iget-object v1, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->key:[Ljava/lang/String;

    sget-object v2, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;->PAGEINDICATOR_DEFAULT:Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;->value()I

    move-result v2

    aget-object v1, v1, v2

    sget-object v2, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->HOME:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v2

    # invokes: Lcom/android/launcher2/theme/OpenThemeManager;->getEachItemforDrawableType(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1, v2}, Lcom/android/launcher2/theme/OpenThemeManager;->access$100(Lcom/android/launcher2/theme/OpenThemeManager;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->pageIndicatorDefault:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->mThemeManager:Lcom/android/launcher2/theme/OpenThemeManager;

    iget-object v1, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->key:[Ljava/lang/String;

    sget-object v2, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;->PAGEINDICATOR_HEADLINE:Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;->value()I

    move-result v2

    aget-object v1, v1, v2

    sget-object v2, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->HOME:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v2

    # invokes: Lcom/android/launcher2/theme/OpenThemeManager;->getEachItemforDrawableType(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1, v2}, Lcom/android/launcher2/theme/OpenThemeManager;->access$100(Lcom/android/launcher2/theme/OpenThemeManager;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->pageIndicatorHeadlines:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->mThemeManager:Lcom/android/launcher2/theme/OpenThemeManager;

    iget-object v1, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->key:[Ljava/lang/String;

    sget-object v2, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;->ALL_APPS_ICON:Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;->value()I

    move-result v2

    aget-object v1, v1, v2

    sget-object v2, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->APP_ICON:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v2

    # invokes: Lcom/android/launcher2/theme/OpenThemeManager;->getEachItemforDrawableType(Ljava/lang/String;ZI)Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1, v4, v2}, Lcom/android/launcher2/theme/OpenThemeManager;->access$200(Lcom/android/launcher2/theme/OpenThemeManager;Ljava/lang/String;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->allapps:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->mThemeManager:Lcom/android/launcher2/theme/OpenThemeManager;

    iget-object v1, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->key:[Ljava/lang/String;

    sget-object v2, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;->APPS_TRAY_BG:Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;->value()I

    move-result v2

    aget-object v1, v1, v2

    sget-object v2, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->HOME:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v2

    # invokes: Lcom/android/launcher2/theme/OpenThemeManager;->getEachItemforDrawableType(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1, v2}, Lcom/android/launcher2/theme/OpenThemeManager;->access$100(Lcom/android/launcher2/theme/OpenThemeManager;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->appTrayBg:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->mThemeManager:Lcom/android/launcher2/theme/OpenThemeManager;

    iget-object v1, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->key:[Ljava/lang/String;

    sget-object v2, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;->TRANSITON_EFFECT:Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;->value()I

    move-result v2

    aget-object v1, v1, v2

    sget-object v2, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->HOME:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/theme/OpenThemeManager;->getEachItemforIntegerType(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->transitionEffect:I

    iget v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->transitionEffect:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->transitionEffect:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->transitionEffect:I

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->mThemeManager:Lcom/android/launcher2/theme/OpenThemeManager;

    iget-object v1, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->key:[Ljava/lang/String;

    sget-object v2, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;->TEXT_HIGHLIGHT:Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;->value()I

    move-result v2

    aget-object v1, v1, v2

    sget-object v2, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->WINSET:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/launcher2/theme/OpenThemeManager;->getEachItemforColorType(Ljava/lang/String;ZI)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->text_highlight:I

    iget-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->mThemeManager:Lcom/android/launcher2/theme/OpenThemeManager;

    # getter for: Lcom/android/launcher2/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher2/theme/OpenThemeLoader;
    invoke-static {v0}, Lcom/android/launcher2/theme/OpenThemeManager;->access$000(Lcom/android/launcher2/theme/OpenThemeManager;)Lcom/android/launcher2/theme/OpenThemeLoader;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->WINSET:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v1}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/theme/OpenThemeLoader;->isThemeInstalled(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->mThemeManager:Lcom/android/launcher2/theme/OpenThemeManager;

    iget-object v1, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->key:[Ljava/lang/String;

    sget-object v2, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;->TEXT_HIGHLIGHT:Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;->value()I

    move-result v2

    aget-object v1, v1, v2

    sget-object v2, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->HOME:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/launcher2/theme/OpenThemeManager;->getEachItemforColorType(Ljava/lang/String;ZI)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->text_highlight:I

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->mThemeManager:Lcom/android/launcher2/theme/OpenThemeManager;

    iget-object v1, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->key:[Ljava/lang/String;

    sget-object v2, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;->BADGE_BG_COLOR:Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;->value()I

    move-result v2

    aget-object v1, v1, v2

    sget-object v2, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->BADGE:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/launcher2/theme/OpenThemeManager;->getEachItemforColorType(Ljava/lang/String;ZI)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->badgeBgColor:I

    iget-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->mThemeManager:Lcom/android/launcher2/theme/OpenThemeManager;

    iget-object v1, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->key:[Ljava/lang/String;

    sget-object v2, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;->BADGE_TEXT_COLOR:Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;->value()I

    move-result v2

    aget-object v1, v1, v2

    sget-object v2, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->BADGE:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/launcher2/theme/OpenThemeManager;->getEachItemforColorType(Ljava/lang/String;ZI)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->badgeTextColor:I

    iget-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->mThemeManager:Lcom/android/launcher2/theme/OpenThemeManager;

    iget-object v1, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->key:[Ljava/lang/String;

    sget-object v2, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;->BADGE_BG:Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;->value()I

    move-result v2

    aget-object v1, v1, v2

    sget-object v2, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->BADGE:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v2

    # invokes: Lcom/android/launcher2/theme/OpenThemeManager;->getEachItemforDrawableType(Ljava/lang/String;ZI)Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1, v4, v2}, Lcom/android/launcher2/theme/OpenThemeManager;->access$200(Lcom/android/launcher2/theme/OpenThemeManager;Ljava/lang/String;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->badgeBg:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->mThemeManager:Lcom/android/launcher2/theme/OpenThemeManager;

    # getter for: Lcom/android/launcher2/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher2/theme/OpenThemeLoader;
    invoke-static {v0}, Lcom/android/launcher2/theme/OpenThemeManager;->access$000(Lcom/android/launcher2/theme/OpenThemeManager;)Lcom/android/launcher2/theme/OpenThemeLoader;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->BADGE:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v1}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/theme/OpenThemeLoader;->isThemeInstalled(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->mThemeManager:Lcom/android/launcher2/theme/OpenThemeManager;

    iget-object v1, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->key:[Ljava/lang/String;

    sget-object v2, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;->BADGE_BG_COLOR:Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;->value()I

    move-result v2

    aget-object v1, v1, v2

    sget-object v2, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->HOME:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/launcher2/theme/OpenThemeManager;->getEachItemforColorType(Ljava/lang/String;ZI)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->badgeBgColor:I

    iget-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->mThemeManager:Lcom/android/launcher2/theme/OpenThemeManager;

    iget-object v1, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->key:[Ljava/lang/String;

    sget-object v2, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;->BADGE_TEXT_COLOR:Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;->value()I

    move-result v2

    aget-object v1, v1, v2

    sget-object v2, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->HOME:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/launcher2/theme/OpenThemeManager;->getEachItemforColorType(Ljava/lang/String;ZI)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->badgeTextColor:I

    iget-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->mThemeManager:Lcom/android/launcher2/theme/OpenThemeManager;

    iget-object v1, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->key:[Ljava/lang/String;

    sget-object v2, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;->BADGE_BG:Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;->value()I

    move-result v2

    aget-object v1, v1, v2

    sget-object v2, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->HOME:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v2

    # invokes: Lcom/android/launcher2/theme/OpenThemeManager;->getEachItemforDrawableType(Ljava/lang/String;ZI)Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1, v4, v2}, Lcom/android/launcher2/theme/OpenThemeManager;->access$200(Lcom/android/launcher2/theme/OpenThemeManager;Ljava/lang/String;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->badgeBg:Landroid/graphics/drawable/Drawable;

    :cond_3
    invoke-direct {p0}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->setBadgeImage()V

    return-void
.end method
