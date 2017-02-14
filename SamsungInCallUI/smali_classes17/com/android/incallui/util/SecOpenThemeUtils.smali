.class public Lcom/android/incallui/util/SecOpenThemeUtils;
.super Ljava/lang/Object;
.source "SecOpenThemeUtils.java"


# static fields
.field public static final INTENT_EXTRA_THEME_FONT_CLOCK_TYPE:Ljava/lang/String; = "clock"

.field public static final INTENT_EXTRA_THEME_FONT_NUMERIC_TYPE:Ljava/lang/String; = "numeric"

.field public static final INTENT_EXTRA_THEME_FONT_SYSTEM_TYPE:Ljava/lang/String; = "system"

.field public static final INTENT_FONT_THEME_CHANGED:Ljava/lang/String; = "FONT_THEME_CHANGED"

.field private static final OPENTHEMPACKAGE:Ljava/lang/String; = "current_sec_active_themepackage"

.field public static final PREF_CLOCK_FONT_LOCATION:Ljava/lang/String; = "clock_font_location"

.field public static final PREF_NUMERIC_FONT_LOCATION:Ljava/lang/String; = "numeric_font_location"

.field public static final PREF_SYSTEM_FONT_LOCATION:Ljava/lang/String; = "system_font_location"

.field public static final TAG:Ljava/lang/String; = "SecOpenThemeUtils"

.field public static final TAG_PHOTO_CONTAINER:I = 0x1

.field private static final openTheme:[Ljava/lang/String;

.field public static final photo_container_masking_type_OVAL:I = 0x1

.field public static final photo_container_masking_type_RECTANGLE:I = 0x2

.field public static final photo_container_masking_type_ROUND_RECTANGLE:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.samsung.festival.chinadefault"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.samsung.www.Sunrise"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.samsung.www.Indie"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.samsung.www.GoldPlatinum"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.samsung.www.PinkRuby"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/incallui/util/SecOpenThemeUtils;->openTheme:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContactsDefaultImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v4, 0x0

    rem-int/lit8 v0, p1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    packed-switch v0, :pswitch_data_0

    const v3, 0x7f0200b4

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_0
    return-object v2

    :pswitch_0
    const v3, 0x7f0200b5

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :pswitch_1
    const v3, 0x7f0200b6

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :pswitch_2
    const v3, 0x7f0200b7

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :pswitch_3
    const v3, 0x7f0200b8

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

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

.method public static getContactsDefaultImageShape(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d004c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-static {p1, p2}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {p1, p2}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {p1, p2}, Lcom/android/incallui/util/GraphicResourceUtils;->getRectDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {p1, p2}, Lcom/android/incallui/util/GraphicResourceUtils;->getRoundRectDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getCurrentTheme(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_sec_active_themepackage"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCustomTheme(Landroid/content/Context;)Z
    .locals 6

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/android/incallui/util/SecOpenThemeUtils;->getCurrentTheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "SecOpenThemeUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v0, 0x0

    :goto_1
    sget-object v3, Lcom/android/incallui/util/SecOpenThemeUtils;->openTheme:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    sget-object v3, Lcom/android/incallui/util/SecOpenThemeUtils;->openTheme:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isThemeApplied(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/android/incallui/util/SecOpenThemeUtils;->getCurrentTheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setCoverBackgroundResource(Landroid/content/Context;)I
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    const v1, 0x7f0201de

    :goto_0
    return v1

    :pswitch_0
    const v1, 0x7f0201de

    goto :goto_0

    :pswitch_1
    const v1, 0x7f0201de

    goto :goto_0

    :pswitch_2
    const v1, 0x7f0201de

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setCoverEmergencyBackgroundResource(Landroid/content/Context;)I
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    const v1, 0x7f0201e3

    :goto_0
    return v1

    :pswitch_0
    const v1, 0x7f0201e3

    goto :goto_0

    :pswitch_1
    const v1, 0x7f0201e3

    goto :goto_0

    :pswitch_2
    const v1, 0x7f0201e3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setCoverScreenSmartCallBackgroundResource(Landroid/content/Context;I)I
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const v1, 0x7f0201fa

    :goto_0
    return v1

    :pswitch_0
    packed-switch p1, :pswitch_data_2

    const v1, 0x7f0201fa

    goto :goto_0

    :pswitch_1
    const v1, 0x7f020208

    goto :goto_0

    :pswitch_2
    const v1, 0x7f02020e

    goto :goto_0

    :pswitch_3
    const v1, 0x7f020202

    goto :goto_0

    :pswitch_4
    packed-switch p1, :pswitch_data_3

    const v1, 0x7f0201fc

    goto :goto_0

    :pswitch_5
    const v1, 0x7f02020a

    goto :goto_0

    :pswitch_6
    const v1, 0x7f020210

    goto :goto_0

    :pswitch_7
    const v1, 0x7f020204

    goto :goto_0

    :pswitch_8
    packed-switch p1, :pswitch_data_4

    const v1, 0x7f0201fe

    goto :goto_0

    :pswitch_9
    const v1, 0x7f02020c

    goto :goto_0

    :pswitch_a
    const v1, 0x7f020212

    goto :goto_0

    :pswitch_b
    const v1, 0x7f020206

    goto :goto_0

    :pswitch_c
    const v1, 0x7f020208

    goto :goto_0

    :pswitch_d
    const v1, 0x7f02020e

    goto :goto_0

    :pswitch_e
    const v1, 0x7f020202

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static setCoverYpBackgroundResource(Landroid/content/Context;)I
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    const v1, 0x7f0201df

    :goto_0
    return v1

    :pswitch_0
    const v1, 0x7f0201df

    goto :goto_0

    :pswitch_1
    const v1, 0x7f0201e0

    goto :goto_0

    :pswitch_2
    const v1, 0x7f0201e1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setFullScreenBackgroundResource(Landroid/content/Context;)I
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    const v1, 0x7f0201dd

    :goto_0
    return v1

    :pswitch_0
    const v1, 0x7f0201dd

    goto :goto_0

    :pswitch_1
    const v1, 0x7f0201f0

    goto :goto_0

    :pswitch_2
    const v1, 0x7f0201f5

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setFullScreenEmergencyBackgroundResource(Landroid/content/Context;)I
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    const v1, 0x7f0201e2

    :goto_0
    return v1

    :pswitch_0
    const v1, 0x7f0201e2

    goto :goto_0

    :pswitch_1
    const v1, 0x7f0201e4

    goto :goto_0

    :pswitch_2
    const v1, 0x7f0201e5

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setFullScreenPhotoView(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/4 v0, 0x0

    packed-switch v1, :pswitch_data_0

    invoke-static {p1, p2}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    invoke-static {p1, p2}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {p1, p2}, Lcom/android/incallui/util/GraphicResourceUtils;->getRectDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {p1, p2}, Lcom/android/incallui/util/GraphicResourceUtils;->getRoundRectDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setFullScreenResumeBackgroundResource(Landroid/content/Context;)I
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    const v1, 0x7f0201f1

    :goto_0
    return v1

    :pswitch_0
    const v1, 0x7f0201f1

    goto :goto_0

    :pswitch_1
    const v1, 0x7f0201f2

    goto :goto_0

    :pswitch_2
    const v1, 0x7f0201f3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setFullScreenSmartCallBackgroundResource(Landroid/content/Context;I)I
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const v1, 0x7f0201f9

    :goto_0
    return v1

    :pswitch_0
    packed-switch p1, :pswitch_data_2

    const v1, 0x7f0201f9

    goto :goto_0

    :pswitch_1
    const v1, 0x7f020207

    goto :goto_0

    :pswitch_2
    const v1, 0x7f02020d

    goto :goto_0

    :pswitch_3
    const v1, 0x7f020201

    goto :goto_0

    :pswitch_4
    packed-switch p1, :pswitch_data_3

    const v1, 0x7f0201fb

    goto :goto_0

    :pswitch_5
    const v1, 0x7f020209

    goto :goto_0

    :pswitch_6
    const v1, 0x7f02020f

    goto :goto_0

    :pswitch_7
    const v1, 0x7f020203

    goto :goto_0

    :pswitch_8
    packed-switch p1, :pswitch_data_4

    const v1, 0x7f0201fd

    goto :goto_0

    :pswitch_9
    const v1, 0x7f02020b

    goto :goto_0

    :pswitch_a
    const v1, 0x7f020211

    goto :goto_0

    :pswitch_b
    const v1, 0x7f020205

    goto :goto_0

    :pswitch_c
    const v1, 0x7f020207

    goto :goto_0

    :pswitch_d
    const v1, 0x7f02020d

    goto :goto_0

    :pswitch_e
    const v1, 0x7f020201

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static setPhotoIDShape(Landroid/content/Context;Landroid/view/View;IZ)V
    .locals 11

    const v10, 0x7f0201e6

    const v9, 0x7f0201da

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    rem-int/lit8 v0, p2, 0x4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d004c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const-string v4, "SecOpenThemeUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OpenTheme: setPhotoIDShape()-index:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), fromManageConferenceCallList?: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", masking type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    packed-switch v1, :pswitch_data_0

    invoke-virtual {v3, v9, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    :goto_1
    const-string v4, "SecOpenThemeUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OpenTheme: setPhotoIDShape()-photo container color: ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0f0105

    invoke-virtual {v3, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {v3, v9, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_1

    :pswitch_1
    const v4, 0x7f0201db

    invoke-virtual {v3, v4, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_1

    :pswitch_2
    const v4, 0x7f0201dc

    invoke-virtual {v3, v4, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_1

    :cond_2
    packed-switch v1, :pswitch_data_1

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_1

    :pswitch_3
    invoke-virtual {v3, v10, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_1

    :pswitch_4
    const v4, 0x7f0201e8

    invoke-virtual {v3, v4, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_1

    :pswitch_5
    const v4, 0x7f0201e9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static setPopupBackgroundResource(Landroid/content/Context;)I
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    const v1, 0x7f0201ea

    :goto_0
    return v1

    :pswitch_0
    const v1, 0x7f0201ea

    goto :goto_0

    :pswitch_1
    const v1, 0x7f0201eb

    goto :goto_0

    :pswitch_2
    const v1, 0x7f0201ec

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setPopupSmartBackgroundResource(Landroid/content/Context;Z)I
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const v1, 0x7f020213

    :goto_0
    return v1

    :cond_0
    packed-switch v0, :pswitch_data_0

    const v1, 0x7f0201f6

    goto :goto_0

    :pswitch_0
    const v1, 0x7f0201f6

    goto :goto_0

    :pswitch_1
    const v1, 0x7f0201f7

    goto :goto_0

    :pswitch_2
    const v1, 0x7f0201f8

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setPopupYpBackgroundResource(Landroid/content/Context;)I
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    const v1, 0x7f0201ed

    :goto_0
    return v1

    :pswitch_0
    const v1, 0x7f0201ed

    goto :goto_0

    :pswitch_1
    const v1, 0x7f0201ee

    goto :goto_0

    :pswitch_2
    const v1, 0x7f0201ef

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setQuickPanelBackgroundColor(I)I
    .locals 2

    rem-int/lit8 v0, p0, 0x4

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    const v1, 0x7f0f0105

    :goto_0
    return v1

    :pswitch_0
    const v1, 0x7f0f0106

    goto :goto_0

    :pswitch_1
    const v1, 0x7f0f0107

    goto :goto_0

    :pswitch_2
    const v1, 0x7f0f0108

    goto :goto_0

    :pswitch_3
    const v1, 0x7f0f0109

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static setQuickPanelDefaultImage(I)I
    .locals 2

    rem-int/lit8 v0, p0, 0x4

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    const v1, 0x7f0200b4

    :goto_0
    return v1

    :pswitch_0
    const v1, 0x7f0200b5

    goto :goto_0

    :pswitch_1
    const v1, 0x7f0200b6

    goto :goto_0

    :pswitch_2
    const v1, 0x7f0200b7

    goto :goto_0

    :pswitch_3
    const v1, 0x7f0200b8

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static setQuickPanelPhotoBackgroundResource(Landroid/content/Context;)I
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    const v1, 0x7f020227

    :goto_0
    return v1

    :pswitch_0
    const v1, 0x7f020227

    goto :goto_0

    :pswitch_1
    const v1, 0x7f020225

    goto :goto_0

    :pswitch_2
    const v1, 0x7f020226

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setQuickPanelPhotoIdMask(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/4 v0, 0x0

    packed-switch v1, :pswitch_data_0

    invoke-static {p1, p2}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {p1, p2}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {p1, p2}, Lcom/android/incallui/util/GraphicResourceUtils;->getRectBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {p1, p2}, Lcom/android/incallui/util/GraphicResourceUtils;->getRoundRectBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
