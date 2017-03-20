.class public Lcom/android/contacts/common/list/ShortcutIntentBuilder;
.super Ljava/lang/Object;
.source "ShortcutIntentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;,
        Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;,
        Lcom/android/contacts/common/list/ShortcutIntentBuilder$LoadingAsyncTask;,
        Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;
    }
.end annotation


# static fields
.field private static final CONTACT_COLUMNS:[Ljava/lang/String;

.field private static final CONTACT_DISPLAY_NAME_COLUMN_INDEX:I = 0x0

.field private static final CONTACT_LOOKUP_KEY_COLUMN_INDEX:I = 0x2

.field private static final CONTACT_PHOTO_ID_COLUMN_INDEX:I = 0x1

.field public static final INTENT_EXTRA_IGNORE_LAUNCH_ANIMATION:Ljava/lang/String; = "com.android.launcher.intent.extra.shortcut.INGORE_LAUNCH_ANIMATION"

.field private static final PHONE_COLUMNS:[Ljava/lang/String;

.field private static final PHONE_DISPLAY_NAME_COLUMN_INDEX:I = 0x0

.field private static final PHONE_LABEL_COLUMN_INDEX:I = 0x4

.field private static final PHONE_LOOKUP_KEY_COLUMN_INDEX:I = 0x5

.field private static final PHONE_NUMBER_COLUMN_INDEX:I = 0x2

.field private static final PHONE_PHOTO_ID_COLUMN_INDEX:I = 0x1

.field private static final PHONE_TYPE_COLUMN_INDEX:I = 0x3

.field private static final PHOTO_COLUMNS:[Ljava/lang/String;

.field private static final PHOTO_PHOTO_COLUMN_INDEX:I = 0x0

.field private static final PHOTO_SELECTION:Ljava/lang/String; = "_id=?"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIconDensity:I

.field private mIconSize:I

.field private final mListener:Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;

.field private final mOverlayTextBackgroundColor:I

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 56
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "photo_id"

    aput-object v1, v0, v4

    const-string v1, "lookup"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->CONTACT_COLUMNS:[Ljava/lang/String;

    .line 66
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "photo_id"

    aput-object v1, v0, v4

    const-string v1, "data1"

    aput-object v1, v0, v2

    const-string v1, "data2"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "lookup"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->PHONE_COLUMNS:[Ljava/lang/String;

    .line 82
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "data15"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->PHOTO_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    .line 123
    iput-object p2, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mListener:Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mResources:Landroid/content/res/Resources;

    .line 126
    const-string v1, "activity"

    .line 127
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 128
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a05c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconSize:I

    .line 129
    iget v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconSize:I

    if-nez v1, :cond_0

    .line 130
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconSize:I

    .line 132
    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconDensity:I

    .line 133
    iget-object v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0f01d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mOverlayTextBackgroundColor:I

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/common/list/ShortcutIntentBuilder;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/list/ShortcutIntentBuilder;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->PHOTO_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->CONTACT_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/common/list/ShortcutIntentBuilder;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/common/list/ShortcutIntentBuilder;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # [B

    .prologue
    .line 54
    invoke-direct/range {p0 .. p5}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->createContactShortcutIntent(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->PHONE_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/common/list/ShortcutIntentBuilder;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/common/list/ShortcutIntentBuilder;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # [B
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # I
    .param p7, "x7"    # Ljava/lang/String;
    .param p8, "x8"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct/range {p0 .. p8}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->createPhoneNumberShortcutIntent(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private createContactShortcutIntent(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 7
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "displayName"    # Ljava/lang/String;
    .param p4, "lookupKey"    # Ljava/lang/String;
    .param p5, "bitmapData"    # [B

    .prologue
    .line 270
    invoke-direct {p0, p5, p3, p4}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->getPhotoDrawable([BLjava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 275
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.provider.action.QUICK_CONTACT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 283
    .local v3, "shortcutIntent":Landroid/content/Intent;
    const v4, 0x10018000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 287
    const-string v4, "com.android.launcher.intent.extra.shortcut.INGORE_LAUNCH_ANIMATION"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 289
    invoke-virtual {v3, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    const-string v5, "android.provider.extra.EXCLUDE_MIMES"

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    invoke-direct {p0, v0}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->generateQuickContactIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 295
    .local v1, "icon":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 296
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 297
    const-string v4, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 298
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 299
    const-string v4, "android.intent.extra.shortcut.NAME"

    iget-object v5, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09052d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mListener:Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;

    invoke-interface {v4, p1, v2}, Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;->onShortcutIntentCreated(Landroid/net/Uri;Landroid/content/Intent;)V

    .line 306
    return-void

    .line 302
    :cond_0
    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private createPhoneNumberShortcutIntent(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "lookupKey"    # Ljava/lang/String;
    .param p4, "bitmapData"    # [B
    .param p5, "phoneNumber"    # Ljava/lang/String;
    .param p6, "phoneType"    # I
    .param p7, "phoneLabel"    # Ljava/lang/String;
    .param p8, "shortcutAction"    # Ljava/lang/String;

    .prologue
    .line 311
    move-object/from16 v0, p4

    invoke-direct {p0, v0, p2, p3}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->getPhotoDrawable([BLjava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 315
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    const-string v7, "android.intent.action.CALL"

    move-object/from16 v0, p8

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 317
    const-string v7, "tel"

    const/4 v8, 0x0

    move-object/from16 v0, p5

    invoke-static {v7, v0, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 318
    .local v5, "phoneUri":Landroid/net/Uri;
    const v7, 0x7f0200ee

    move/from16 v0, p6

    move-object/from16 v1, p7

    invoke-direct {p0, v3, v0, v1, v7}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->generatePhoneNumberIcon(Landroid/graphics/drawable/Drawable;ILjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 326
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    new-instance v6, Landroid/content/Intent;

    move-object/from16 v0, p8

    invoke-direct {v6, v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 327
    .local v6, "shortcutIntent":Landroid/content/Intent;
    const/high16 v7, 0x4000000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 329
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 330
    .local v4, "intent":Landroid/content/Intent;
    const-string v7, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v4, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 331
    const-string v7, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 333
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 334
    iget-object v7, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09052d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 336
    :cond_0
    const-string v7, "android.intent.action.CALL"

    move-object/from16 v0, p8

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 337
    const-string v7, "android.intent.extra.shortcut.NAME"

    iget-object v8, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    .line 338
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09043a

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p2, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 337
    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mListener:Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;

    invoke-interface {v7, p1, v4}, Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;->onShortcutIntentCreated(Landroid/net/Uri;Landroid/content/Intent;)V

    .line 345
    return-void

    .line 321
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "phoneUri":Landroid/net/Uri;
    .end local v6    # "shortcutIntent":Landroid/content/Intent;
    :cond_2
    const-string v7, "smsto"

    const/4 v8, 0x0

    move-object/from16 v0, p5

    invoke-static {v7, v0, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 322
    .restart local v5    # "phoneUri":Landroid/net/Uri;
    const v7, 0x7f020110

    move/from16 v0, p6

    move-object/from16 v1, p7

    invoke-direct {p0, v3, v0, v1, v7}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->generatePhoneNumberIcon(Landroid/graphics/drawable/Drawable;ILjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 339
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v6    # "shortcutIntent":Landroid/content/Intent;
    :cond_3
    const-string v7, "android.intent.action.SENDTO"

    move-object/from16 v0, p8

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 340
    const-string v7, "android.intent.extra.shortcut.NAME"

    iget-object v8, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    .line 341
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090581

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p2, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 340
    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private generatePhoneNumberIcon(Landroid/graphics/drawable/Drawable;ILjava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 24
    .param p1, "photo"    # Landroid/graphics/drawable/Drawable;
    .param p2, "phoneType"    # I
    .param p3, "phoneLabel"    # Ljava/lang/String;
    .param p4, "actionResId"    # I

    .prologue
    .line 378
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 379
    .local v17, "r":Landroid/content/res/Resources;
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v10, v5, Landroid/util/DisplayMetrics;->density:F

    .line 381
    .local v10, "density":F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconDensity:I

    move-object/from16 v0, v17

    move/from16 v1, p4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    .line 382
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v15

    .line 384
    .local v15, "phoneIcon":Landroid/graphics/Bitmap;
    invoke-direct/range {p0 .. p1}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->generateQuickContactIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 385
    .local v13, "icon":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 388
    .local v3, "canvas":Landroid/graphics/Canvas;
    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    .line 389
    .local v16, "photoPaint":Landroid/graphics/Paint;
    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 390
    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 391
    new-instance v11, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconSize:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconSize:I

    invoke-direct {v11, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 394
    .local v11, "dst":Landroid/graphics/Rect;
    move-object/from16 v0, v17

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 396
    .local v4, "overlay":Ljava/lang/CharSequence;
    if-eqz v4, :cond_0

    .line 397
    new-instance v9, Landroid/text/TextPaint;

    const/16 v5, 0x101

    invoke-direct {v9, v5}, Landroid/text/TextPaint;-><init>(I)V

    .line 398
    .local v9, "textPaint":Landroid/text/TextPaint;
    const v5, 0x7f0a05c5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v9, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 399
    const v5, 0x7f0f01ef

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v9, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 400
    const/high16 v5, 0x40800000    # 4.0f

    const/4 v6, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    const v8, 0x7f0f01f0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v9, v5, v6, v7, v8}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 402
    invoke-virtual {v9}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v12

    .line 405
    .local v12, "fmi":Landroid/graphics/Paint$FontMetricsInt;
    new-instance v22, Landroid/graphics/Paint;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Paint;-><init>()V

    .line 406
    .local v22, "workPaint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mOverlayTextBackgroundColor:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 407
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 408
    const v5, 0x7f0a05c4

    .line 409
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v20

    .line 410
    .local v20, "textPadding":I
    iget v5, v12, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v6, v12, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v5, v6

    mul-int/lit8 v6, v20, 0x2

    add-int v19, v5, v6

    .line 411
    .local v19, "textBandHeight":I
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconSize:I

    sub-int v6, v6, v19

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconSize:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconSize:I

    invoke-virtual {v11, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 412
    move-object/from16 v0, v22

    invoke-virtual {v3, v11, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 414
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconSize:I

    int-to-float v5, v5

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v4, v9, v5, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 415
    const/4 v5, 0x0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {v9, v4, v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v21

    .line 416
    .local v21, "textWidth":F
    const/4 v5, 0x0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconSize:I

    int-to-float v7, v7

    sub-float v7, v7, v21

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconSize:I

    iget v0, v12, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v23, v0

    sub-int v8, v8, v23

    sub-int v8, v8, v20

    int-to-float v8, v8

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 421
    .end local v9    # "textPaint":Landroid/text/TextPaint;
    .end local v12    # "fmi":Landroid/graphics/Paint$FontMetricsInt;
    .end local v19    # "textBandHeight":I
    .end local v20    # "textPadding":I
    .end local v21    # "textWidth":F
    .end local v22    # "workPaint":Landroid/graphics/Paint;
    :cond_0
    new-instance v18, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move-object/from16 v0, v18

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 422
    .local v18, "src":Landroid/graphics/Rect;
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 423
    .local v14, "iconWidth":I
    const/high16 v5, 0x41a00000    # 20.0f

    mul-float/2addr v5, v10

    float-to-int v5, v5

    sub-int v5, v14, v5

    const/4 v6, -0x1

    const/high16 v7, 0x41980000    # 19.0f

    mul-float/2addr v7, v10

    float-to-int v7, v7

    invoke-virtual {v11, v5, v6, v14, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 425
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v3, v15, v0, v11, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 427
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 429
    return-object v13
.end method

.method private generateQuickContactIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "photo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v8, 0x0

    .line 350
    iget v5, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconSize:I

    iget v6, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconSize:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 351
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 354
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconSize:I

    iget v6, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconSize:I

    invoke-direct {v2, v8, v8, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 355
    .local v2, "dst":Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 356
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 359
    iget-object v5, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mResources:Landroid/content/res/Resources;

    .line 360
    invoke-static {v5, v0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v4

    .line 361
    .local v4, "roundedDrawable":Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setAntiAlias(Z)V

    .line 362
    iget v5, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconSize:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    .line 363
    iget v5, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconSize:I

    iget v6, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconSize:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 364
    .local v3, "roundedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 365
    invoke-virtual {v4, v2}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 366
    invoke-virtual {v4, v1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 367
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 369
    return-object v3
.end method

.method private getPhotoDrawable([BLjava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "bitmapData"    # [B
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "lookupKey"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 259
    if-eqz p1, :cond_0

    .line 260
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v3, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 261
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 263
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    invoke-direct {v2, p2, p3, v3}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v1, v3, v2}, Lcom/android/contacts/common/ContactPhotoManager;->getDefaultAvatarDrawableForContact(Landroid/content/res/Resources;ZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public createContactShortcutIntent(Landroid/net/Uri;)V
    .locals 2
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 137
    new-instance v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;-><init>(Lcom/android/contacts/common/list/ShortcutIntentBuilder;Landroid/net/Uri;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 138
    return-void
.end method

.method public createPhoneNumberShortcutIntent(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .param p1, "dataUri"    # Landroid/net/Uri;
    .param p2, "shortcutAction"    # Ljava/lang/String;

    .prologue
    .line 141
    new-instance v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;-><init>(Lcom/android/contacts/common/list/ShortcutIntentBuilder;Landroid/net/Uri;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 142
    return-void
.end method
