.class Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;
.super Ljava/lang/Thread;
.source "ImportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/vcard/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VCardCacheThread"
.end annotation


# instance fields
.field private mCanceled:Z

.field private final mDisplayName:Ljava/lang/String;

.field private final mSource:[B

.field private final mSourceDisplayNames:[Ljava/lang/String;

.field private final mSourceUris:[Landroid/net/Uri;

.field private mVCardParser:Lcom/android/vcard/VCardParser;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;[Landroid/net/Uri;[Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mSourceUris:[Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mSourceDisplayNames:[Ljava/lang/String;

    iput-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mSource:[B

    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const v1, 0x20000006

    const-string v2, "VCardImport"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iput-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mDisplayName:Ljava/lang/String;

    return-void
.end method

.method private constructImportRequest([BLandroid/net/Uri;Ljava/lang/String;)Lcom/android/contacts/common/vcard/ImportRequest;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v2}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v9, 0x1

    const/16 v21, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    new-instance v18, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v19, v18

    :goto_0
    new-instance v2, Lcom/android/vcard/VCardParser_V21;

    invoke-direct {v2}, Lcom/android/vcard/VCardParser_V21;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;
    :try_end_0
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    new-instance v12, Lcom/android/vcard/VCardEntryCounter;

    invoke-direct {v12}, Lcom/android/vcard/VCardEntryCounter;-><init>()V
    :try_end_1
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v14, Lcom/android/vcard/VCardSourceDetector;

    invoke-direct {v14}, Lcom/android/vcard/VCardSourceDetector;-><init>()V
    :try_end_2
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v2, v12}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v2, v14}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;)V
    :try_end_3
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v19, :cond_6

    :try_start_4
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_4 .. :try_end_4} :catch_7

    move-object/from16 v18, v19

    move-object v13, v14

    move-object v11, v12

    :cond_0
    :goto_1
    if-eqz v21, :cond_5

    const/4 v9, 0x2

    :goto_2
    new-instance v2, Lcom/android/contacts/common/vcard/ImportRequest;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v3}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$500(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v3

    invoke-virtual {v13}, Lcom/android/vcard/VCardSourceDetector;->getEstimatedType()I

    move-result v7

    invoke-virtual {v13}, Lcom/android/vcard/VCardSourceDetector;->getEstimatedCharset()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11}, Lcom/android/vcard/VCardEntryCounter;->getCount()I

    move-result v10

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v2 .. v10}, Lcom/android/contacts/common/vcard/ImportRequest;-><init>(Lcom/android/contacts/common/model/account/AccountWithDataSet;[BLandroid/net/Uri;Ljava/lang/String;ILjava/lang/String;II)V

    return-object v2

    :cond_1
    :try_start_5
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_5
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v18

    move-object/from16 v19, v18

    goto :goto_0

    :catch_0
    move-exception v2

    move-object/from16 v18, v19

    move-object v13, v14

    move-object v11, v12

    goto :goto_1

    :catch_1
    move-exception v16

    move-object v14, v13

    move-object v12, v11

    :goto_3
    if-eqz v19, :cond_2

    :try_start_6
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_2
    :goto_4
    const/16 v21, 0x1

    if-eqz p1, :cond_3

    :try_start_7
    new-instance v18, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :goto_5
    :try_start_8
    new-instance v2, Lcom/android/vcard/VCardParser_V30;

    invoke-direct {v2}, Lcom/android/vcard/VCardParser_V30;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    new-instance v11, Lcom/android/vcard/VCardEntryCounter;

    invoke-direct {v11}, Lcom/android/vcard/VCardEntryCounter;-><init>()V
    :try_end_9
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    new-instance v13, Lcom/android/vcard/VCardSourceDetector;

    invoke-direct {v13}, Lcom/android/vcard/VCardSourceDetector;-><init>()V
    :try_end_a
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v2, v11}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v2, v13}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;)V
    :try_end_b
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v18, :cond_0

    :try_start_c
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_1

    :cond_3
    :try_start_d
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-result-object v18

    goto :goto_5

    :catch_3
    move-exception v17

    move-object v13, v14

    move-object v11, v12

    :goto_6
    :try_start_e
    new-instance v2, Lcom/android/vcard/exception/VCardException;

    const-string v3, "vCard with unspported version."

    invoke-direct {v2, v3}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :catchall_0
    move-exception v2

    :goto_7
    if-eqz v18, :cond_4

    :try_start_f
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_f .. :try_end_f} :catch_4

    :cond_4
    :goto_8
    :try_start_10
    throw v2
    :try_end_10
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_10 .. :try_end_10} :catch_4

    :catch_4
    move-exception v15

    :goto_9
    const-string v2, "VCardImport"

    const-string v3, "Nested Exception is found (it may be false-positive)."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_5
    const/4 v9, 0x1

    goto/16 :goto_2

    :catch_5
    move-exception v2

    goto :goto_4

    :catch_6
    move-exception v3

    goto :goto_8

    :catch_7
    move-exception v15

    move-object v13, v14

    move-object v11, v12

    goto :goto_9

    :catchall_1
    move-exception v2

    move-object/from16 v18, v19

    goto :goto_7

    :catchall_2
    move-exception v2

    move-object/from16 v18, v19

    move-object v11, v12

    goto :goto_7

    :catchall_3
    move-exception v2

    move-object/from16 v18, v19

    move-object v13, v14

    move-object v11, v12

    goto :goto_7

    :catchall_4
    move-exception v2

    move-object v13, v14

    move-object v11, v12

    goto :goto_7

    :catchall_5
    move-exception v2

    move-object v13, v14

    goto :goto_7

    :catch_8
    move-exception v17

    move-object v13, v14

    goto :goto_6

    :catch_9
    move-exception v17

    goto :goto_6

    :catch_a
    move-exception v16

    move-object v14, v13

    goto/16 :goto_3

    :catch_b
    move-exception v16

    goto/16 :goto_3

    :cond_6
    move-object/from16 v18, v19

    move-object v13, v14

    move-object v11, v12

    goto/16 :goto_1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mCanceled:Z

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v0}, Lcom/android/vcard/VCardParser;->cancel()V

    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VCardImport"

    const-string v1, "WakeLock is being held."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method public getSourceUris()[Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mSourceUris:[Landroid/net/Uri;

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    const-string v0, "VCardImport"

    const-string v1, "Cancel request has come. Abort caching vCard."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->cancel()V

    return-void
.end method

.method public run()V
    .locals 15

    const/4 v14, 0x0

    const-string v9, "VCardImport"

    const-string v10, "vCard cache thread starts running."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v9}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v9

    if-nez v9, :cond_0

    new-instance v9, Ljava/lang/NullPointerException;

    const-string v10, "vCard cache thread must be launched after a service connection is established"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_0
    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :try_start_0
    iget-boolean v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mCanceled:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    const-string v9, "VCardImport"

    const-string v10, "vCard cache operation is canceled."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v9, "VCardImport"

    const-string v10, "Finished caching vCard."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    iget-object v10, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v10}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v9}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v9, v14}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v9}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    :goto_0
    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const/4 v0, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mSource:[B
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v9, :cond_3

    :try_start_2
    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mSource:[B

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mDisplayName:Ljava/lang/String;

    invoke-direct {p0, v9, v10, v11}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->constructImportRequest([BLandroid/net/Uri;Ljava/lang/String;)Lcom/android/contacts/common/vcard/ImportRequest;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    :try_start_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v9}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;->sendImportRequest(Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    const-string v9, "VCardImport"

    const-string v10, "Finished caching vCard."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    iget-object v10, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v10}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v9}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v9, v14}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v9}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_4
    const-string v9, "VCardImport"

    const-string v10, "Maybe the file is in wrong format"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const v10, 0x7f0904de

    invoke-virtual {v9, v10}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->showFailureNotification(I)V
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v9, "VCardImport"

    const-string v10, "Finished caching vCard."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    iget-object v10, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v10}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v9}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v9, v14}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v9}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    goto/16 :goto_0

    :cond_3
    const/4 v3, 0x0

    :try_start_5
    iget-object v10, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mSourceUris:[Landroid/net/Uri;

    array-length v11, v10

    const/4 v9, 0x0

    move v4, v3

    :goto_3
    if-ge v9, v11, :cond_2

    aget-object v8, v10, v9

    iget-boolean v12, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mCanceled:Z

    if-eqz v12, :cond_4

    const-string v9, "VCardImport"

    const-string v10, "vCard cache operation is canceled."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    :catch_1
    move-exception v2

    :try_start_6
    const-string v9, "VCardImport"

    const-string v10, "OutOfMemoryError occured during caching vCard"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->gc()V

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    new-instance v10, Lcom/android/contacts/common/vcard/ImportVCardActivity$DialogDisplayer;

    iget-object v11, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    iget-object v12, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const v13, 0x7f0904dc

    invoke-virtual {v12, v13}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/android/contacts/common/vcard/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v9, "VCardImport"

    const-string v10, "Finished caching vCard."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    iget-object v10, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v10}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v9}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v9, v14}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v9}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    goto/16 :goto_0

    :cond_4
    :try_start_7
    iget-object v12, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mSourceDisplayNames:[Ljava/lang/String;

    add-int/lit8 v3, v4, 0x1

    aget-object v7, v12, v4
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v12, 0x0

    :try_start_8
    invoke-direct {p0, v12, v8, v7}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->constructImportRequest([BLandroid/net/Uri;Ljava/lang/String;)Lcom/android/contacts/common/vcard/ImportRequest;
    :try_end_8
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v5

    :try_start_9
    iget-boolean v12, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mCanceled:Z

    if-eqz v12, :cond_5

    const-string v9, "VCardImport"

    const-string v10, "vCard cache operation is canceled."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const-string v9, "VCardImport"

    const-string v10, "Finished caching vCard."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    iget-object v10, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v10}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v9}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v9, v14}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v9}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    goto/16 :goto_0

    :catch_2
    move-exception v2

    :try_start_a
    const-string v9, "VCardImport"

    const-string v10, "Maybe the file is in wrong format"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const v10, 0x7f0904de

    invoke-virtual {v9, v10}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->showFailureNotification(I)V
    :try_end_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const-string v9, "VCardImport"

    const-string v10, "Finished caching vCard."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    iget-object v10, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v10}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v9}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v9, v14}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v9}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    goto/16 :goto_0

    :catch_3
    move-exception v2

    :try_start_b
    const-string v9, "VCardImport"

    const-string v10, "Unexpected IOException"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const v10, 0x7f0904db

    invoke-virtual {v9, v10}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->showFailureNotification(I)V
    :try_end_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const-string v9, "VCardImport"

    const-string v10, "Finished caching vCard."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    iget-object v10, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v10}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v9}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v9, v14}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v9}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    goto/16 :goto_0

    :cond_5
    :try_start_c
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    move v4, v3

    goto/16 :goto_3

    :cond_6
    const-string v9, "VCardImport"

    const-string v10, "Empty import requests. Ignore it."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_2

    :catch_4
    move-exception v2

    :try_start_d
    const-string v9, "VCardImport"

    const-string v10, "IOException during caching vCard"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    new-instance v10, Lcom/android/contacts/common/vcard/ImportVCardActivity$DialogDisplayer;

    iget-object v11, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    iget-object v12, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const v13, 0x7f0904db

    invoke-virtual {v12, v13}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/android/contacts/common/vcard/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    const-string v9, "VCardImport"

    const-string v10, "Finished caching vCard."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    iget-object v10, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v10}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v9}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v9, v14}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v9}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    goto/16 :goto_0

    :catchall_0
    move-exception v9

    const-string v10, "VCardImport"

    const-string v11, "Finished caching vCard."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v10, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    iget-object v11, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v11}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v10, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v10}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v10, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v10, v14}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v10, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v10}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    throw v9
.end method
