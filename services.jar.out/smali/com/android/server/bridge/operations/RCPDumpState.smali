.class public Lcom/android/server/bridge/operations/RCPDumpState;
.super Ljava/lang/Object;
.source "RCPDumpState.java"


# static fields
.field public static final CALENDAR_EVENTS_TABLE:Ljava/lang/String; = "CALENDAR_EVENTS"

.field public static final CALENDAR_PROVIDER:Ljava/lang/String; = "Calendar"

.field public static final CALENDAR_TASKS_TABLE:Ljava/lang/String; = "CALENDAR_TASKS"

.field public static final CONTACTS_GROUPS_TABLE:Ljava/lang/String; = "GROUPS_CONTACTS"

.field public static final CONTACTS_PROVIDER:Ljava/lang/String; = "Contacts"

.field public static final CONTACTS_RAW_TABLE:Ljava/lang/String; = "RAW_CONTACTS"

.field public static final EVENT_PERSONAL_ACCOUNT_NAME:Ljava/lang/String; = "calendar_personal"

.field public static final KNOX_ACCOUNT_TYPE_STR:Ljava/lang/String; = "vnd.sec.contact.phone_knox"

.field public static final PERSONAL_ACCOUNT_TYPE_STR:Ljava/lang/String; = "vnd.sec.contact.phone_personal"

.field public static final RCP_CALENDAR_EVENTS_TABLE:Ljava/lang/String; = "RCP_CALENDAR_EVENTS"

.field public static final RCP_CALENDAR_TASKS_TABLE:Ljava/lang/String; = "RCP_CALENDAR_TASKS"

.field public static final RCP_CONTACTS_GROUPS_TABLE:Ljava/lang/String; = "RCP_GROUPS_CONTACTS"

.field public static final RCP_CONTACTS_RAW_TABLE:Ljava/lang/String; = "RCP_RAW_CONTACTS"

.field public static final TASK_ACCOUNT_NAME_LIKE:Ljava/lang/String; = "My task ("

.field public static final TASK_PERSONAL_ACCOUNT_NAME:Ljava/lang/String; = "task_personal"

.field private static mRCPDumpState:Lcom/android/server/bridge/operations/RCPDumpState;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPDumpState:Lcom/android/server/bridge/operations/RCPDumpState;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/android/server/bridge/operations/RCPDumpState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    iput-object p1, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "rcp"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemRemoteContentManager;

    iput-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    return-void
.end method

.method private dumpStateEvents(Ljava/io/PrintWriter;II)V
    .locals 21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpStateEvents , mSourceId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", DestinationId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/16 v19, 0x0

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v7, v4

    :try_start_0
    const-string/jumbo v20, "ACCOUNT_NAME NOT LIKE ? AND DELETED=? "
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x2

    :try_start_1
    new-array v9, v3, [Ljava/lang/String;

    const-string/jumbo v3, "calendar_personal%"

    const/4 v4, 0x0

    aput-object v3, v9, v4

    const-string/jumbo v3, "0"

    const/4 v4, 0x1

    aput-object v3, v9, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    const-string/jumbo v4, "Calendar"

    const-string/jumbo v5, "CALENDAR_EVENTS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct/range {p0 .. p0}, Lcom/android/server/bridge/operations/RCPDumpState;->get_exCalendarId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "original_id ASC, _id ASC"

    move/from16 v6, p2

    invoke-virtual/range {v3 .. v10}, Lcom/samsung/android/knox/SemRemoteContentManager;->queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v19

    if-eqz v19, :cond_0

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpStateEvents ,No of Original Events from Source "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "Source Events ID\'s : "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/bridge/operations/RCPDumpState;->printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :cond_0
    if-eqz v19, :cond_1

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object/from16 v8, v20

    :cond_2
    :goto_0
    :try_start_2
    const-string/jumbo v8, "ACCOUNT_NAME = ? AND DELETED=? "

    const/4 v3, 0x2

    new-array v9, v3, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "calendar_personal"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v9, v4

    const-string/jumbo v3, "0"

    const/4 v4, 0x1

    aput-object v3, v9, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    const-string/jumbo v4, "Calendar"

    const-string/jumbo v5, "CALENDAR_EVENTS"

    const-string/jumbo v10, "original_id ASC, _id ASC"

    move/from16 v6, p3

    invoke-virtual/range {v3 .. v10}, Lcom/samsung/android/knox/SemRemoteContentManager;->queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v19

    if-eqz v19, :cond_3

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpStateEvents ,No of Synced Events to Destination"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "Destination Events ID\'s : "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/bridge/operations/RCPDumpState;->printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    if-eqz v19, :cond_4

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    const/4 v3, 0x2

    :try_start_3
    new-array v14, v3, [Ljava/lang/String;

    const-string/jumbo v3, "_id_original"

    const/4 v4, 0x0

    aput-object v3, v14, v4

    const-string/jumbo v3, "_id_container"

    const/4 v4, 0x1

    aput-object v3, v14, v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v3, 0x1

    :try_start_4
    new-array v9, v3, [Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v9, v4

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    const-string/jumbo v11, "Calendar"

    const-string/jumbo v12, "RCP_CALENDAR_EVENTS"

    const-string/jumbo v17, "_id_original ASC"

    const/4 v15, 0x0

    move/from16 v13, p3

    move-object/from16 v16, v9

    invoke-virtual/range {v10 .. v17}, Lcom/samsung/android/knox/SemRemoteContentManager;->queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v19

    if-eqz v19, :cond_5

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpStateEvents ,No of Events records in RCP local db  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "RCP local db (SourceId:DestinationId) :  "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/bridge/operations/RCPDumpState;->printRCPLoaclDB(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_5
    if-eqz v19, :cond_6

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v7, v14

    :cond_7
    :goto_2
    return-void

    :catch_0
    move-exception v18

    :goto_3
    :try_start_5
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v19, :cond_2

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    :goto_4
    if-eqz v19, :cond_8

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v3

    :catch_1
    move-exception v18

    :try_start_6
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v19, :cond_4

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catchall_1
    move-exception v3

    if-eqz v19, :cond_9

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v3

    :catch_2
    move-exception v18

    :goto_5
    :try_start_7
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v19, :cond_7

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_2
    move-exception v3

    :goto_6
    if-eqz v19, :cond_a

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v3

    :catchall_3
    move-exception v3

    move-object v7, v14

    goto :goto_6

    :catch_3
    move-exception v18

    move-object v7, v14

    goto :goto_5

    :catchall_4
    move-exception v3

    move-object/from16 v8, v20

    goto :goto_4

    :catch_4
    move-exception v18

    move-object/from16 v8, v20

    goto :goto_3
.end method

.method private dumpStateGroups(Ljava/io/PrintWriter;II)V
    .locals 22

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpStateGroups , mSourceId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", DestinationId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/16 v19, 0x0

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v7, v4

    :try_start_0
    new-instance v21, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mContext:Landroid/content/Context;

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string/jumbo v8, "account_type<>? AND account_type NOT LIKE ? AND _id NOT IN (?,?,?,?)  AND deleted=?"

    const/4 v3, 0x7

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v20, v0

    const-string/jumbo v3, "vnd.sec.contact.phone_personal"

    const/4 v4, 0x0

    aput-object v3, v20, v4

    const-string/jumbo v3, "vnd.sec.contact.phone_knox%"

    const/4 v4, 0x1

    aput-object v3, v20, v4

    const-string/jumbo v3, "1"

    const/4 v4, 0x2

    aput-object v3, v20, v4

    const-string/jumbo v3, "2"

    const/4 v4, 0x3

    aput-object v3, v20, v4

    const-string/jumbo v3, "3"

    const/4 v4, 0x4

    aput-object v3, v20, v4

    const-string/jumbo v3, "4"

    const/4 v4, 0x5

    aput-object v3, v20, v4

    const-string/jumbo v3, "0"

    const/4 v4, 0x6

    aput-object v3, v20, v4

    move-object/from16 v9, v20

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    const-string/jumbo v4, "Contacts"

    const-string/jumbo v5, "GROUPS_CONTACTS"

    const-string/jumbo v10, "_id ASC"

    move/from16 v6, p2

    invoke-virtual/range {v3 .. v10}, Lcom/samsung/android/knox/SemRemoteContentManager;->queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v19

    if-eqz v19, :cond_0

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpStateGroups ,No of Original Groups from Source "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "Source Group ID\'s : "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/bridge/operations/RCPDumpState;->printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v19, :cond_1

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    move-object/from16 v20, v9

    :try_start_1
    const-string/jumbo v8, "account_name= ? OR account_name = ? AND deleted=?"

    const/4 v3, 0x3

    new-array v9, v3, [Ljava/lang/String;

    const-string/jumbo v3, "vnd.sec.contact.phone_personal0"

    const/4 v4, 0x0

    aput-object v3, v9, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vnd.sec.contact.phone_knox"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v9, v4

    const-string/jumbo v3, "0"

    const/4 v4, 0x2

    aput-object v3, v9, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    const-string/jumbo v4, "Contacts"

    const-string/jumbo v5, "GROUPS_CONTACTS"

    const-string/jumbo v10, "_id ASC"

    move/from16 v6, p3

    invoke-virtual/range {v3 .. v10}, Lcom/samsung/android/knox/SemRemoteContentManager;->queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v19

    if-eqz v19, :cond_2

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpStateGroups ,No of Synced Groups to Destination "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "Destination Group ID\'s : "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/bridge/operations/RCPDumpState;->printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    :cond_2
    if-eqz v19, :cond_3

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_2
    move-object/from16 v20, v9

    const/4 v3, 0x2

    :try_start_3
    new-array v14, v3, [Ljava/lang/String;

    const-string/jumbo v3, "_id_original"

    const/4 v4, 0x0

    aput-object v3, v14, v4

    const-string/jumbo v3, "_id_container"

    const/4 v4, 0x1

    aput-object v3, v14, v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v3, 0x1

    :try_start_4
    new-array v9, v3, [Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v9, v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    const-string/jumbo v11, "Contacts"

    const-string/jumbo v12, "RCP_GROUPS_CONTACTS"

    const/4 v15, 0x0

    const/16 v17, 0x0

    move/from16 v13, p3

    move-object/from16 v16, v9

    invoke-virtual/range {v10 .. v17}, Lcom/samsung/android/knox/SemRemoteContentManager;->queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v19

    if-eqz v19, :cond_4

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpStateGroups ,No of Group records in RCP local db  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "RCP local db (SourceId:DestinationId) :  "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/bridge/operations/RCPDumpState;->printRCPLoaclDB(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :cond_4
    if-eqz v19, :cond_5

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v7, v14

    :cond_6
    :goto_3
    return-void

    :cond_7
    :try_start_6
    const-string/jumbo v8, "account_type<>? AND account_type NOT LIKE ? AND _id NOT IN (?,?,?)  AND deleted=?"

    const/4 v3, 0x6

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v20, v0

    const-string/jumbo v3, "vnd.sec.contact.phone_personal"

    const/4 v4, 0x0

    aput-object v3, v20, v4

    const-string/jumbo v3, "vnd.sec.contact.phone_knox%"

    const/4 v4, 0x1

    aput-object v3, v20, v4

    const-string/jumbo v3, "1"

    const/4 v4, 0x2

    aput-object v3, v20, v4

    const-string/jumbo v3, "2"

    const/4 v4, 0x3

    aput-object v3, v20, v4

    const-string/jumbo v3, "3"

    const/4 v4, 0x4

    aput-object v3, v20, v4

    const-string/jumbo v3, "0"

    const/4 v4, 0x5

    aput-object v3, v20, v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v9, v20

    goto/16 :goto_0

    :catch_0
    move-exception v18

    :try_start_7
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v19, :cond_1

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catchall_0
    move-exception v3

    if-eqz v19, :cond_8

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v3

    :catch_1
    move-exception v18

    move-object/from16 v9, v20

    :goto_4
    :try_start_8
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    if-eqz v19, :cond_3

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :catchall_1
    move-exception v3

    move-object/from16 v9, v20

    :goto_5
    if-eqz v19, :cond_9

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v3

    :catch_2
    move-exception v18

    move-object/from16 v9, v20

    :goto_6
    :try_start_9
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    if-eqz v19, :cond_6

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_2
    move-exception v3

    move-object/from16 v9, v20

    :goto_7
    if-eqz v19, :cond_a

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v3

    :catchall_3
    move-exception v3

    move-object v7, v14

    move-object/from16 v9, v20

    goto :goto_7

    :catchall_4
    move-exception v3

    move-object v7, v14

    goto :goto_7

    :catchall_5
    move-exception v3

    goto :goto_7

    :catch_3
    move-exception v18

    move-object v7, v14

    move-object/from16 v9, v20

    goto :goto_6

    :catch_4
    move-exception v18

    move-object v7, v14

    goto :goto_6

    :catchall_6
    move-exception v3

    goto :goto_5

    :catch_5
    move-exception v18

    goto :goto_4
.end method

.method private dumpStateRawContacts(Ljava/io/PrintWriter;II)V
    .locals 21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpStateRawContacts , mSourceId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", DestinationId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v8, 0x0

    const/16 v20, 0x0

    const/4 v7, 0x0

    const/16 v19, 0x0

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v7, v4

    :try_start_0
    const-string/jumbo v8, "account_type<>? AND account_type NOT LIKE ? AND deleted=?"

    const/4 v3, 0x3

    new-array v9, v3, [Ljava/lang/String;

    const-string/jumbo v3, "vnd.sec.contact.phone_personal"

    const/4 v4, 0x0

    aput-object v3, v9, v4

    const-string/jumbo v3, "vnd.sec.contact.phone_knox%"

    const/4 v4, 0x1

    aput-object v3, v9, v4

    const-string/jumbo v3, "0"

    const/4 v4, 0x2

    aput-object v3, v9, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    const-string/jumbo v4, "Contacts"

    const-string/jumbo v5, "RAW_CONTACTS"

    const-string/jumbo v10, "_id ASC"

    move/from16 v6, p2

    invoke-virtual/range {v3 .. v10}, Lcom/samsung/android/knox/SemRemoteContentManager;->queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v19

    if-eqz v19, :cond_0

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpStateRawContacts ,No of Original Raw_Contacts from Source "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "Source Raw_Contacts ID\'s : "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/bridge/operations/RCPDumpState;->printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    :cond_0
    if-eqz v19, :cond_1

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    move-object/from16 v20, v9

    :try_start_2
    const-string/jumbo v8, "account_name= ? OR account_name = ? AND deleted=?"

    const/4 v3, 0x3

    new-array v9, v3, [Ljava/lang/String;

    const-string/jumbo v3, "vnd.sec.contact.phone_personal0"

    const/4 v4, 0x0

    aput-object v3, v9, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vnd.sec.contact.phone_knox"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v9, v4

    const-string/jumbo v3, "0"

    const/4 v4, 0x2

    aput-object v3, v9, v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    const-string/jumbo v4, "Contacts"

    const-string/jumbo v5, "RAW_CONTACTS"

    const-string/jumbo v10, "_id ASC"

    move/from16 v6, p3

    invoke-virtual/range {v3 .. v10}, Lcom/samsung/android/knox/SemRemoteContentManager;->queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v19

    if-eqz v19, :cond_2

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpStateRawContacts ,No of Synced Raw_Contacts to Destination "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "Destination Raw_Contacts ID\'s : "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/bridge/operations/RCPDumpState;->printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    :cond_2
    if-eqz v19, :cond_3

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    move-object/from16 v20, v9

    const/4 v3, 0x2

    :try_start_4
    new-array v14, v3, [Ljava/lang/String;

    const-string/jumbo v3, "_id_raw_original"

    const/4 v4, 0x0

    aput-object v3, v14, v4

    const-string/jumbo v3, "_id_raw_container"

    const/4 v4, 0x1

    aput-object v3, v14, v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v3, 0x1

    :try_start_5
    new-array v9, v3, [Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v9, v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    const-string/jumbo v11, "Contacts"

    const-string/jumbo v12, "RCP_RAW_CONTACTS"

    const-string/jumbo v17, "_id_raw_original ASC"

    const/4 v15, 0x0

    move/from16 v13, p3

    move-object/from16 v16, v9

    invoke-virtual/range {v10 .. v17}, Lcom/samsung/android/knox/SemRemoteContentManager;->queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v19

    if-eqz v19, :cond_4

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpStateRawContacts ,No of Raw_Contacts records in RCP local db  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "RCP local db (SourceId:DestinationId) :  "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/bridge/operations/RCPDumpState;->printRCPLoaclDB(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :cond_4
    if-eqz v19, :cond_5

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v7, v14

    :cond_6
    :goto_2
    return-void

    :catch_0
    move-exception v18

    move-object/from16 v9, v20

    :goto_3
    :try_start_7
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    if-eqz v19, :cond_1

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    move-object/from16 v9, v20

    :goto_4
    if-eqz v19, :cond_7

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v3

    :catch_1
    move-exception v18

    move-object/from16 v9, v20

    :goto_5
    :try_start_8
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    if-eqz v19, :cond_3

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catchall_1
    move-exception v3

    move-object/from16 v9, v20

    :goto_6
    if-eqz v19, :cond_8

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v3

    :catch_2
    move-exception v18

    move-object/from16 v9, v20

    :goto_7
    :try_start_9
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    if-eqz v19, :cond_6

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_2
    move-exception v3

    move-object/from16 v9, v20

    :goto_8
    if-eqz v19, :cond_9

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v3

    :catchall_3
    move-exception v3

    move-object v7, v14

    move-object/from16 v9, v20

    goto :goto_8

    :catchall_4
    move-exception v3

    move-object v7, v14

    goto :goto_8

    :catchall_5
    move-exception v3

    goto :goto_8

    :catch_3
    move-exception v18

    move-object v7, v14

    move-object/from16 v9, v20

    goto :goto_7

    :catch_4
    move-exception v18

    move-object v7, v14

    goto :goto_7

    :catchall_6
    move-exception v3

    goto :goto_6

    :catch_5
    move-exception v18

    goto :goto_5

    :catchall_7
    move-exception v3

    goto :goto_4

    :catch_6
    move-exception v18

    goto :goto_3
.end method

.method private dumpStateTasks(Ljava/io/PrintWriter;II)V
    .locals 20

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpStateTasks , mSourceId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", DestinationId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/16 v19, 0x0

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v7, v4

    :try_start_0
    const-string/jumbo v8, "ACCOUNTNAME NOT LIKE ? AND DELETED=?"

    const/4 v3, 0x2

    new-array v9, v3, [Ljava/lang/String;

    const-string/jumbo v3, "My task (%"

    const/4 v4, 0x0

    aput-object v3, v9, v4

    const-string/jumbo v3, "0"

    const/4 v4, 0x1

    aput-object v3, v9, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    const-string/jumbo v4, "Calendar"

    const-string/jumbo v5, "CALENDAR_TASKS"

    const-string/jumbo v10, "_id ASC"

    move/from16 v6, p2

    invoke-virtual/range {v3 .. v10}, Lcom/samsung/android/knox/SemRemoteContentManager;->queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v19

    if-eqz v19, :cond_0

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpStateTasks ,No of Original Tasks from Source "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "Source Tasks ID\'s : "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/bridge/operations/RCPDumpState;->printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v19, :cond_1

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    :try_start_1
    const-string/jumbo v8, "_sync_account = ? AND DELETED=?"

    const/4 v3, 0x2

    new-array v9, v3, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "task_personal_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v9, v4

    const-string/jumbo v3, "0"

    const/4 v4, 0x1

    aput-object v3, v9, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    const-string/jumbo v4, "Calendar"

    const-string/jumbo v5, "CALENDAR_TASKS"

    const-string/jumbo v10, "_id ASC"

    move/from16 v6, p3

    invoke-virtual/range {v3 .. v10}, Lcom/samsung/android/knox/SemRemoteContentManager;->queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v19

    if-eqz v19, :cond_2

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpStateTasks ,No of Synced Tasks to Destination "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "Destination Tasks ID\'s : "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/bridge/operations/RCPDumpState;->printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    if-eqz v19, :cond_3

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    const/4 v3, 0x2

    :try_start_2
    new-array v14, v3, [Ljava/lang/String;

    const-string/jumbo v3, "_id_original"

    const/4 v4, 0x0

    aput-object v3, v14, v4

    const-string/jumbo v3, "_id_container"

    const/4 v4, 0x1

    aput-object v3, v14, v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v3, 0x1

    :try_start_3
    new-array v9, v3, [Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v9, v4

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    const-string/jumbo v11, "Calendar"

    const-string/jumbo v12, "RCP_CALENDAR_TASKS"

    const-string/jumbo v17, "_id_original ASC"

    const/4 v15, 0x0

    move/from16 v13, p3

    move-object/from16 v16, v9

    invoke-virtual/range {v10 .. v17}, Lcom/samsung/android/knox/SemRemoteContentManager;->queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v19

    if-eqz v19, :cond_4

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpStateTasks ,No of tasks records in RCP local db  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "RCP local db (SourceId:DestinationId) :  "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/bridge/operations/RCPDumpState;->printRCPLoaclDB(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_4
    if-eqz v19, :cond_5

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v7, v14

    :cond_6
    :goto_2
    return-void

    :catch_0
    move-exception v18

    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v19, :cond_1

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    if-eqz v19, :cond_7

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v3

    :catch_1
    move-exception v18

    :try_start_5
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v19, :cond_3

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catchall_1
    move-exception v3

    if-eqz v19, :cond_8

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v3

    :catch_2
    move-exception v18

    :goto_3
    :try_start_6
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v19, :cond_6

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_2
    move-exception v3

    :goto_4
    if-eqz v19, :cond_9

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v3

    :catchall_3
    move-exception v3

    move-object v7, v14

    goto :goto_4

    :catch_3
    move-exception v18

    move-object v7, v14

    goto :goto_3
.end method

.method public static getInstance(Landroid/content/Context;Ljava/io/PrintWriter;)Lcom/android/server/bridge/operations/RCPDumpState;
    .locals 1

    sget-object v0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPDumpState:Lcom/android/server/bridge/operations/RCPDumpState;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/bridge/operations/RCPDumpState;

    invoke-direct {v0, p0}, Lcom/android/server/bridge/operations/RCPDumpState;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPDumpState:Lcom/android/server/bridge/operations/RCPDumpState;

    :cond_0
    sget-object v0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPDumpState:Lcom/android/server/bridge/operations/RCPDumpState;

    return-object v0
.end method

.method private get_exCalendarId()Ljava/lang/String;
    .locals 9

    const-string/jumbo v7, ""

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Calendar_EnableLocalHolidayDisplay"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    :try_start_0
    const-string/jumbo v0, "JAPAN"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v3, "name IS NULL OR name NOT IN(select name from Calendars where account_type is \'LOCAL\' AND name is \'legalHoliday\')"

    iget-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "_id"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    :cond_0
    :goto_0
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v7, "AND calendar_id IN ("

    iget-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " id count fetched "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_1
    iget-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " calendar "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, ")"

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_2
    iget-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " final calendar "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v7

    :cond_4
    :try_start_1
    const-string/jumbo v0, "TAIWAN"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v3, "name IS NULL OR name NOT IN(select name from Calendars where account_type is \'LOCAL\' AND name is \'legalHoliday\')"

    iget-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "_id"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v0, "HONGKONG"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v3, "name IS NULL OR name NOT IN(select name from Calendars where account_type is \'LOCAL\' AND name is \'legalHoliday\')"

    iget-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "_id"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v0, "CHINA"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v3, "name IS NULL OR name NOT IN(select name from Calendars where account_type is \'LOCAL\' AND name IN (\'legalHoliday\',\'24SolarTerms\'))"

    iget-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "_id"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v0, "KOREA"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v3, "name IS NULL OR name NOT IN(select name from Calendars where account_type is \'LOCAL\' AND name IN (\'legalHoliday\',\'legalSubstHoliday\'))"

    iget-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "_id"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_9

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0
.end method

.method private printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    .locals 2

    const/4 v1, 0x0

    :goto_0
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, " , "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private printRCPLoaclDB(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    .locals 3

    const/4 v2, 0x0

    :goto_0
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string/jumbo v0, " , "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public dumpStateCalendar(Ljava/io/PrintWriter;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/bridge/operations/RCPDumpState;->dumpStateEvents(Ljava/io/PrintWriter;II)V

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/bridge/operations/RCPDumpState;->dumpStateTasks(Ljava/io/PrintWriter;II)V

    return-void
.end method

.method public dumpStateContact(Ljava/io/PrintWriter;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/bridge/operations/RCPDumpState;->dumpStateGroups(Ljava/io/PrintWriter;II)V

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/bridge/operations/RCPDumpState;->dumpStateRawContacts(Ljava/io/PrintWriter;II)V

    return-void
.end method
