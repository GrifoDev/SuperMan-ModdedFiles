.class public Lcom/android/contacts/common/vcard/ExportProcessor;
.super Lcom/android/contacts/common/vcard/ProcessorBase;
.source "ExportProcessor.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "VCardExport"


# instance fields
.field private final SHOW_READY_TOAST:I

.field private final handler:Landroid/os/Handler;

.field private final mCallingActivity:Ljava/lang/String;

.field private volatile mCanceled:Z

.field private volatile mDone:Z

.field private final mExportRequest:Lcom/android/contacts/common/vcard/ExportRequest;

.field private final mJobId:I

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mService:Lcom/android/contacts/common/vcard/VCardService;


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/vcard/VCardService;Lcom/android/contacts/common/vcard/ExportRequest;ILjava/lang/String;)V
    .locals 2
    .param p1, "service"    # Lcom/android/contacts/common/vcard/VCardService;
    .param p2, "exportRequest"    # Lcom/android/contacts/common/vcard/ExportRequest;
    .param p3, "jobId"    # I
    .param p4, "callingActivity"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ProcessorBase;-><init>()V

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->SHOW_READY_TOAST:I

    .line 64
    new-instance v0, Lcom/android/contacts/common/vcard/ExportProcessor$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/vcard/ExportProcessor$1;-><init>(Lcom/android/contacts/common/vcard/ExportProcessor;)V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->handler:Landroid/os/Handler;

    .line 77
    iput-object p1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    .line 78
    invoke-virtual {p1}, Lcom/android/contacts/common/vcard/VCardService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mResolver:Landroid/content/ContentResolver;

    .line 79
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const-string v1, "notification"

    .line 80
    invoke-virtual {v0, v1}, Lcom/android/contacts/common/vcard/VCardService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mNotificationManager:Landroid/app/NotificationManager;

    .line 81
    iput-object p2, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/common/vcard/ExportRequest;

    .line 82
    iput p3, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    .line 83
    iput-object p4, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mCallingActivity:Ljava/lang/String;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/common/vcard/ExportProcessor;)Lcom/android/contacts/common/vcard/VCardService;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/vcard/ExportProcessor;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    return-object v0
.end method

.method private doCancelNotification()V
    .locals 7

    .prologue
    .line 281
    iget-object v2, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const v3, 0x7f0904ca

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/common/vcard/ExportRequest;

    iget-object v6, v6, Lcom/android/contacts/common/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    .line 282
    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 281
    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/common/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "description":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    .line 284
    invoke-static {v2, v0}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->constructCancelNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v1

    .line 285
    .local v1, "notification":Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v3, "VCardServiceProgress"

    iget v4, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    invoke-virtual {v2, v3, v4, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 287
    return-void
.end method

.method private doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 291
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 292
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mCallingActivity:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    iget-object v2, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    .line 294
    invoke-static {v2, p1, p2, v0}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->constructFinishNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Notification;

    move-result-object v1

    .line 296
    .local v1, "notification":Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v3, "VCardServiceProgress"

    iget v4, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    invoke-virtual {v2, v3, v4, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 298
    return-void
.end method

.method private doFinishNotificationWithShareAction(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 307
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 308
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "text/x-vcard"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 311
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 313
    iget-object v2, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const/high16 v3, 0x10000000

    .line 314
    invoke-static {v2, p1, p2, v0, v3}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->constructFinishNotificationWithFlags(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)Landroid/app/Notification;

    move-result-object v1

    .line 316
    .local v1, "notification":Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v3, "VCardServiceProgress"

    iget v4, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    invoke-virtual {v2, v3, v4, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 318
    return-void
.end method

.method private doProgressNotification(Landroid/net/Uri;II)V
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "totalCount"    # I
    .param p3, "currentCount"    # I

    .prologue
    .line 266
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 267
    .local v5, "displayName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const v1, 0x7f0904c8

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 268
    invoke-virtual {v0, v1, v4}, Lcom/android/contacts/common/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 269
    .local v2, "description":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const v1, 0x7f0904c9

    .line 270
    invoke-virtual {v0, v1}, Lcom/android/contacts/common/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 271
    .local v3, "tickerText":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const/4 v1, 0x2

    iget v4, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move v6, p2

    move v7, p3

    .line 272
    invoke-static/range {v0 .. v7}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->constructProgressNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Landroid/app/Notification;

    move-result-object v8

    .line 275
    .local v8, "notification":Landroid/app/Notification;
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "VCardServiceProgress"

    iget v4, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    invoke-virtual {v0, v1, v4, v8}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 277
    return-void
.end method

.method private isLocalFile(Landroid/net/Uri;)Z
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 248
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "authority":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const v2, 0x7f090478

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private runInternal()V
    .locals 27

    .prologue
    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/common/vcard/ExportRequest;

    move-object/from16 v18, v0

    .line 116
    .local v18, "request":Lcom/android/contacts/common/vcard/ExportRequest;
    const/4 v10, 0x0

    .line 117
    .local v10, "composer":Lcom/android/vcard/VCardComposer;
    const/16 v25, 0x0

    .line 118
    .local v25, "writer":Ljava/io/Writer;
    const/16 v19, 0x0

    .line 120
    .local v19, "successful":Z
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/vcard/ExportProcessor;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 121
    const-string v4, "VCardExport"

    const-string v5, "Export request is cancelled before handling the request"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 233
    if-eqz v10, :cond_0

    .line 234
    invoke-virtual {v10}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 236
    :cond_0
    if-eqz v25, :cond_1

    .line 238
    :try_start_1
    invoke-virtual/range {v25 .. v25}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 243
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v19

    invoke-virtual {v4, v5, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    move-object v3, v10

    .line 245
    .end local v10    # "composer":Lcom/android/vcard/VCardComposer;
    .local v3, "composer":Lcom/android/vcard/VCardComposer;
    :goto_1
    return-void

    .line 239
    .end local v3    # "composer":Lcom/android/vcard/VCardComposer;
    .restart local v10    # "composer":Lcom/android/vcard/VCardComposer;
    :catch_0
    move-exception v12

    .line 240
    .local v12, "e":Ljava/io/IOException;
    const-string v4, "VCardExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 124
    .end local v12    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_2
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/contacts/common/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    move-object/from16 v23, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 127
    .local v23, "uri":Landroid/net/Uri;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v17

    .line 139
    .local v17, "outputStream":Ljava/io/OutputStream;
    :try_start_4
    move-object/from16 v0, v18

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ExportRequest;->exportType:Ljava/lang/String;

    .line 141
    .local v14, "exportType":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 142
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const v5, 0x7f09046c

    .line 143
    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 142
    invoke-static {v4}, Lcom/android/vcard/VCardConfig;->getVCardTypeFromString(Ljava/lang/String;)I

    move-result v24

    .line 148
    .local v24, "vcardType":I
    :goto_2
    new-instance v3, Lcom/android/vcard/VCardComposer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const/4 v5, 0x1

    move/from16 v0, v24

    invoke-direct {v3, v4, v0, v5}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;IZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 155
    .end local v10    # "composer":Lcom/android/vcard/VCardComposer;
    .restart local v3    # "composer":Lcom/android/vcard/VCardComposer;
    :try_start_5
    new-instance v26, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 156
    .end local v25    # "writer":Ljava/io/Writer;
    .local v26, "writer":Ljava/io/Writer;
    :try_start_6
    sget-object v9, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    .line 158
    .local v9, "contentUriForRawContactsEntity":Landroid/net/Uri;
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/android/vcard/VCardComposer;->init(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 161
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v13

    .line 162
    .local v13, "errorReason":Ljava/lang/String;
    const-string v4, "VCardExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initialization of vCard composer failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/contacts/common/vcard/ExportProcessor;->translateComposerError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 165
    .local v22, "translatedErrorReason":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const v5, 0x7f0904cf

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v22, v6, v7

    .line 166
    invoke-virtual {v4, v5, v6}, Lcom/android/contacts/common/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 168
    .local v20, "title":Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/common/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 233
    if-eqz v3, :cond_3

    .line 234
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 236
    :cond_3
    if-eqz v26, :cond_4

    .line 238
    :try_start_7
    invoke-virtual/range {v26 .. v26}, Ljava/io/Writer;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 243
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v19

    invoke-virtual {v4, v5, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    move-object/from16 v25, v26

    .line 169
    .end local v26    # "writer":Ljava/io/Writer;
    .restart local v25    # "writer":Ljava/io/Writer;
    goto/16 :goto_1

    .line 128
    .end local v3    # "composer":Lcom/android/vcard/VCardComposer;
    .end local v9    # "contentUriForRawContactsEntity":Landroid/net/Uri;
    .end local v13    # "errorReason":Ljava/lang/String;
    .end local v14    # "exportType":Ljava/lang/String;
    .end local v17    # "outputStream":Ljava/io/OutputStream;
    .end local v20    # "title":Ljava/lang/String;
    .end local v22    # "translatedErrorReason":Ljava/lang/String;
    .end local v24    # "vcardType":I
    .restart local v10    # "composer":Lcom/android/vcard/VCardComposer;
    :catch_1
    move-exception v12

    .line 129
    .local v12, "e":Ljava/io/FileNotFoundException;
    :try_start_8
    const-string v4, "VCardExport"

    const-string v5, "FileNotFoundException thrown"

    invoke-static {v4, v5, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const v5, 0x7f0904d0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v23, v6, v7

    const/4 v7, 0x1

    .line 134
    invoke-virtual {v12}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 133
    invoke-virtual {v4, v5, v6}, Lcom/android/contacts/common/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 135
    .restart local v13    # "errorReason":Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4}, Lcom/android/contacts/common/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 233
    if-eqz v10, :cond_5

    .line 234
    invoke-virtual {v10}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 236
    :cond_5
    if-eqz v25, :cond_6

    .line 238
    :try_start_9
    invoke-virtual/range {v25 .. v25}, Ljava/io/Writer;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 243
    .end local v12    # "e":Ljava/io/FileNotFoundException;
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v19

    invoke-virtual {v4, v5, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    move-object v3, v10

    .line 136
    .end local v10    # "composer":Lcom/android/vcard/VCardComposer;
    .restart local v3    # "composer":Lcom/android/vcard/VCardComposer;
    goto/16 :goto_1

    .line 239
    .end local v3    # "composer":Lcom/android/vcard/VCardComposer;
    .restart local v10    # "composer":Lcom/android/vcard/VCardComposer;
    .restart local v12    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v12

    .line 240
    .local v12, "e":Ljava/io/IOException;
    const-string v4, "VCardExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 145
    .end local v12    # "e":Ljava/io/IOException;
    .end local v13    # "errorReason":Ljava/lang/String;
    .restart local v14    # "exportType":Ljava/lang/String;
    .restart local v17    # "outputStream":Ljava/io/OutputStream;
    :cond_7
    :try_start_a
    invoke-static {v14}, Lcom/android/vcard/VCardConfig;->getVCardTypeFromString(Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result v24

    .restart local v24    # "vcardType":I
    goto/16 :goto_2

    .line 239
    .end local v10    # "composer":Lcom/android/vcard/VCardComposer;
    .end local v25    # "writer":Ljava/io/Writer;
    .restart local v3    # "composer":Lcom/android/vcard/VCardComposer;
    .restart local v9    # "contentUriForRawContactsEntity":Landroid/net/Uri;
    .restart local v13    # "errorReason":Ljava/lang/String;
    .restart local v20    # "title":Ljava/lang/String;
    .restart local v22    # "translatedErrorReason":Ljava/lang/String;
    .restart local v26    # "writer":Ljava/io/Writer;
    :catch_3
    move-exception v12

    .line 240
    .restart local v12    # "e":Ljava/io/IOException;
    const-string v4, "VCardExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 172
    .end local v12    # "e":Ljava/io/IOException;
    .end local v13    # "errorReason":Ljava/lang/String;
    .end local v20    # "title":Ljava/lang/String;
    .end local v22    # "translatedErrorReason":Ljava/lang/String;
    :cond_8
    :try_start_b
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->getCount()I

    move-result v21

    .line 173
    .local v21, "total":I
    if-nez v21, :cond_b

    .line 174
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const v5, 0x7f0904d6

    .line 175
    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 176
    .restart local v20    # "title":Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/common/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 233
    if-eqz v3, :cond_9

    .line 234
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 236
    :cond_9
    if-eqz v26, :cond_a

    .line 238
    :try_start_c
    invoke-virtual/range {v26 .. v26}, Ljava/io/Writer;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    .line 243
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v19

    invoke-virtual {v4, v5, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    move-object/from16 v25, v26

    .line 177
    .end local v26    # "writer":Ljava/io/Writer;
    .restart local v25    # "writer":Ljava/io/Writer;
    goto/16 :goto_1

    .line 239
    .end local v25    # "writer":Ljava/io/Writer;
    .restart local v26    # "writer":Ljava/io/Writer;
    :catch_4
    move-exception v12

    .line 240
    .restart local v12    # "e":Ljava/io/IOException;
    const-string v4, "VCardExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 180
    .end local v12    # "e":Ljava/io/IOException;
    .end local v20    # "title":Ljava/lang/String;
    :cond_b
    const/4 v11, 0x1

    .line 181
    .local v11, "current":I
    :goto_6
    :try_start_d
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_12

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/vcard/ExportProcessor;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 183
    const-string v4, "VCardExport"

    const-string v5, "Export request is cancelled during composing vCard"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 233
    if-eqz v3, :cond_c

    .line 234
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 236
    :cond_c
    if-eqz v26, :cond_d

    .line 238
    :try_start_e
    invoke-virtual/range {v26 .. v26}, Ljava/io/Writer;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    .line 243
    :cond_d
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v19

    invoke-virtual {v4, v5, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    move-object/from16 v25, v26

    .line 184
    .end local v26    # "writer":Ljava/io/Writer;
    .restart local v25    # "writer":Ljava/io/Writer;
    goto/16 :goto_1

    .line 239
    .end local v25    # "writer":Ljava/io/Writer;
    .restart local v26    # "writer":Ljava/io/Writer;
    :catch_5
    move-exception v12

    .line 240
    .restart local v12    # "e":Ljava/io/IOException;
    const-string v4, "VCardExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 187
    .end local v12    # "e":Ljava/io/IOException;
    :cond_e
    :try_start_f
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->createOneEntry()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 202
    :try_start_10
    rem-int/lit8 v4, v11, 0x64

    const/4 v5, 0x1

    if-ne v4, v5, :cond_f

    .line 203
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v11}, Lcom/android/contacts/common/vcard/ExportProcessor;->doProgressNotification(Landroid/net/Uri;II)V

    .line 205
    :cond_f
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 188
    :catch_6
    move-exception v12

    .line 189
    .restart local v12    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v13

    .line 190
    .restart local v13    # "errorReason":Ljava/lang/String;
    const-string v4, "VCardExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to read a contact: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/contacts/common/vcard/ExportProcessor;->translateComposerError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 193
    .restart local v22    # "translatedErrorReason":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const v5, 0x7f0904d1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v22, v6, v7

    .line 194
    invoke-virtual {v4, v5, v6}, Lcom/android/contacts/common/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 196
    .restart local v20    # "title":Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/common/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 233
    if-eqz v3, :cond_10

    .line 234
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 236
    :cond_10
    if-eqz v26, :cond_11

    .line 238
    :try_start_11
    invoke-virtual/range {v26 .. v26}, Ljava/io/Writer;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7

    .line 243
    :cond_11
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v19

    invoke-virtual {v4, v5, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    move-object/from16 v25, v26

    .line 197
    .end local v26    # "writer":Ljava/io/Writer;
    .restart local v25    # "writer":Ljava/io/Writer;
    goto/16 :goto_1

    .line 239
    .end local v25    # "writer":Ljava/io/Writer;
    .restart local v26    # "writer":Ljava/io/Writer;
    :catch_7
    move-exception v12

    .line 240
    const-string v4, "VCardExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 207
    .end local v12    # "e":Ljava/io/IOException;
    .end local v13    # "errorReason":Ljava/lang/String;
    .end local v20    # "title":Ljava/lang/String;
    .end local v22    # "translatedErrorReason":Ljava/lang/String;
    :cond_12
    :try_start_12
    const-string v4, "VCardExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Successfully finished exporting vCard "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/android/contacts/common/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/VCardService;->updateMediaScanner(Ljava/lang/String;)V

    .line 214
    const/16 v19, 0x1

    .line 215
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->getOpenableUriDisplayName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v15

    .line 219
    .local v15, "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/contacts/common/vcard/ExportProcessor;->isLocalFile(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 220
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->handler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v16

    .line 221
    .local v16, "msg":Landroid/os/Message;
    const/4 v4, 0x1

    move-object/from16 v0, v16

    iput v4, v0, Landroid/os/Message;->arg1:I

    .line 222
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->handler:Landroid/os/Handler;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 223
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const v5, 0x7f0904cd

    .line 224
    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const v6, 0x7f0905a2

    .line 225
    invoke-virtual {v5, v6}, Lcom/android/contacts/common/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 223
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v4, v5, v1}, Lcom/android/contacts/common/vcard/ExportProcessor;->doFinishNotificationWithShareAction(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 233
    .end local v16    # "msg":Landroid/os/Message;
    :goto_9
    if-eqz v3, :cond_13

    .line 234
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 236
    :cond_13
    if-eqz v26, :cond_14

    .line 238
    :try_start_13
    invoke-virtual/range {v26 .. v26}, Ljava/io/Writer;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8

    .line 243
    :cond_14
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v19

    invoke-virtual {v4, v5, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    move-object/from16 v25, v26

    .line 245
    .end local v26    # "writer":Ljava/io/Writer;
    .restart local v25    # "writer":Ljava/io/Writer;
    goto/16 :goto_1

    .line 227
    .end local v25    # "writer":Ljava/io/Writer;
    .restart local v26    # "writer":Ljava/io/Writer;
    :cond_15
    if-nez v15, :cond_18

    :try_start_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const v5, 0x7f0904cd

    .line 228
    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 230
    .restart local v20    # "title":Ljava/lang/String;
    :goto_b
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/common/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto :goto_9

    .line 233
    .end local v9    # "contentUriForRawContactsEntity":Landroid/net/Uri;
    .end local v11    # "current":I
    .end local v15    # "filename":Ljava/lang/String;
    .end local v20    # "title":Ljava/lang/String;
    .end local v21    # "total":I
    :catchall_0
    move-exception v4

    move-object/from16 v25, v26

    .end local v14    # "exportType":Ljava/lang/String;
    .end local v17    # "outputStream":Ljava/io/OutputStream;
    .end local v23    # "uri":Landroid/net/Uri;
    .end local v24    # "vcardType":I
    .end local v26    # "writer":Ljava/io/Writer;
    .restart local v25    # "writer":Ljava/io/Writer;
    :goto_c
    if-eqz v3, :cond_16

    .line 234
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 236
    :cond_16
    if-eqz v25, :cond_17

    .line 238
    :try_start_15
    invoke-virtual/range {v25 .. v25}, Ljava/io/Writer;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_9

    .line 243
    :cond_17
    :goto_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v19

    invoke-virtual {v5, v6, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    throw v4

    .line 228
    .end local v25    # "writer":Ljava/io/Writer;
    .restart local v9    # "contentUriForRawContactsEntity":Landroid/net/Uri;
    .restart local v11    # "current":I
    .restart local v14    # "exportType":Ljava/lang/String;
    .restart local v15    # "filename":Ljava/lang/String;
    .restart local v17    # "outputStream":Ljava/io/OutputStream;
    .restart local v21    # "total":I
    .restart local v23    # "uri":Landroid/net/Uri;
    .restart local v24    # "vcardType":I
    .restart local v26    # "writer":Ljava/io/Writer;
    :cond_18
    :try_start_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const v5, 0x7f0904cc

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v15, v6, v7

    .line 229
    invoke-virtual {v4, v5, v6}, Lcom/android/contacts/common/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    move-result-object v20

    goto :goto_b

    .line 239
    :catch_8
    move-exception v12

    .line 240
    .restart local v12    # "e":Ljava/io/IOException;
    const-string v4, "VCardExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 239
    .end local v9    # "contentUriForRawContactsEntity":Landroid/net/Uri;
    .end local v11    # "current":I
    .end local v12    # "e":Ljava/io/IOException;
    .end local v14    # "exportType":Ljava/lang/String;
    .end local v15    # "filename":Ljava/lang/String;
    .end local v17    # "outputStream":Ljava/io/OutputStream;
    .end local v21    # "total":I
    .end local v23    # "uri":Landroid/net/Uri;
    .end local v24    # "vcardType":I
    .end local v26    # "writer":Ljava/io/Writer;
    .restart local v25    # "writer":Ljava/io/Writer;
    :catch_9
    move-exception v12

    .line 240
    .restart local v12    # "e":Ljava/io/IOException;
    const-string v5, "VCardExport"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 233
    .end local v3    # "composer":Lcom/android/vcard/VCardComposer;
    .end local v12    # "e":Ljava/io/IOException;
    .restart local v10    # "composer":Lcom/android/vcard/VCardComposer;
    :catchall_1
    move-exception v4

    move-object v3, v10

    .end local v10    # "composer":Lcom/android/vcard/VCardComposer;
    .restart local v3    # "composer":Lcom/android/vcard/VCardComposer;
    goto :goto_c

    .restart local v14    # "exportType":Ljava/lang/String;
    .restart local v17    # "outputStream":Ljava/io/OutputStream;
    .restart local v23    # "uri":Landroid/net/Uri;
    .restart local v24    # "vcardType":I
    :catchall_2
    move-exception v4

    goto :goto_c
.end method

.method private translateComposerError(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 253
    iget-object v1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    invoke-virtual {v1}, Lcom/android/contacts/common/vcard/VCardService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 254
    .local v0, "resources":Landroid/content/res/Resources;
    const-string v1, "Failed to get database information"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    const v1, 0x7f090465

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 261
    .end local p1    # "errorMessage":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 256
    .restart local p1    # "errorMessage":Ljava/lang/String;
    :cond_1
    const-string v1, "There\'s no exportable in the database"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 257
    const v1, 0x7f090466

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 258
    :cond_2
    const-string v1, "The vCard composer object is not correctly initialized"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    const v1, 0x7f090467

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized cancel(Z)Z
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    const/4 v0, 0x1

    .line 323
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mDone:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 324
    :cond_0
    const/4 v0, 0x0

    .line 327
    :goto_0
    monitor-exit p0

    return v0

    .line 326
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mCanceled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRequest()Lcom/android/contacts/common/vcard/ExportRequest;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/common/vcard/ExportRequest;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x2

    return v0
.end method

.method public declared-synchronized isCancelled()Z
    .locals 1

    .prologue
    .line 332
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    .prologue
    .line 337
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 95
    :try_start_0
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ExportProcessor;->runInternal()V

    .line 97
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ExportProcessor;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ExportProcessor;->doCancelNotification()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 107
    :cond_0
    monitor-enter p0

    .line 108
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mDone:Z

    .line 109
    monitor-exit p0

    .line 111
    return-void

    .line 109
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v1, "VCardExport"

    const-string v2, "OutOfMemoryError thrown during import"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 107
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_1
    move-exception v1

    monitor-enter p0

    .line 108
    const/4 v2, 0x1

    :try_start_3
    iput-boolean v2, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mDone:Z

    .line 109
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1

    .line 103
    :catch_1
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_4
    const-string v1, "VCardExport"

    const-string v2, "RuntimeException thrown during export"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 109
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method
