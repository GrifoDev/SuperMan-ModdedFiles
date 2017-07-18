.class public Lcom/android/launcher2/AutoInstallsLayout$FolderParser;
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
    name = "FolderParser"
.end annotation


# instance fields
.field private final mFolderElements:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/launcher2/AutoInstallsLayout$TagParser;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/launcher2/AutoInstallsLayout;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/AutoInstallsLayout;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/launcher2/AutoInstallsLayout;->getFolderElementsMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/AutoInstallsLayout$FolderParser;-><init>(Lcom/android/launcher2/AutoInstallsLayout;Ljava/util/HashMap;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher2/AutoInstallsLayout;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/launcher2/AutoInstallsLayout$TagParser;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher2/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/launcher2/AutoInstallsLayout$FolderParser;->mFolderElements:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public parseAndAdd(Landroid/content/res/XmlResourceParser;)J
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v23, "title"

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/AutoInstallsLayout;->getAttributeResourceValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout;->mCallback:Lcom/android/launcher2/AutoInstallsLayout$LayoutParserCallback;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/launcher2/AutoInstallsLayout;->access$300(Lcom/android/launcher2/AutoInstallsLayout;)Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lcom/android/launcher2/AutoInstallsLayout$LayoutParserCallback;->generateNewItemId(Ljava/lang/String;)J

    move-result-wide v8

    const-string v23, "appOrder"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/launcher2/AutoInstallsLayout;->access$300(Lcom/android/launcher2/AutoInstallsLayout;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/launcher2/AutoInstallsLayout;->access$000(Lcom/android/launcher2/AutoInstallsLayout;)Landroid/content/ContentValues;

    move-result-object v23

    const-string v24, "title"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/launcher2/AutoInstallsLayout;->access$000(Lcom/android/launcher2/AutoInstallsLayout;)Landroid/content/ContentValues;

    move-result-object v23

    const-string v24, "_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout;->mCallback:Lcom/android/launcher2/AutoInstallsLayout$LayoutParserCallback;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/launcher2/AutoInstallsLayout;->access$000(Lcom/android/launcher2/AutoInstallsLayout;)Landroid/content/ContentValues;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/launcher2/AutoInstallsLayout;->access$300(Lcom/android/launcher2/AutoInstallsLayout;)Ljava/lang/String;

    move-result-object v26

    invoke-interface/range {v23 .. v26}, Lcom/android/launcher2/AutoInstallsLayout$LayoutParserCallback;->insertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v12

    const-wide/16 v24, 0x0

    cmp-long v23, v12, v24

    if-gez v23, :cond_3

    const-wide/16 v4, -0x1

    :cond_0
    :goto_2
    return-wide v4

    :cond_1
    const-string v19, ""

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/launcher2/AutoInstallsLayout;->access$000(Lcom/android/launcher2/AutoInstallsLayout;)Landroid/content/ContentValues;

    move-result-object v23

    const-string v24, "title"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/launcher2/AutoInstallsLayout;->access$000(Lcom/android/launcher2/AutoInstallsLayout;)Landroid/content/ContentValues;

    move-result-object v23

    const-string v24, "itemType"

    const/16 v25, 0x2

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/launcher2/AutoInstallsLayout;->access$000(Lcom/android/launcher2/AutoInstallsLayout;)Landroid/content/ContentValues;

    move-result-object v23

    const-string v24, "spanX"

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/launcher2/AutoInstallsLayout;->access$000(Lcom/android/launcher2/AutoInstallsLayout;)Landroid/content/ContentValues;

    move-result-object v23

    const-string v24, "spanY"

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/launcher2/AutoInstallsLayout;->access$000(Lcom/android/launcher2/AutoInstallsLayout;)Landroid/content/ContentValues;

    move-result-object v23

    const-string v24, "_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_1

    :cond_3
    new-instance v16, Landroid/content/ContentValues;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/launcher2/AutoInstallsLayout;->access$000(Lcom/android/launcher2/AutoInstallsLayout;)Landroid/content/ContentValues;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v10

    const/16 v17, 0x0

    :cond_4
    :goto_3
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v21

    const/16 v23, 0x3

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v23

    move/from16 v0, v23

    if-le v0, v10, :cond_8

    :cond_5
    const/16 v23, 0x2

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/launcher2/AutoInstallsLayout;->access$000(Lcom/android/launcher2/AutoInstallsLayout;)Landroid/content/ContentValues;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentValues;->clear()V

    const-string v23, "appOrder"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/launcher2/AutoInstallsLayout;->access$300(Lcom/android/launcher2/AutoInstallsLayout;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/launcher2/AutoInstallsLayout;->access$000(Lcom/android/launcher2/AutoInstallsLayout;)Landroid/content/ContentValues;

    move-result-object v23

    const-string v24, "folderId"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/launcher2/AutoInstallsLayout;->access$000(Lcom/android/launcher2/AutoInstallsLayout;)Landroid/content/ContentValues;

    move-result-object v23

    const-string v24, "screen"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout$FolderParser;->mFolderElements:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/AutoInstallsLayout$TagParser;

    if-eqz v18, :cond_7

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/launcher2/AutoInstallsLayout$TagParser;->parseAndAdd(Landroid/content/res/XmlResourceParser;)J

    move-result-wide v14

    const-wide/16 v24, 0x0

    cmp-long v23, v14, v24

    if-ltz v23, :cond_4

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/launcher2/AutoInstallsLayout;->access$000(Lcom/android/launcher2/AutoInstallsLayout;)Landroid/content/ContentValues;

    move-result-object v23

    const-string v24, "container"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/launcher2/AutoInstallsLayout;->access$000(Lcom/android/launcher2/AutoInstallsLayout;)Landroid/content/ContentValues;

    move-result-object v23

    const-string v24, "screen"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_4

    :cond_7
    new-instance v23, Ljava/lang/RuntimeException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Invalid folder item "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v23

    :cond_8
    move-wide v4, v12

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-static {v12, v13, v0}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v22

    const-string v23, "appOrder"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/launcher2/AutoInstallsLayout;->access$300(Lcom/android/launcher2/AutoInstallsLayout;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-static {v12, v13, v0}, Lcom/android/launcher2/LauncherSettings$AppOrder;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v22

    :cond_9
    new-instance v6, Lcom/android/launcher2/LauncherProvider$SqlArguments;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v6, v0, v1, v2}, Lcom/android/launcher2/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v23, v0

    iget-object v0, v6, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    move-object/from16 v24, v0

    iget-object v0, v6, Lcom/android/launcher2/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    move-object/from16 v25, v0

    iget-object v0, v6, Lcom/android/launcher2/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v23 .. v26}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-wide/16 v4, -0x1

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Long;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v23, "appOrder"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/launcher2/AutoInstallsLayout;->access$300(Lcom/android/launcher2/AutoInstallsLayout;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_a

    const-string v23, "folderId"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-static {v0, v7, v1}, Lcom/android/launcher2/AutoInstallsLayout;->access$400(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v23, "screen"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-static {v0, v7, v1}, Lcom/android/launcher2/AutoInstallsLayout;->access$400(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v23, "cell"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-static {v0, v7, v1}, Lcom/android/launcher2/AutoInstallsLayout;->access$400(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v23, v0

    const-string v24, "appOrder"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "_id="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_a
    const-string v23, "container"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-static {v0, v7, v1}, Lcom/android/launcher2/AutoInstallsLayout;->access$400(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v23, "screen"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-static {v0, v7, v1}, Lcom/android/launcher2/AutoInstallsLayout;->access$400(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v23, "cellX"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-static {v0, v7, v1}, Lcom/android/launcher2/AutoInstallsLayout;->access$400(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v23, "cellY"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-static {v0, v7, v1}, Lcom/android/launcher2/AutoInstallsLayout;->access$400(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher2/AutoInstallsLayout;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v23, v0

    const-string v24, "favorites"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "_id="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_2
.end method
