.class public Lcom/android/launcher2/AutoInstallsLayout$AppWidgetParser;
.super Ljava/lang/Object;
.source "AutoInstallsLayout.java"

# interfaces
.implements Lcom/android/launcher2/AutoInstallsLayout$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/AutoInstallsLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AppWidgetParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AutoInstallsLayout;


# direct methods
.method protected constructor <init>(Lcom/android/launcher2/AutoInstallsLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/AutoInstallsLayout$AppWidgetParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseAndAdd(Landroid/content/res/XmlResourceParser;)J
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v18, "packageName"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/launcher2/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v18, "className"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/launcher2/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_2

    :cond_0
    const-wide/16 v10, -0x1

    :cond_1
    :goto_0
    return-wide v10

    :cond_2
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v13, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout$AppWidgetParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout$AppWidgetParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    move-object/from16 v18, v0

    # getter for: Lcom/android/launcher2/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;
    invoke-static/range {v18 .. v18}, Lcom/android/launcher2/AutoInstallsLayout;->access$000(Lcom/android/launcher2/AutoInstallsLayout;)Landroid/content/ContentValues;

    move-result-object v18

    const-string v19, "spanX"

    const-string v20, "spanX"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/launcher2/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout$AppWidgetParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    move-object/from16 v18, v0

    # getter for: Lcom/android/launcher2/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;
    invoke-static/range {v18 .. v18}, Lcom/android/launcher2/AutoInstallsLayout;->access$000(Lcom/android/launcher2/AutoInstallsLayout;)Landroid/content/ContentValues;

    move-result-object v18

    const-string v19, "spanY"

    const-string v20, "spanY"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/launcher2/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v17

    :cond_3
    :goto_2
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v15

    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v15, v0, :cond_4

    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, v17

    if-le v0, v1, :cond_7

    :cond_4
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v15, v0, :cond_3

    const-string v18, "extra"

    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    const-string v18, "key"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/launcher2/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v18, "value"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/launcher2/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-eqz v12, :cond_5

    if-eqz v16, :cond_5

    move-object/from16 v0, v16

    invoke-virtual {v8, v12, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout$AppWidgetParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v13, v19, v20

    invoke-virtual/range {v18 .. v19}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    new-instance v5, Landroid/content/ComponentName;

    const/16 v18, 0x0

    aget-object v18, v14, v18

    move-object/from16 v0, v18

    invoke-direct {v5, v0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout$AppWidgetParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v7

    const-wide/16 v10, -0x1

    goto/16 :goto_0

    :cond_5
    new-instance v18, Ljava/lang/RuntimeException;

    const-string v19, "Widget extras must have a key and value"

    invoke-direct/range {v18 .. v19}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_6
    new-instance v18, Ljava/lang/RuntimeException;

    const-string v19, "Widgets can contain only extras"

    invoke-direct/range {v18 .. v19}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout$AppWidgetParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    move-object/from16 v18, v0

    # getter for: Lcom/android/launcher2/AutoInstallsLayout;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/launcher2/AutoInstallsLayout;->access$100(Lcom/android/launcher2/AutoInstallsLayout;)Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    const-wide/16 v10, -0x1

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout$AppWidgetParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    move-object/from16 v18, v0

    # getter for: Lcom/android/launcher2/AutoInstallsLayout;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;
    invoke-static/range {v18 .. v18}, Lcom/android/launcher2/AutoInstallsLayout;->access$200(Lcom/android/launcher2/AutoInstallsLayout;)Landroid/appwidget/AppWidgetHost;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v2

    invoke-virtual {v3, v2, v5}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v18

    if-nez v18, :cond_8

    const-wide/16 v10, -0x1

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout$AppWidgetParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    move-object/from16 v18, v0

    # getter for: Lcom/android/launcher2/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;
    invoke-static/range {v18 .. v18}, Lcom/android/launcher2/AutoInstallsLayout;->access$000(Lcom/android/launcher2/AutoInstallsLayout;)Landroid/content/ContentValues;

    move-result-object v18

    const-string v19, "itemType"

    const/16 v20, 0x4

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout$AppWidgetParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    move-object/from16 v18, v0

    # getter for: Lcom/android/launcher2/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;
    invoke-static/range {v18 .. v18}, Lcom/android/launcher2/AutoInstallsLayout;->access$000(Lcom/android/launcher2/AutoInstallsLayout;)Landroid/content/ContentValues;

    move-result-object v18

    const-string v19, "appWidgetId"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout$AppWidgetParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    move-object/from16 v18, v0

    # getter for: Lcom/android/launcher2/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;
    invoke-static/range {v18 .. v18}, Lcom/android/launcher2/AutoInstallsLayout;->access$000(Lcom/android/launcher2/AutoInstallsLayout;)Landroid/content/ContentValues;

    move-result-object v18

    const-string v19, "_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout$AppWidgetParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout;->mCallback:Lcom/android/launcher2/AutoInstallsLayout$LayoutParserCallback;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout$AppWidgetParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    move-object/from16 v21, v0

    # getter for: Lcom/android/launcher2/AutoInstallsLayout;->mTableName:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/android/launcher2/AutoInstallsLayout;->access$300(Lcom/android/launcher2/AutoInstallsLayout;)Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/android/launcher2/AutoInstallsLayout$LayoutParserCallback;->generateNewItemId(Ljava/lang/String;)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout$AppWidgetParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout;->mCallback:Lcom/android/launcher2/AutoInstallsLayout$LayoutParserCallback;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout$AppWidgetParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout$AppWidgetParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    move-object/from16 v20, v0

    # getter for: Lcom/android/launcher2/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;
    invoke-static/range {v20 .. v20}, Lcom/android/launcher2/AutoInstallsLayout;->access$000(Lcom/android/launcher2/AutoInstallsLayout;)Landroid/content/ContentValues;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout$AppWidgetParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    move-object/from16 v21, v0

    # getter for: Lcom/android/launcher2/AutoInstallsLayout;->mTableName:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/android/launcher2/AutoInstallsLayout;->access$300(Lcom/android/launcher2/AutoInstallsLayout;)Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v18 .. v21}, Lcom/android/launcher2/AutoInstallsLayout$LayoutParserCallback;->insertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v18, 0x0

    cmp-long v18, v10, v18

    if-gez v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout$AppWidgetParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    move-object/from16 v18, v0

    # getter for: Lcom/android/launcher2/AutoInstallsLayout;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;
    invoke-static/range {v18 .. v18}, Lcom/android/launcher2/AutoInstallsLayout;->access$200(Lcom/android/launcher2/AutoInstallsLayout;)Landroid/appwidget/AppWidgetHost;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    goto/16 :goto_0

    :catch_2
    move-exception v18

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v8}, Landroid/os/Bundle;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_1

    new-instance v9, Landroid/content/Intent;

    const-string v18, "com.android.launcher.action.APPWIDGET_DEFAULT_WORKSPACE_CONFIGURE"

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v9, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v18, "appWidgetId"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout$AppWidgetParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    move-object/from16 v18, v0

    # getter for: Lcom/android/launcher2/AutoInstallsLayout;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/launcher2/AutoInstallsLayout;->access$100(Lcom/android/launcher2/AutoInstallsLayout;)Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0
.end method
