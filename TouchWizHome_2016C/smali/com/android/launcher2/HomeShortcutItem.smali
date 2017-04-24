.class public Lcom/android/launcher2/HomeShortcutItem;
.super Lcom/android/launcher2/HomeItem;
.source "HomeShortcutItem.java"


# static fields
.field private static final DEBUGGABLE:Z

.field public static final callIntentAction:Ljava/lang/String; = "android.intent.action.CALL"

.field public static final dialIntentAction:Ljava/lang/String; = "android.intent.action.CALL_PRIVILEGED"

.field public static final messageIntentAction:Ljava/lang/String; = "android.intent.action.SENDTO"

.field public static final quickContactIntentAction:Ljava/lang/String; = "com.android.contacts.action.QUICK_CONTACT"


# instance fields
.field customIcon:Z

.field iconResource:Landroid/content/Intent$ShortcutIconResource;

.field intent:Landroid/content/Intent;

.field mCustomIconBitmap:Landroid/graphics/Bitmap;

.field mIconMovieUri:Landroid/net/Uri;

.field public mUnavailable:Z

.field packageName:Ljava/lang/String;

.field promisedIntent:Landroid/content/Intent;

.field usingFallbackIcon:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/HomeShortcutItem;->DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {p0, v0}, Lcom/android/launcher2/HomeItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    return-void
.end method

.method constructor <init>(Lcom/android/launcher2/BaseItem$Type;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/HomeItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    return-void
.end method

.method public static dumpShortcutInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeShortcutItem;",
            ">;)V"
        }
    .end annotation

    sget-boolean v1, Lcom/android/launcher2/HomeShortcutItem;->DEBUGGABLE:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeShortcutItem;

    sget-boolean v2, Lcom/android/launcher2/HomeShortcutItem;->DEBUGGABLE:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   title=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " icon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " customIcon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getActionIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2

    const-string v0, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {p0}, Lcom/android/launcher2/HomeShortcutItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "android.intent.action.SENDTO"

    invoke-virtual {p0}, Lcom/android/launcher2/HomeShortcutItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getContentDescription(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0800d2

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const-string v1, ""

    invoke-virtual {p0}, Lcom/android/launcher2/HomeShortcutItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.CALL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    const v2, 0x7f08003b

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    const-string v2, "android.intent.action.SENDTO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const v2, 0x7f08003c

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    const-string v2, "com.android.contacts.action.QUICK_CONTACT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f0800a3

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public getIcon(Lcom/android/launcher2/PkgResCache;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/HomeShortcutItem;->updateIcon(Lcom/android/launcher2/PkgResCache;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 3

    iget-object v2, p0, Lcom/android/launcher2/HomeShortcutItem;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/HomeShortcutItem;->packageName:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_1
    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/HomeShortcutItem;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/HomeShortcutItem;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public getTargetComponent()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeShortcutItem;->promisedIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeShortcutItem;->promisedIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeShortcutItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0
.end method

.method public makeAppItem(Lcom/android/launcher2/HomeShortcutItem;)Lcom/android/launcher2/AppItem;
    .locals 6

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/launcher2/HomeShortcutItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    iget-object v5, p1, Lcom/android/launcher2/HomeShortcutItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-static {v3, v4, v5}, Lcom/android/launcher2/AppItem;->makeLaunchIntent(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/launcher2/Utilities;->isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    sget-object v3, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/launcher2/HomeShortcutItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "SM-T310X"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    new-instance v0, Lcom/android/launcher2/AppItem;

    invoke-virtual {p1}, Lcom/android/launcher2/HomeShortcutItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lcom/android/launcher2/AppItem;-><init>(Landroid/content/ComponentName;Z)V

    iget-object v3, p1, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/launcher2/HomeItem;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    const-string v1, "title"

    iget-object v2, p0, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher2/HomeShortcutItem;->promisedIntent:Landroid/content/Intent;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/HomeShortcutItem;->promisedIntent:Landroid/content/Intent;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "intent"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "restored"

    iget v2, p0, Lcom/android/launcher2/HomeShortcutItem;->status:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/launcher2/HomeShortcutItem;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-nez v1, :cond_5

    const-string v1, "iconType"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_1
    iget-boolean v1, p0, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/launcher2/HomeShortcutItem;->mCustomIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/launcher2/HomeShortcutItem;->mCustomIconBitmap:Landroid/graphics/Bitmap;

    invoke-static {p2, v1}, Lcom/android/launcher2/HomeShortcutItem;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_2
    iget-object v1, p0, Lcom/android/launcher2/HomeShortcutItem;->mIconMovie:Landroid/graphics/Movie;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/HomeShortcutItem;->mIconMovieUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    const-string v1, "iconMovieUri"

    iget-object v2, p0, Lcom/android/launcher2/HomeShortcutItem;->mIconMovieUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/HomeShortcutItem;->isPromise()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/launcher2/HomeShortcutItem;->mDBupdate:Z

    if-eqz v1, :cond_2

    const-string v1, "icon"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/android/launcher2/HomeShortcutItem;->mDBupdate:Z

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    const-string v1, "iconType"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "iconPackage"

    iget-object v2, p0, Lcom/android/launcher2/HomeShortcutItem;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v2, v2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "iconResource"

    iget-object v2, p0, Lcom/android/launcher2/HomeShortcutItem;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v2, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-static {p2, v1}, Lcom/android/launcher2/HomeShortcutItem;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_7
    iget-boolean v1, p0, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-static {p2, v1}, Lcom/android/launcher2/HomeShortcutItem;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    goto :goto_2
.end method

.method public setCustomIcon(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeShortcutItem;->mCustomIconBitmap:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/android/launcher2/HomeShortcutItem;->mCustomIconBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/HomeShortcutItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    return-void
.end method

.method protected setLiveIconBitmap(Landroid/content/Context;)V
    .locals 12

    const-wide/16 v10, 0x64

    invoke-static {p1}, Lcom/android/launcher2/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/UserManagerCompat;

    move-result-object v1

    iget-object v6, p0, Lcom/android/launcher2/HomeShortcutItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {v1, v6}, Lcom/android/launcher2/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher2/compat/UserHandleCompat;)J

    move-result-wide v4

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/launcher2/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher2/compat/UserHandleCompat;)J

    move-result-wide v2

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    cmp-long v6, v4, v10

    if-gez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/HomeShortcutItem;->isLiveIconPackage()Z

    move-result v6

    if-eqz v6, :cond_0

    sget-boolean v6, Lcom/android/launcher2/HomeShortcutItem;->DEBUGGABLE:Z

    if-eqz v6, :cond_2

    const-string v6, "HomeShortcutItem"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " setLiveIconBitmap : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/launcher2/HomeShortcutItem;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    cmp-long v6, v4, v10

    if-ltz v6, :cond_3

    invoke-static {p1}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/LauncherAppsCompat;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/launcher2/HomeShortcutItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher2/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Lcom/android/launcher2/compat/UserHandleCompat;)Lcom/android/launcher2/compat/LauncherActivityInfoCompat;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeShortcutItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6, v0}, Lcom/android/launcher2/utils/LiveIconUtils;->getLiveIcon(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/HomeShortcutItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/android/launcher2/utils/LiveIconUtils;->getLiveIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const-string v0, ""

    iget-object v2, p0, Lcom/android/launcher2/HomeShortcutItem;->dropPos:[I

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/HomeShortcutItem;->dropPos:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/HomeShortcutItem;->dropPos:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HomeShortcutItem(title="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/launcher2/HomeShortcutItem;->mId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " container="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/launcher2/HomeShortcutItem;->container:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " screen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/HomeShortcutItem;->mScreen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cellX="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/HomeShortcutItem;->cellX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cellY="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/HomeShortcutItem;->cellY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " spanX="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/HomeShortcutItem;->spanX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " spanY="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/HomeShortcutItem;->spanY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dropPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public updateIcon(Lcom/android/launcher2/PkgResCache;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/HomeShortcutItem;->updateIcon(Lcom/android/launcher2/PkgResCache;Z)V

    return-void
.end method

.method public updateIcon(Lcom/android/launcher2/PkgResCache;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/HomeShortcutItem;->mapTypeToDbValue()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeShortcutItem;->promisedIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/HomeShortcutItem;->promisedIntent:Landroid/content/Intent;

    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/HomeShortcutItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {p1, p0, v0, v1, p2}, Lcom/android/launcher2/PkgResCache;->getTitleAndIcon(Lcom/android/launcher2/HomeShortcutItem;Landroid/content/Intent;Lcom/android/launcher2/compat/UserHandleCompat;Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    goto :goto_0
.end method
