.class public Lcom/android/systemui/util/leak/LeakReporter;
.super Ljava/lang/Object;
.source "LeakReporter.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLeakDetector:Lcom/android/systemui/util/leak/LeakDetector;

.field private final mLeakReportEmail:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/leak/LeakDetector;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/leak/LeakReporter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/util/leak/LeakReporter;->mLeakDetector:Lcom/android/systemui/util/leak/LeakDetector;

    iput-object p3, p0, Lcom/android/systemui/util/leak/LeakReporter;->mLeakReportEmail:Ljava/lang/String;

    return-void
.end method

.method private getIntent(Ljava/io/File;Ljava/io/File;)Landroid/content/Intent;
    .locals 15

    iget-object v10, p0, Lcom/android/systemui/util/leak/LeakReporter;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "com.android.systemui.fileprovider"

    move-object/from16 v0, p2

    invoke-static {v10, v11, v0}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    iget-object v10, p0, Lcom/android/systemui/util/leak/LeakReporter;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "com.android.systemui.fileprovider"

    move-object/from16 v0, p1

    invoke-static {v10, v11, v0}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v10, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "application/vnd.android.leakreport"

    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v10, "android.intent.category.DEFAULT"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v9, "SystemUI leak report"

    const-string/jumbo v10, "android.intent.extra.SUBJECT"

    const-string/jumbo v11, "SystemUI leak report"

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Build info: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "ro.build.description"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, "android.intent.extra.TEXT"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Landroid/content/ClipData;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v8, v10, v11

    new-instance v11, Landroid/content/ClipData$Item;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14, v3}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V

    const/4 v12, 0x0

    invoke-direct {v2, v12, v10, v11}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    const/4 v10, 0x1

    new-array v10, v10, [Landroid/net/Uri;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-static {v10}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v10, Landroid/content/ClipData$Item;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13, v4}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V

    invoke-virtual {v2, v10}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v2}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    const-string/jumbo v10, "android.intent.extra.STREAM"

    invoke-virtual {v5, v10, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/systemui/util/leak/LeakReporter;->mLeakReportEmail:Ljava/lang/String;

    if-eqz v6, :cond_0

    const-string/jumbo v10, "android.intent.extra.EMAIL"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object v5
.end method


# virtual methods
.method public dumpLeak(I)V
    .locals 19

    :try_start_0
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/util/leak/LeakReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "leak"

    invoke-direct {v14, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->mkdir()Z

    new-instance v13, Ljava/io/File;

    const-string/jumbo v1, "leak.hprof"

    invoke-direct {v13, v14, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    const-string/jumbo v1, "leak.dump"

    invoke-direct {v9, v14, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const/4 v11, 0x0

    :try_start_1
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v16, Ljava/io/PrintWriter;

    move-object/from16 v0, v16

    invoke-direct {v0, v12}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    const-string/jumbo v1, "Build: "

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "ro.build.description"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintWriter;->println()V

    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintWriter;->flush()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/util/leak/LeakReporter;->mLeakDetector:Lcom/android/systemui/util/leak/LeakDetector;

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v1, v3, v0, v4}, Lcom/android/systemui/util/leak/LeakDetector;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v12, :cond_0

    :try_start_3
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v10

    const-string/jumbo v1, "LeakReporter"

    const-string/jumbo v2, "Couldn\'t dump heap for leak"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v1

    :goto_2
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v2

    move-object/from16 v18, v2

    move-object v2, v1

    move-object/from16 v1, v18

    :goto_3
    if-eqz v11, :cond_1

    :try_start_6
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_1
    :goto_4
    if-eqz v2, :cond_3

    :try_start_7
    throw v2

    :catch_3
    move-exception v3

    if-nez v2, :cond_2

    move-object v2, v3

    goto :goto_4

    :cond_2
    if-eq v2, v3, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_3
    throw v1

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/util/leak/LeakReporter;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/NotificationManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/NotificationManager;

    new-instance v8, Landroid/app/NotificationChannel;

    const-string/jumbo v1, "leak"

    const-string/jumbo v2, "Leak Alerts"

    const/4 v3, 0x4

    invoke-direct {v8, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    invoke-virtual {v15, v8}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v1, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/util/leak/LeakReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string/jumbo v2, "Memory Leak Detected"

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string/jumbo v2, "SystemUI has detected %d leaked objects. Tap to send"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x108091c

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/util/leak/LeakReporter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v9}, Lcom/android/systemui/util/leak/LeakReporter;->getIntent(Ljava/io/File;Ljava/io/File;)Landroid/content/Intent;

    move-result-object v3

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v2, 0x0

    const/high16 v4, 0x8000000

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    const-string/jumbo v1, "LeakReporter"

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v15, v1, v3, v2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_1

    :catchall_1
    move-exception v1

    goto/16 :goto_3

    :catchall_2
    move-exception v1

    move-object v11, v12

    goto/16 :goto_3

    :catch_4
    move-exception v1

    move-object v11, v12

    goto/16 :goto_2
.end method
