.class public Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;
.super Ljava/lang/Object;
.source "PostPositionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/customer/PostPositionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemRecord"
.end annotation


# instance fields
.field AppsAdd:Z

.field AppsCellOrder:I

.field AppsFolderName:Ljava/lang/String;

.field AppsForceAtoZ:Z

.field AppsIndex:I

.field AppsPreloadFolder:Z

.field ComponentName:Ljava/lang/String;

.field HomeAdd:Z

.field HomeCellX:I

.field HomeCellY:I

.field HomeFolderName:Ljava/lang/String;

.field HomeIndex:I

.field HomeNewPage:Z

.field HomePreloadFolder:Z

.field HomeReplace:Z

.field HomeShortcutIcon:Landroid/graphics/Bitmap;

.field HomeShortcutTitle:Ljava/lang/String;

.field ItemType:I

.field RemoveAfterPosition:Z

.field WidgetSpanX:I

.field WidgetSpanY:I

.field WorksOnUIThread:Z

.field final synthetic this$0:Lcom/android/launcher2/customer/PostPositionProvider;


# direct methods
.method constructor <init>(Lcom/android/launcher2/customer/PostPositionProvider;Ljava/lang/String;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput-object p1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->this$0:Lcom/android/launcher2/customer/PostPositionProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->ItemType:I

    iput-boolean v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeAdd:Z

    iput-boolean v2, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomePreloadFolder:Z

    iput-boolean v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeNewPage:Z

    iput-boolean v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeReplace:Z

    iput v0, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeIndex:I

    iput v0, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeCellX:I

    iput v0, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeCellY:I

    iput v0, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->WidgetSpanX:I

    iput v0, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->WidgetSpanY:I

    iput-object v3, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeShortcutTitle:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeShortcutIcon:Landroid/graphics/Bitmap;

    iput-boolean v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->AppsAdd:Z

    iput-boolean v2, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->AppsPreloadFolder:Z

    iput v0, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->AppsIndex:I

    iput v0, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->AppsCellOrder:I

    iput-boolean v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->AppsForceAtoZ:Z

    iput-boolean v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->RemoveAfterPosition:Z

    iput-boolean v2, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->WorksOnUIThread:Z

    iput-object p2, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->ComponentName:Ljava/lang/String;

    iput p3, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->ItemType:I

    return-void
.end method


# virtual methods
.method checkAndUpdateHomePositionAccordingly()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeIndex:I

    const-string v1, "CUSTOMER.PostPosition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ZeroPage enabled so update HomePage index to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeNewPage:Z

    if-nez v1, :cond_e

    iget v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeIndex:I

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v2

    if-le v1, v2, :cond_e

    const-string v1, "CUSTOMER.PostPosition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndUpdateHomePositionAccordingly() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeIndex:I

    :cond_1
    :goto_0
    iget v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeCellX:I

    if-gez v1, :cond_2

    iput v5, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeCellX:I

    :cond_2
    iget v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeCellY:I

    if-gez v1, :cond_3

    iput v5, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeCellY:I

    :cond_3
    const/4 v1, 0x2

    new-array v0, v1, [I

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/launcher2/Utilities;->loadCurentGridSize(Landroid/content/Context;[I)V

    iget v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeCellX:I

    aget v2, v0, v5

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_4

    aget v1, v0, v5

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeCellX:I

    :cond_4
    iget v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeCellY:I

    aget v2, v0, v4

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_5

    aget v1, v0, v4

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeCellY:I

    :cond_5
    iget v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->ItemType:I

    sget-object v2, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;->WIDGET:Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;

    invoke-virtual {v2}, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_10

    iget v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->WidgetSpanX:I

    if-ge v1, v4, :cond_6

    iput v4, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->WidgetSpanX:I

    :cond_6
    iget v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->WidgetSpanY:I

    if-ge v1, v4, :cond_7

    iput v4, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->WidgetSpanY:I

    :cond_7
    iget v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->WidgetSpanX:I

    aget v2, v0, v5

    if-le v1, v2, :cond_8

    aget v1, v0, v5

    iput v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->WidgetSpanX:I

    :cond_8
    iget v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->WidgetSpanY:I

    aget v2, v0, v4

    if-le v1, v2, :cond_9

    aget v1, v0, v4

    iput v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->WidgetSpanY:I

    :cond_9
    iget v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeCellX:I

    iget v2, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->WidgetSpanX:I

    add-int/2addr v1, v2

    aget v2, v0, v5

    if-le v1, v2, :cond_a

    aget v1, v0, v5

    iget v2, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeCellX:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->WidgetSpanX:I

    :cond_a
    iget v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeCellY:I

    iget v2, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->WidgetSpanY:I

    add-int/2addr v1, v2

    aget v2, v0, v4

    if-le v1, v2, :cond_b

    aget v1, v0, v4

    iget v2, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeCellY:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->WidgetSpanY:I

    :cond_b
    :goto_1
    iget v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->ItemType:I

    sget-object v2, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;->SHORTCUT:Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;

    invoke-virtual {v2}, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_d

    iget-object v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeShortcutTitle:Ljava/lang/String;

    if-nez v1, :cond_c

    const-string v1, "Untitled"

    iput-object v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeShortcutTitle:Ljava/lang/String;

    :cond_c
    iget-object v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeShortcutIcon:Landroid/graphics/Bitmap;

    if-nez v1, :cond_d

    invoke-static {}, Lcom/android/launcher2/PkgResCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeShortcutIcon:Landroid/graphics/Bitmap;

    :cond_d
    return-void

    :cond_e
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v1

    if-eqz v1, :cond_f

    iget v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeIndex:I

    if-ge v1, v4, :cond_f

    const-string v1, "CUSTOMER.PostPosition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndUpdateHomePositionAccordingly() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeIndex:I

    goto/16 :goto_0

    :cond_f
    iget v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeIndex:I

    if-gez v1, :cond_1

    const-string v1, "CUSTOMER.PostPosition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndUpdateHomePositionAccordingly() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v5, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeIndex:I

    goto/16 :goto_0

    :cond_10
    iput v4, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->WidgetSpanX:I

    iput v4, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->WidgetSpanY:I

    goto :goto_1
.end method

.method getShorcutIntent()Landroid/content/Intent;
    .locals 5

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    :try_start_0
    const-string v2, "android.intent.extra.shortcut.INTENT"

    iget-object v3, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->ComponentName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.shortcut.NAME"

    iget-object v3, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeShortcutTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.shortcut.ICON"

    iget-object v3, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeShortcutIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method isValid()Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeAdd:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomePreloadFolder:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeFolderName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeFolderName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeIndex:I

    if-gez v1, :cond_2

    iget v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeCellX:I

    if-gez v1, :cond_2

    iget v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeCellY:I

    if-gez v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-boolean v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->AppsAdd:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->AppsPreloadFolder:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->AppsFolderName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->AppsFolderName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method setAppsPosition(II)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->AppsIndex:I

    iput p2, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->AppsCellOrder:I

    return-void
.end method

.method setHomePosition(ZZIII)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeNewPage:Z

    iput-boolean p2, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeReplace:Z

    iput p3, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeIndex:I

    iput p4, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeCellX:I

    iput p5, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeCellY:I

    return-void
.end method

.method setShortcutInfo(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeShortcutTitle:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeShortcutIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method setShortcutInfo(Ljava/lang/String;[B)V
    .locals 5

    :try_start_0
    iput-object p1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeShortcutTitle:Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p2

    invoke-static {p2, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->this$0:Lcom/android/launcher2/customer/PostPositionProvider;

    invoke-virtual {v2}, Lcom/android/launcher2/customer/PostPositionProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher2/IconConfig;->mIconWidth:I

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v4

    iget v4, v4, Lcom/android/launcher2/IconConfig;->mIconHeight:I

    invoke-static {v1, v2, v3, v4}, Lcom/android/launcher2/Utilities;->resampleIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeShortcutIcon:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeShortcutIcon:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/PkgResCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeShortcutIcon:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "CUSTOMER.PostPosition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setShortcutInfo() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method setWidgetSpanXY(II)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->WidgetSpanX:I

    iput p2, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->WidgetSpanY:I

    return-void
.end method

.method updateResult(Z)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE PositionInfo SET result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "componentName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->ComponentName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->this$0:Lcom/android/launcher2/customer/PostPositionProvider;

    # getter for: Lcom/android/launcher2/customer/PostPositionProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v1}, Lcom/android/launcher2/customer/PostPositionProvider;->access$000(Lcom/android/launcher2/customer/PostPositionProvider;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
