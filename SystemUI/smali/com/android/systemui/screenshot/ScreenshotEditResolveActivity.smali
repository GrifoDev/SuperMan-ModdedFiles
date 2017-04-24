.class public Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;
.super Landroid/app/Activity;
.source "ScreenshotEditResolveActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mNotificationId:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private addPaperArtistIntent(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;)Z"
        }
    .end annotation

    const-string/jumbo v1, "com.dama.paperartist"

    invoke-direct {p0, v1}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->isPackageVaild(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mUri:Landroid/net/Uri;

    const-string/jumbo v2, "image/png"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.STREAM"

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.dama.paperartist"

    const-string/jumbo v3, "com.dama.paperartist.PaperArtistActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private addPhotoEditorIntent(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;)Z"
        }
    .end annotation

    const-string/jumbo v1, "com.sec.android.mimage.photoretouching"

    invoke-direct {p0, v1}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->isPackageVaild(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mUri:Landroid/net/Uri;

    const-string/jumbo v2, "image/png"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.STREAM"

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.sec.android.mimage.photoretouching"

    const-string/jumbo v3, "com.sec.android.mimage.photoretouching.PhotoRetouching"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private addPsTouchIntent(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;)Z"
        }
    .end annotation

    const-string/jumbo v1, "air.com.adobe.pstouch.oem1"

    invoke-direct {p0, v1}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->isPackageVaild(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mUri:Landroid/net/Uri;

    const-string/jumbo v2, "image/png"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.STREAM"

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "air.com.adobe.pstouch.oem1"

    const-string/jumbo v3, "air.com.adobe.pstouch.oem1.AppEntry"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private doFinish()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0285

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->finish()V

    return-void
.end method

.method private isPackageVaild(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->TAG:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : return true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_0
    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : return false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "com.dama.paperartist is not vaild"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method


# virtual methods
.method public getPathFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v7

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 24

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->requestWindowFeature(I)Z

    const-string/jumbo v20, "NotificationId"

    const/16 v21, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mNotificationId:I

    const-string/jumbo v20, "notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/NotificationManager;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mNotificationId:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/app/NotificationManager;->cancel(I)V

    const-string/jumbo v20, "Uri"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v20

    check-cast v20, Landroid/net/Uri;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mUri:Landroid/net/Uri;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    sget-object v20, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v21, "onCreate : mUri is null."

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->doFinish()V

    :goto_0
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mUri:Landroid/net/Uri;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->getPathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_1

    sget-object v20, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v21, "onCreate : path is not exist."

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->doFinish()V

    goto :goto_0

    :cond_1
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_2

    sget-object v20, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v21, "onCreate : Item is not exist."

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->doFinish()V

    goto :goto_0

    :cond_2
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v20, "android.intent.action.EDIT"

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mUri:Landroid/net/Uri;

    move-object/from16 v20, v0

    const-string/jumbo v21, "image/png"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v20, 0x10000000

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-static {v8, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v20, 0x10000000

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v20, 0x10000

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    if-eqz v15, :cond_4

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v8, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_3
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    new-instance v20, Landroid/content/ComponentName;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-direct/range {v20 .. v22}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const-string/jumbo v20, "extra_chooser_droplist"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v10}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->addPaperArtistIntent(Ljava/util/ArrayList;)Z

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->addPhotoEditorIntent(Ljava/util/ArrayList;)Z

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->addPsTouchIntent(Ljava/util/ArrayList;)Z

    :try_start_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v19

    sget-object v20, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "size = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    sget-object v20, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "onCreate : Single image edit app - "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->finish()V

    goto/16 :goto_0

    :cond_5
    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_7

    :try_start_1
    move/from16 v0, v19

    new-array v2, v0, [Landroid/content/Intent;

    const/4 v11, 0x0

    :goto_3
    move/from16 v0, v19

    if-ge v11, v0, :cond_6

    new-instance v21, Landroid/content/Intent;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/Intent;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    aput-object v21, v2, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_6
    const-string/jumbo v20, "android.intent.extra.ALTERNATE_INTENTS"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v6

    sget-object v20, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "onCreate : ActivityNotFoundException occured. "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/systemui/screenshot/ScreenshotUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_a

    invoke-static {v5}, Lcom/android/systemui/screenshot/ScreenshotUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-static {}, Lcom/android/systemui/screenshot/ScreenshotUtils;->isDisplayAsMPSM()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const v22, 0x7f0f0293

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    aput-object v22, v21, v23

    const v22, 0x7f0f0291

    move/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    :cond_7
    :try_start_2
    sget-object v20, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "onCreate : No edit app? count = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v20, Landroid/content/ActivityNotFoundException;

    invoke-direct/range {v20 .. v20}, Landroid/content/ActivityNotFoundException;-><init>()V

    throw v20
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const v22, 0x7f0f0293

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    aput-object v22, v21, v23

    const v22, 0x7f0f0290

    move/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const v22, 0x7f0f0293

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    aput-object v22, v21, v23

    const v22, 0x7f0f028f

    move/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const v22, 0x7f0f0293

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    aput-object v22, v21, v23

    const v22, 0x7f0f0294

    move/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2
.end method
