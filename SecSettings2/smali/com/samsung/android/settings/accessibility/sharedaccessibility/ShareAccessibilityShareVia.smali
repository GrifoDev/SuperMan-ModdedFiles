.class public Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;
.super Landroid/app/Activity;
.source "ShareAccessibilityShareVia.java"


# static fields
.field private static final PACKAGE_QCONNECT:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_QUICKCONNECT_CONFIG_PACKAGE_NAME"

    const-string/jumbo v2, "com.samsung.android.oneconnect"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->PACKAGE_QCONNECT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->mContext:Landroid/content/Context;

    return-void
.end method

.method private ShareAccessibilityShareVia_Init()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1002a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1002a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    return-void
.end method

.method private addUserIdToUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-object v2

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_1

    const-string/jumbo v2, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->uriHasUserId(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    return-object v2

    :cond_1
    return-object p1
.end method

.method private getMediaUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 9

    const/4 v8, 0x0

    const-string/jumbo v2, "external"

    invoke-static {v2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v6, 0x0

    :try_start_0
    const-string/jumbo v3, "_data= ? COLLATE LOCALIZED"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v4, v2

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v2, "_id"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->addUserIdToUri(Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v2

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_0
    return-object v8

    :catch_0
    move-exception v7

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method private showContent(I)V
    .locals 6

    const/4 v5, 0x1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "ShareAccessibilityShareVia"

    const-string/jumbo v4, "showContent : pin lock enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v3, "com.sec.android.app.myfiles.PICK_DATA_MULTIPLE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "FOLDERPATH"

    sget-object v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->ACC_SETTING_FILE_MOST_INTERNAL_PATH:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "CONTENT_TYPE"

    const-string/jumbo v4, "application/x-sasf"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "JUST_SELECT_MODE"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v3, 0x2

    :try_start_0
    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "/Accessibility"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->getExternalMemoryPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.sec.android.app.myfiles.PICK_DATA_MULTIPLE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "FOLDERPATH"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "CONTENT_TYPE"

    const-string/jumbo v4, "application/x-sasf"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "JUST_SELECT_MODE"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v3, 0x2

    :try_start_1
    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private show_share_via_multi_files([Ljava/lang/String;)V
    .locals 9

    const-string/jumbo v6, "ShareAccessibilityShareVia"

    const-string/jumbo v7, "show_share_via_multi_files is entered"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    array-length v6, p1

    if-ge v2, v6, :cond_1

    const/4 v5, 0x0

    aget-object v6, p1, v2

    invoke-direct {p0, p0, v6}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->getMediaUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_0

    new-instance v6, Ljava/io/File;

    aget-object v7, p1, v2

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    :cond_0
    const-string/jumbo v6, "ShareAccessibilityShareVia"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Uri "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v6, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.extra.STREAM"

    invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->PACKAGE_QCONNECT:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "more_actions_quick_connect"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    const-string/jumbo v6, "application/x-sasf"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const v6, 0x7f0b0258

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private show_share_via_single_file(Ljava/lang/String;)V
    .locals 7

    const-string/jumbo v4, "ShareAccessibilityShareVia"

    const-string/jumbo v5, "show_share_via_single_file is entered"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    invoke-direct {p0, p0, p1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->getMediaUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    :cond_0
    const-string/jumbo v4, "ShareAccessibilityShareVia"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Uri : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "android.intent.action.SEND"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.extra.STREAM"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->PACKAGE_QCONNECT:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "more_actions_quick_connect"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    const-string/jumbo v4, "application/x-sasf"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const v4, 0x7f0b0258

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static uriHasUserId(Landroid/net/Uri;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v2, "ShareAccessibilityShareVia"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resultCode :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "ShareAccessibilityShareVia"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestCode :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_4

    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    const/4 v0, 0x0

    const-string/jumbo v2, "FILE"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v2, v0

    if-le v2, v6, :cond_2

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    const-string/jumbo v2, "ShareAccessibilityShareVia"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onActivityResult length is 1 more, PICK_MULTI_FILE path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->show_share_via_multi_files([Ljava/lang/String;)V

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->finish()V

    return-void

    :cond_2
    array-length v2, v0

    if-ne v2, v6, :cond_3

    const-string/jumbo v2, "ShareAccessibilityShareVia"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onActivityResult length is 1, PICK_MULTI_FILE path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v2, v0, v5

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->show_share_via_single_file(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v2, "ShareAccessibilityShareVia"

    const-string/jumbo v3, "PICK_MULTI_FILE : not selected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string/jumbo v2, "ShareAccessibilityShareVia"

    const-string/jumbo v3, "data is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->ShareAccessibilityShareVia_Init()V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "ShareAccessibilityShareVia"

    const-string/jumbo v3, "It is not possible to get Action"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "Item"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->showContent(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "ShareAccessibilityShareVia"

    const-string/jumbo v3, "It is not possible to get selected item from Intent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->finish()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
