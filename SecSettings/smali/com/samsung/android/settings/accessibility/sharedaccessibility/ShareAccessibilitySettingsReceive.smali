.class public Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;
.super Landroid/app/Activity;
.source "ShareAccessibilitySettingsReceive.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$8;,
        Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$9;
    }
.end annotation


# static fields
.field private static MANAGE_ACCESSIBILITY_IMPORT:Ljava/lang/String;

.field private static RevSettingValues:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static receiveSettingValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mReceiveFullPath:Ljava/lang/String;

.field mReceiveUri:Landroid/net/Uri;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->importNotificationSet(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->RevSettingValues:Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.settings.action.MANAGE_ACCESSIBILITY_IMPORT"

    sput-object v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->MANAGE_ACCESSIBILITY_IMPORT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->mReceiveFullPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->mReceiveUri:Landroid/net/Uri;

    return-void
.end method

.method private applyPayload([B)V
    .locals 20

    new-instance v15, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sput-object v15, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->RevSettingValues:Ljava/lang/String;

    sget-object v15, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "applyPayload: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->RevSettingValues:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string/jumbo v5, ","

    const-string/jumbo v6, "="

    const-string/jumbo v7, "\\{"

    const-string/jumbo v8, "\\}"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    sget-object v15, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->RevSettingValues:Ljava/lang/String;

    const-string/jumbo v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v15, v7, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v15, ""

    invoke-virtual {v2, v8, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v15, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "after remove Bracket: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const/4 v9, 0x0

    :goto_0
    array-length v15, v12

    if-ge v9, v15, :cond_0

    aget-object v15, v12, v9

    invoke-virtual {v15, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    aget-object v15, v13, v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v15, 0x1

    aget-object v15, v13, v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v15, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "ResultKey"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v15, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "ResultValue"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    new-instance v11, Ljava/text/SimpleDateFormat;

    sget-object v15, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->DATE_FORMAT:Ljava/lang/String;

    invoke-direct {v11, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Settings of accessibility_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v14}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ".sasf"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sput-object v15, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->FILE_NAME:Ljava/lang/String;

    sget-object v15, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "FILE NAME : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->FILE_NAME:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v15, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->ACC_SETTING_FILE_INTERNAL_FOLDER_PATH:Ljava/lang/String;

    invoke-static {v15}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->createFolder(Ljava/lang/String;)V

    const/4 v15, 0x1

    sput v15, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->SaveFlag:I

    new-instance v15, Ljava/io/File;

    sget-object v16, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->ACC_SETTING_FILE_INTERNAL_FOLDER_PATH:Ljava/lang/String;

    sget-object v17, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->FILE_NAME:Ljava/lang/String;

    invoke-direct/range {v15 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v15, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_internal_file:Ljava/io/File;

    sget-object v15, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_internal_file:Ljava/io/File;

    invoke-static {v15}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->sharingFileNameCheck(Ljava/io/File;)Ljava/io/File;

    move-result-object v15

    sput-object v15, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_internal_file:Ljava/io/File;

    sget-object v15, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_internal_file:Ljava/io/File;

    invoke-static {v10, v15}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->saveValueToFile(Ljava/util/HashMap;Ljava/io/File;)V

    sget-object v15, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_internal_file:Ljava/io/File;

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-lez v15, :cond_1

    sget-object v15, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_internal_file:Ljava/io/File;

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v15}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->showImportAndRestoreDialog(Ljava/util/HashMap;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->showImportFailureDialog()V

    sget-object v15, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_internal_file:Ljava/io/File;

    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method private importNotificationSet(Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1213a0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120db1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    sget-object v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->MANAGE_ACCESSIBILITY_IMPORT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "importnotiticker"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "importnotititle"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "filename"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.settings.action.talkback_toggled"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "com.samsung.android.SettingsReceiver"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private shareAccessibilitySettingsReceive_Init()V
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->receiveSettingValues:Ljava/util/HashMap;

    return-void
.end method

.method private showImportAndRestoreDialog(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f121629

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$5;-><init>(Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;)V

    const v3, 0x7f120892

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$6;

    invoke-direct {v2, p0, p1, p2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$6;-><init>(Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;Ljava/util/HashMap;Ljava/lang/String;)V

    const v3, 0x7f120899

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$7;-><init>(Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showImportFailureDialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$3;-><init>(Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;)V

    const v2, 0x7f120899

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$4;-><init>(Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showNotSupportFileDialog(Ljava/lang/String;)V
    .locals 5

    const v4, 0x7f120af2

    sget-object v1, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showNotSupportFileDialog : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121303

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1205fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$1;-><init>(Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$2;-><init>(Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " /"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 15

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-object v10, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "onCreate"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->shareAccessibilitySettingsReceive_Init()V

    const-string/jumbo v10, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string/jumbo v11, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v8

    if-eqz v8, :cond_1

    array-length v10, v8

    new-array v5, v10, [Landroid/nfc/NdefMessage;

    const/4 v3, 0x0

    :goto_0
    array-length v10, v8

    if-ge v3, v10, :cond_0

    aget-object v10, v8, v3

    check-cast v10, Landroid/nfc/NdefMessage;

    aput-object v10, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    aget-object v10, v5, v10

    invoke-virtual {v10}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-virtual {v10}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v6

    sget-object v10, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "call applyPayload"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->applyPayload([B)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_3

    new-instance v10, Landroid/view/ContextThemeWrapper;

    iget-object v11, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->mContext:Landroid/content/Context;

    const v12, 0x103012b

    invoke-direct {v10, v11, v12}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v11, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f1211cf

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    iget-object v13, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f120af0

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->finish()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->getIntent()Landroid/content/Intent;

    move-result-object v4

    sget-object v10, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Intent : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->mReceiveUri:Landroid/net/Uri;

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->mReceiveUri:Landroid/net/Uri;

    if-nez v10, :cond_4

    sget-object v10, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "mReceiveUri is null "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->finish()V

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->mReceiveUri:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->mReceiveFullPath:Ljava/lang/String;

    const/4 v7, 0x0

    sget-object v10, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mReceiveUri: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->mReceiveUri:Landroid/net/Uri;

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v10, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mReceiveFullPath: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->mReceiveFullPath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->mReceiveUri:Landroid/net/Uri;

    const-string/jumbo v12, "r"

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v7

    :goto_2
    if-nez v7, :cond_5

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->showNotSupportFileDialog(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v10

    const-wide/32 v12, 0x100000

    cmp-long v10, v10, v12

    if-lez v10, :cond_6

    sget-object v10, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "File is too big. It might not be Manage acc file : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->showNotSupportFileDialog(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    :try_start_1
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->mReceiveFullPath:Ljava/lang/String;

    invoke-static {v10, v7}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->LoadValue(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Ljava/util/HashMap;

    move-result-object v10

    sput-object v10, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->receiveSettingValues:Ljava/util/HashMap;
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_7

    :try_start_2
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_7
    :goto_3
    sget-object v10, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->receiveSettingValues:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "{}"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    sget-object v10, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "receiveSettingValues is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->finish()V

    goto/16 :goto_1

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v2

    :try_start_3
    invoke-virtual {v2}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_7

    :try_start_4
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_3

    :catchall_0
    move-exception v10

    if-eqz v7, :cond_8

    :try_start_5
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_8
    :goto_4
    throw v10

    :catch_3
    move-exception v1

    goto :goto_4

    :cond_9
    sget-object v10, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->receiveSettingValues:Ljava/util/HashMap;

    invoke-direct {p0, v10, v0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->showImportAndRestoreDialog(Ljava/util/HashMap;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_4
    move-exception v1

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->RevSettingValues:Ljava/lang/String;

    if-eqz v0, :cond_0

    sput-object v1, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->RevSettingValues:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->receiveSettingValues:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    sput-object v1, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->receiveSettingValues:Ljava/util/HashMap;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->mContext:Landroid/content/Context;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->mReceiveFullPath:Ljava/lang/String;

    if-eqz v0, :cond_3

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->mReceiveFullPath:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->mReceiveUri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->mReceiveUri:Landroid/net/Uri;

    :cond_4
    sget-object v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
