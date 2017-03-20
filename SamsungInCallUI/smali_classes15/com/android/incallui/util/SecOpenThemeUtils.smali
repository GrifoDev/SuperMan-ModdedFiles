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

    .prologue
    .line 58
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

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public static getContactsDefaultImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "idx"    # I

    .prologue
    const/4 v4, 0x0

    .line 199
    rem-int/lit8 v0, p1, 0x4

    .line 200
    .local v0, "localIdx":I
    const/4 v2, 0x0

    .line 201
    .local v2, "returnImg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 202
    .local v1, "resources":Landroid/content/res/Resources;
    packed-switch v0, :pswitch_data_0

    .line 216
    const v3, 0x7f0200b4

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 219
    :goto_0
    return-object v2

    .line 204
    :pswitch_0
    const v3, 0x7f0200b5

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 205
    goto :goto_0

    .line 207
    :pswitch_1
    const v3, 0x7f0200b6

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 208
    goto :goto_0

    .line 210
    :pswitch_2
    const v3, 0x7f0200b7

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 211
    goto :goto_0

    .line 213
    :pswitch_3
    const v3, 0x7f0200b8

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 214
    goto :goto_0

    .line 202
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
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmapDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "diameter"    # I

    .prologue
    .line 233
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d004c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 236
    .local v1, "maskingType":I
    packed-switch v1, :pswitch_data_0

    .line 247
    invoke-static {p1, p2}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 250
    .local v0, "mDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 238
    .end local v0    # "mDrawable":Landroid/graphics/drawable/Drawable;
    :pswitch_0
    invoke-static {p1, p2}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 239
    .restart local v0    # "mDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 241
    .end local v0    # "mDrawable":Landroid/graphics/drawable/Drawable;
    :pswitch_1
    invoke-static {p1, p2}, Lcom/android/incallui/util/GraphicResourceUtils;->getRectDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 242
    .restart local v0    # "mDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 244
    .end local v0    # "mDrawable":Landroid/graphics/drawable/Drawable;
    :pswitch_2
    invoke-static {p1, p2}, Lcom/android/incallui/util/GraphicResourceUtils;->getRoundRectDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 245
    .restart local v0    # "mDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 236
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getCurrentTheme(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    if-eqz p0, :cond_0

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_sec_active_themepackage"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCustomTheme(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-static {p0}, Lcom/android/incallui/util/SecOpenThemeUtils;->getCurrentTheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "packageName":Ljava/lang/String;
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

    .line 85
    if-nez v1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v2

    .line 87
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v3, Lcom/android/incallui/util/SecOpenThemeUtils;->openTheme:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 88
    sget-object v3, Lcom/android/incallui/util/SecOpenThemeUtils;->openTheme:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 92
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isThemeApplied(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-static {p0}, Lcom/android/incallui/util/SecOpenThemeUtils;->getCurrentTheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "packageName":Ljava/lang/String;
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
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 412
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 413
    .local v2, "resources":Landroid/content/res/Resources;
    const v3, 0x7f0d004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 414
    .local v0, "maskingType":I
    const/4 v1, 0x0

    .line 415
    .local v1, "resId":I
    packed-switch v0, :pswitch_data_0

    .line 426
    const v1, 0x7f0201dd

    .line 429
    :goto_0
    return v1

    .line 417
    :pswitch_0
    const v1, 0x7f0201dd

    .line 418
    goto :goto_0

    .line 420
    :pswitch_1
    const v1, 0x7f0201dd

    .line 421
    goto :goto_0

    .line 423
    :pswitch_2
    const v1, 0x7f0201dd

    .line 424
    goto :goto_0

    .line 415
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
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 506
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 507
    .local v2, "resources":Landroid/content/res/Resources;
    const v3, 0x7f0d004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 508
    .local v0, "maskingType":I
    const/4 v1, 0x0

    .line 509
    .local v1, "resId":I
    packed-switch v0, :pswitch_data_0

    .line 520
    const v1, 0x7f0201e2

    .line 523
    :goto_0
    return v1

    .line 511
    :pswitch_0
    const v1, 0x7f0201e2

    .line 512
    goto :goto_0

    .line 514
    :pswitch_1
    const v1, 0x7f0201e2

    .line 515
    goto :goto_0

    .line 517
    :pswitch_2
    const v1, 0x7f0201e2

    .line 518
    goto :goto_0

    .line 509
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
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mSmartCallRegisterState"    # I

    .prologue
    .line 433
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 434
    .local v2, "resources":Landroid/content/res/Resources;
    const v3, 0x7f0d004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 435
    .local v0, "maskingType":I
    const/4 v1, 0x0

    .line 436
    .local v1, "resId":I
    packed-switch v0, :pswitch_data_0

    .line 486
    packed-switch p1, :pswitch_data_1

    .line 497
    const v1, 0x7f0201f9

    .line 502
    :goto_0
    return v1

    .line 438
    :pswitch_0
    packed-switch p1, :pswitch_data_2

    .line 449
    const v1, 0x7f0201f9

    .line 450
    goto :goto_0

    .line 440
    :pswitch_1
    const v1, 0x7f020207

    .line 441
    goto :goto_0

    .line 443
    :pswitch_2
    const v1, 0x7f02020d

    .line 444
    goto :goto_0

    .line 446
    :pswitch_3
    const v1, 0x7f020201

    .line 447
    goto :goto_0

    .line 454
    :pswitch_4
    packed-switch p1, :pswitch_data_3

    .line 465
    const v1, 0x7f0201fb

    .line 466
    goto :goto_0

    .line 456
    :pswitch_5
    const v1, 0x7f020209

    .line 457
    goto :goto_0

    .line 459
    :pswitch_6
    const v1, 0x7f02020f

    .line 460
    goto :goto_0

    .line 462
    :pswitch_7
    const v1, 0x7f020203

    .line 463
    goto :goto_0

    .line 470
    :pswitch_8
    packed-switch p1, :pswitch_data_4

    .line 481
    const v1, 0x7f0201fd

    .line 482
    goto :goto_0

    .line 472
    :pswitch_9
    const v1, 0x7f02020b

    .line 473
    goto :goto_0

    .line 475
    :pswitch_a
    const v1, 0x7f020211

    .line 476
    goto :goto_0

    .line 478
    :pswitch_b
    const v1, 0x7f020205

    .line 479
    goto :goto_0

    .line 488
    :pswitch_c
    const v1, 0x7f020207

    .line 489
    goto :goto_0

    .line 491
    :pswitch_d
    const v1, 0x7f02020d

    .line 492
    goto :goto_0

    .line 494
    :pswitch_e
    const v1, 0x7f020201

    .line 495
    goto :goto_0

    .line 436
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_8
    .end packed-switch

    .line 486
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    .line 438
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 454
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 470
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static setCoverYpBackgroundResource(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 527
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 528
    .local v2, "resources":Landroid/content/res/Resources;
    const v3, 0x7f0d004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 529
    .local v0, "maskingType":I
    const/4 v1, 0x0

    .line 530
    .local v1, "resId":I
    packed-switch v0, :pswitch_data_0

    .line 541
    const v1, 0x7f0201de

    .line 544
    :goto_0
    return v1

    .line 532
    :pswitch_0
    const v1, 0x7f0201de

    .line 533
    goto :goto_0

    .line 535
    :pswitch_1
    const v1, 0x7f0201df

    .line 536
    goto :goto_0

    .line 538
    :pswitch_2
    const v1, 0x7f0201e0

    .line 539
    goto :goto_0

    .line 530
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
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 276
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 277
    .local v2, "resources":Landroid/content/res/Resources;
    const v3, 0x7f0d004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 278
    .local v0, "maskingType":I
    const/4 v1, 0x0

    .line 279
    .local v1, "resId":I
    packed-switch v0, :pswitch_data_0

    .line 290
    const v1, 0x7f0201dc

    .line 293
    :goto_0
    return v1

    .line 281
    :pswitch_0
    const v1, 0x7f0201dc

    .line 282
    goto :goto_0

    .line 284
    :pswitch_1
    const v1, 0x7f0201ef

    .line 285
    goto :goto_0

    .line 287
    :pswitch_2
    const v1, 0x7f0201f4

    .line 288
    goto :goto_0

    .line 279
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
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 391
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 392
    .local v2, "resources":Landroid/content/res/Resources;
    const v3, 0x7f0d004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 393
    .local v0, "maskingType":I
    const/4 v1, 0x0

    .line 394
    .local v1, "resId":I
    packed-switch v0, :pswitch_data_0

    .line 405
    const v1, 0x7f0201e1

    .line 408
    :goto_0
    return v1

    .line 396
    :pswitch_0
    const v1, 0x7f0201e1

    .line 397
    goto :goto_0

    .line 399
    :pswitch_1
    const v1, 0x7f0201e3

    .line 400
    goto :goto_0

    .line 402
    :pswitch_2
    const v1, 0x7f0201e4

    .line 403
    goto :goto_0

    .line 394
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
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmapDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "diameter"    # I

    .prologue
    .line 254
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 272
    :goto_0
    return-object v0

    .line 255
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 256
    .local v2, "resources":Landroid/content/res/Resources;
    const v3, 0x7f0d004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 257
    .local v1, "maskingType":I
    const/4 v0, 0x0

    .line 258
    .local v0, "mDrawable":Landroid/graphics/drawable/Drawable;
    packed-switch v1, :pswitch_data_0

    .line 269
    invoke-static {p1, p2}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 260
    :pswitch_0
    invoke-static {p1, p2}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 261
    goto :goto_0

    .line 263
    :pswitch_1
    invoke-static {p1, p2}, Lcom/android/incallui/util/GraphicResourceUtils;->getRectDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 264
    goto :goto_0

    .line 266
    :pswitch_2
    invoke-static {p1, p2}, Lcom/android/incallui/util/GraphicResourceUtils;->getRoundRectDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 267
    goto :goto_0

    .line 258
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
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 297
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 298
    .local v2, "resources":Landroid/content/res/Resources;
    const v3, 0x7f0d004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 299
    .local v0, "maskingType":I
    const/4 v1, 0x0

    .line 300
    .local v1, "resId":I
    packed-switch v0, :pswitch_data_0

    .line 311
    const v1, 0x7f0201f0

    .line 314
    :goto_0
    return v1

    .line 302
    :pswitch_0
    const v1, 0x7f0201f0

    .line 303
    goto :goto_0

    .line 305
    :pswitch_1
    const v1, 0x7f0201f1

    .line 306
    goto :goto_0

    .line 308
    :pswitch_2
    const v1, 0x7f0201f2

    .line 309
    goto :goto_0

    .line 300
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
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mSmartCallRegisterState"    # I

    .prologue
    .line 318
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 319
    .local v2, "resources":Landroid/content/res/Resources;
    const v3, 0x7f0d004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 320
    .local v0, "maskingType":I
    const/4 v1, 0x0

    .line 321
    .local v1, "resId":I
    packed-switch v0, :pswitch_data_0

    .line 371
    packed-switch p1, :pswitch_data_1

    .line 382
    const v1, 0x7f0201f8

    .line 387
    :goto_0
    return v1

    .line 323
    :pswitch_0
    packed-switch p1, :pswitch_data_2

    .line 334
    const v1, 0x7f0201f8

    .line 335
    goto :goto_0

    .line 325
    :pswitch_1
    const v1, 0x7f020206

    .line 326
    goto :goto_0

    .line 328
    :pswitch_2
    const v1, 0x7f02020c

    .line 329
    goto :goto_0

    .line 331
    :pswitch_3
    const v1, 0x7f020200

    .line 332
    goto :goto_0

    .line 339
    :pswitch_4
    packed-switch p1, :pswitch_data_3

    .line 350
    const v1, 0x7f0201fa

    .line 351
    goto :goto_0

    .line 341
    :pswitch_5
    const v1, 0x7f020208

    .line 342
    goto :goto_0

    .line 344
    :pswitch_6
    const v1, 0x7f02020e

    .line 345
    goto :goto_0

    .line 347
    :pswitch_7
    const v1, 0x7f020202

    .line 348
    goto :goto_0

    .line 355
    :pswitch_8
    packed-switch p1, :pswitch_data_4

    .line 366
    const v1, 0x7f0201fc

    .line 367
    goto :goto_0

    .line 357
    :pswitch_9
    const v1, 0x7f02020a

    .line 358
    goto :goto_0

    .line 360
    :pswitch_a
    const v1, 0x7f020210

    .line 361
    goto :goto_0

    .line 363
    :pswitch_b
    const v1, 0x7f020204

    .line 364
    goto :goto_0

    .line 373
    :pswitch_c
    const v1, 0x7f020206

    .line 374
    goto :goto_0

    .line 376
    :pswitch_d
    const v1, 0x7f02020c

    .line 377
    goto :goto_0

    .line 379
    :pswitch_e
    const v1, 0x7f020200

    .line 380
    goto :goto_0

    .line 321
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_8
    .end packed-switch

    .line 371
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    .line 323
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 339
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 355
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static setPhotoIDShape(Landroid/content/Context;Landroid/view/View;IZ)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "container"    # Landroid/view/View;
    .param p2, "idx"    # I
    .param p3, "fromManageConferenceCallList"    # Z

    .prologue
    const v10, 0x7f0201e5

    const v9, 0x7f0201d9

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 125
    if-eqz p1, :cond_0

    invoke-virtual {p1, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    rem-int/lit8 v0, p2, 0x4

    .line 129
    .local v0, "localIdx":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 130
    .local v3, "resources":Landroid/content/res/Resources;
    const v4, 0x7f0d004c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 131
    .local v1, "maskingType":I
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

    .line 135
    if-eqz p3, :cond_2

    .line 136
    packed-switch v1, :pswitch_data_0

    .line 147
    invoke-virtual {v3, v9, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    .line 186
    .local v2, "photoContainerSrc":Landroid/graphics/drawable/GradientDrawable;
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

    .line 187
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 188
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 138
    .end local v2    # "photoContainerSrc":Landroid/graphics/drawable/GradientDrawable;
    :pswitch_0
    invoke-virtual {v3, v9, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    .line 139
    .restart local v2    # "photoContainerSrc":Landroid/graphics/drawable/GradientDrawable;
    goto :goto_1

    .line 141
    .end local v2    # "photoContainerSrc":Landroid/graphics/drawable/GradientDrawable;
    :pswitch_1
    const v4, 0x7f0201da

    invoke-virtual {v3, v4, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    .line 142
    .restart local v2    # "photoContainerSrc":Landroid/graphics/drawable/GradientDrawable;
    goto :goto_1

    .line 144
    .end local v2    # "photoContainerSrc":Landroid/graphics/drawable/GradientDrawable;
    :pswitch_2
    const v4, 0x7f0201db

    invoke-virtual {v3, v4, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    .line 145
    .restart local v2    # "photoContainerSrc":Landroid/graphics/drawable/GradientDrawable;
    goto :goto_1

    .line 153
    .end local v2    # "photoContainerSrc":Landroid/graphics/drawable/GradientDrawable;
    :cond_2
    packed-switch v1, :pswitch_data_1

    .line 164
    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    .restart local v2    # "photoContainerSrc":Landroid/graphics/drawable/GradientDrawable;
    goto :goto_1

    .line 155
    .end local v2    # "photoContainerSrc":Landroid/graphics/drawable/GradientDrawable;
    :pswitch_3
    invoke-virtual {v3, v10, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    .line 156
    .restart local v2    # "photoContainerSrc":Landroid/graphics/drawable/GradientDrawable;
    goto :goto_1

    .line 158
    .end local v2    # "photoContainerSrc":Landroid/graphics/drawable/GradientDrawable;
    :pswitch_4
    const v4, 0x7f0201e7

    invoke-virtual {v3, v4, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    .line 159
    .restart local v2    # "photoContainerSrc":Landroid/graphics/drawable/GradientDrawable;
    goto :goto_1

    .line 161
    .end local v2    # "photoContainerSrc":Landroid/graphics/drawable/GradientDrawable;
    :pswitch_5
    const v4, 0x7f0201e8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    .line 162
    .restart local v2    # "photoContainerSrc":Landroid/graphics/drawable/GradientDrawable;
    goto :goto_1

    .line 136
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 153
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static setPopupBackgroundResource(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 637
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 638
    .local v2, "resources":Landroid/content/res/Resources;
    const v3, 0x7f0d004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 639
    .local v0, "maskingType":I
    const/4 v1, 0x0

    .line 640
    .local v1, "resId":I
    packed-switch v0, :pswitch_data_0

    .line 651
    const v1, 0x7f0201e9

    .line 654
    :goto_0
    return v1

    .line 642
    :pswitch_0
    const v1, 0x7f0201e9

    .line 643
    goto :goto_0

    .line 645
    :pswitch_1
    const v1, 0x7f0201ea

    .line 646
    goto :goto_0

    .line 648
    :pswitch_2
    const v1, 0x7f0201eb

    .line 649
    goto :goto_0

    .line 640
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
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "exsitSpamLevel"    # Z

    .prologue
    .line 658
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 659
    .local v2, "resources":Landroid/content/res/Resources;
    const v3, 0x7f0d004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 660
    .local v0, "maskingType":I
    const/4 v1, 0x0

    .line 661
    .local v1, "resId":I
    if-eqz p1, :cond_0

    .line 662
    const v1, 0x7f020212

    .line 679
    :goto_0
    return v1

    .line 664
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 675
    const v1, 0x7f0201f5

    goto :goto_0

    .line 666
    :pswitch_0
    const v1, 0x7f0201f5

    .line 667
    goto :goto_0

    .line 669
    :pswitch_1
    const v1, 0x7f0201f6

    .line 670
    goto :goto_0

    .line 672
    :pswitch_2
    const v1, 0x7f0201f7

    .line 673
    goto :goto_0

    .line 664
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
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 683
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 684
    .local v2, "resources":Landroid/content/res/Resources;
    const v3, 0x7f0d004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 685
    .local v0, "maskingType":I
    const/4 v1, 0x0

    .line 686
    .local v1, "resId":I
    packed-switch v0, :pswitch_data_0

    .line 697
    const v1, 0x7f0201ec

    .line 700
    :goto_0
    return v1

    .line 688
    :pswitch_0
    const v1, 0x7f0201ec

    .line 689
    goto :goto_0

    .line 691
    :pswitch_1
    const v1, 0x7f0201ed

    .line 692
    goto :goto_0

    .line 694
    :pswitch_2
    const v1, 0x7f0201ee

    .line 695
    goto :goto_0

    .line 686
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
    .param p0, "idx"    # I

    .prologue
    .line 590
    rem-int/lit8 v0, p0, 0x4

    .line 591
    .local v0, "localIdx":I
    const/4 v1, 0x0

    .line 592
    .local v1, "resId":I
    packed-switch v0, :pswitch_data_0

    .line 606
    const v1, 0x7f0f0105

    .line 610
    :goto_0
    return v1

    .line 594
    :pswitch_0
    const v1, 0x7f0f0106

    .line 595
    goto :goto_0

    .line 597
    :pswitch_1
    const v1, 0x7f0f0107

    .line 598
    goto :goto_0

    .line 600
    :pswitch_2
    const v1, 0x7f0f0108

    .line 601
    goto :goto_0

    .line 603
    :pswitch_3
    const v1, 0x7f0f0109

    .line 604
    goto :goto_0

    .line 592
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
    .param p0, "idx"    # I

    .prologue
    .line 614
    rem-int/lit8 v0, p0, 0x4

    .line 615
    .local v0, "localIdx":I
    const/4 v1, 0x0

    .line 616
    .local v1, "resId":I
    packed-switch v0, :pswitch_data_0

    .line 630
    const v1, 0x7f0200b4

    .line 633
    :goto_0
    return v1

    .line 618
    :pswitch_0
    const v1, 0x7f0200b5

    .line 619
    goto :goto_0

    .line 621
    :pswitch_1
    const v1, 0x7f0200b6

    .line 622
    goto :goto_0

    .line 624
    :pswitch_2
    const v1, 0x7f0200b7

    .line 625
    goto :goto_0

    .line 627
    :pswitch_3
    const v1, 0x7f0200b8

    .line 628
    goto :goto_0

    .line 616
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
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 569
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 570
    .local v2, "resources":Landroid/content/res/Resources;
    const v3, 0x7f0d004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 571
    .local v0, "maskingType":I
    const/4 v1, 0x0

    .line 572
    .local v1, "resId":I
    packed-switch v0, :pswitch_data_0

    .line 583
    const v1, 0x7f020226

    .line 586
    :goto_0
    return v1

    .line 574
    :pswitch_0
    const v1, 0x7f020226

    .line 575
    goto :goto_0

    .line 577
    :pswitch_1
    const v1, 0x7f020224

    .line 578
    goto :goto_0

    .line 580
    :pswitch_2
    const v1, 0x7f020225

    .line 581
    goto :goto_0

    .line 572
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
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmapDrawable"    # Landroid/graphics/Bitmap;
    .param p2, "diameter"    # I

    .prologue
    .line 548
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 549
    .local v2, "resources":Landroid/content/res/Resources;
    const v3, 0x7f0d004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 550
    .local v1, "maskingType":I
    const/4 v0, 0x0

    .line 551
    .local v0, "mDrawable":Landroid/graphics/Bitmap;
    packed-switch v1, :pswitch_data_0

    .line 562
    invoke-static {p1, p2}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 565
    :goto_0
    return-object v0

    .line 553
    :pswitch_0
    invoke-static {p1, p2}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 554
    goto :goto_0

    .line 556
    :pswitch_1
    invoke-static {p1, p2}, Lcom/android/incallui/util/GraphicResourceUtils;->getRectBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 557
    goto :goto_0

    .line 559
    :pswitch_2
    invoke-static {p1, p2}, Lcom/android/incallui/util/GraphicResourceUtils;->getRoundRectBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 560
    goto :goto_0

    .line 551
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
