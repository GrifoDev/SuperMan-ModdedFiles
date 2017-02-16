.class public Landroid/app/AlarmManager;
.super Ljava/lang/Object;
.source "AlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AlarmManager$AlarmClockInfo;,
        Landroid/app/AlarmManager$ListenerWrapper;,
        Landroid/app/AlarmManager$OnAlarmListener;
    }
.end annotation


# static fields
.field public static final ACTION_NEXT_ALARM_CLOCK_CHANGED:Ljava/lang/String; = "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

.field public static final ELAPSED_REALTIME:I = 0x3

.field public static final ELAPSED_REALTIME_WAKEUP:I = 0x2

.field public static final FLAG_ALLOW_WHILE_IDLE:I = 0x4

.field public static final FLAG_ALLOW_WHILE_IDLE_UNRESTRICTED:I = 0x8

.field public static final FLAG_IDLE_UNTIL:I = 0x10

.field public static final FLAG_STANDALONE:I = 0x1

.field public static final FLAG_WAKE_FROM_IDLE:I = 0x2

.field public static final INTERVAL_DAY:J = 0x5265c00L

.field public static final INTERVAL_FIFTEEN_MINUTES:J = 0xdbba0L

.field public static final INTERVAL_HALF_DAY:J = 0x2932e00L

.field public static final INTERVAL_HALF_HOUR:J = 0x1b7740L

.field public static final INTERVAL_HOUR:J = 0x36ee80L

.field public static final POWER_OFF_ALARM_HANDLED:Ljava/lang/String; = "1"

.field public static final POWER_OFF_ALARM_HANDLE_FILE:Ljava/lang/String; = "/persist/alarm/powerOffAlarmHandle"

.field public static final POWER_OFF_ALARM_INSTANCE_FILE:Ljava/lang/String; = "/persist/alarm/powerOffAlarmInstance"

.field public static final POWER_OFF_ALARM_NOT_HANDLED:Ljava/lang/String; = "0"

.field public static final POWER_OFF_ALARM_NOT_SET:Ljava/lang/String; = "0"

.field public static final POWER_OFF_ALARM_SET:Ljava/lang/String; = "1"

.field public static final POWER_OFF_ALARM_SET_FILE:Ljava/lang/String; = "/persist/alarm/powerOffAlarmSet"

.field public static final POWER_OFF_ALARM_TIMEZONE_FILE:Ljava/lang/String; = "/persist/alarm/timezone"

.field public static final RTC:I = 0x1

.field public static final RTC_POWEROFF_WAKEUP:I = 0x5

.field public static final RTC_WAKEUP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AlarmManager"

.field public static final WINDOW_EXACT:J = 0x0L

.field public static final WINDOW_HEURISTIC:J = -0x1L

.field private static sWrappers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/app/AlarmManager$OnAlarmListener;",
            "Landroid/app/AlarmManager$ListenerWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAlwaysExact:Z

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private final mPackageName:Ljava/lang/String;

.field private final mService:Landroid/app/IAlarmManager;

.field private final mTargetSdkVersion:I


# direct methods
.method static synthetic -get0(Landroid/app/AlarmManager;)Landroid/app/IAlarmManager;
    .locals 1

    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    return-object v0
.end method

.method static synthetic -get1()Landroid/util/ArrayMap;
    .locals 1

    sget-object v0, Landroid/app/AlarmManager;->sWrappers:Landroid/util/ArrayMap;

    return-object v0
.end method

.method constructor <init>(Landroid/app/IAlarmManager;Landroid/content/Context;)V
    .locals 2
    .param p1, "service"    # Landroid/app/IAlarmManager;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    iput-object p1, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    .line 309
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AlarmManager;->mPackageName:Ljava/lang/String;

    .line 310
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Landroid/app/AlarmManager;->mTargetSdkVersion:I

    .line 311
    iget v0, p0, Landroid/app/AlarmManager;->mTargetSdkVersion:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/app/AlarmManager;->mAlwaysExact:Z

    .line 312
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/AlarmManager;->mMainThreadHandler:Landroid/os/Handler;

    .line 306
    return-void

    .line 311
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private legacyExactLength()J
    .locals 2

    .prologue
    .line 316
    iget-boolean v0, p0, Landroid/app/AlarmManager;->mAlwaysExact:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static readPowerOffAlarmFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1109
    const/4 v3, 0x0

    .line 1110
    .local v3, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 1112
    .local v2, "line":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1113
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 1117
    .local v2, "line":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 1119
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v3, v4

    .line 1125
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    return-object v2

    .line 1120
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 1121
    .local v1, "e1":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1114
    .end local v1    # "e1":Ljava/lang/Exception;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v2, "line":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 1115
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1117
    if-eqz v3, :cond_1

    .line 1119
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 1120
    :catch_2
    move-exception v1

    .line 1121
    .restart local v1    # "e1":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 1116
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e1":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 1117
    :goto_3
    if-eqz v3, :cond_2

    .line 1119
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1116
    :cond_2
    :goto_4
    throw v5

    .line 1120
    :catch_3
    move-exception v1

    .line 1121
    .restart local v1    # "e1":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 1116
    .end local v1    # "e1":Ljava/lang/Exception;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 1114
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 22
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "windowMillis"    # J
    .param p6, "intervalMillis"    # J
    .param p8, "flags"    # I
    .param p9, "operation"    # Landroid/app/PendingIntent;
    .param p10, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;
    .param p11, "listenerTag"    # Ljava/lang/String;
    .param p12, "targetHandler"    # Landroid/os/Handler;
    .param p13, "workSource"    # Landroid/os/WorkSource;
    .param p14, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .prologue
    .line 703
    const-wide/16 v6, 0x0

    cmp-long v5, p2, v6

    if-gez v5, :cond_0

    .line 711
    const-wide/16 p2, 0x0

    .line 714
    :cond_0
    const/16 v16, 0x0

    .line 715
    .local v16, "recipientWrapper":Landroid/app/AlarmManager$ListenerWrapper;
    if-eqz p10, :cond_3

    .line 716
    const-class v6, Landroid/app/AlarmManager;

    monitor-enter v6

    .line 717
    :try_start_0
    sget-object v5, Landroid/app/AlarmManager;->sWrappers:Landroid/util/ArrayMap;

    if-nez v5, :cond_1

    .line 718
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    sput-object v5, Landroid/app/AlarmManager;->sWrappers:Landroid/util/ArrayMap;

    .line 721
    :cond_1
    sget-object v5, Landroid/app/AlarmManager;->sWrappers:Landroid/util/ArrayMap;

    move-object/from16 v0, p10

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/app/AlarmManager$ListenerWrapper;

    move-object/from16 v16, v0

    .line 723
    .local v16, "recipientWrapper":Landroid/app/AlarmManager$ListenerWrapper;
    if-nez v16, :cond_2

    .line 724
    new-instance v21, Landroid/app/AlarmManager$ListenerWrapper;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, p10

    invoke-direct {v0, v1, v2}, Landroid/app/AlarmManager$ListenerWrapper;-><init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    .end local v16    # "recipientWrapper":Landroid/app/AlarmManager$ListenerWrapper;
    .local v21, "recipientWrapper":Landroid/app/AlarmManager$ListenerWrapper;
    :try_start_1
    sget-object v5, Landroid/app/AlarmManager;->sWrappers:Landroid/util/ArrayMap;

    move-object/from16 v0, p10

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v16, v21

    .end local v21    # "recipientWrapper":Landroid/app/AlarmManager$ListenerWrapper;
    .restart local v16    # "recipientWrapper":Landroid/app/AlarmManager$ListenerWrapper;
    :cond_2
    monitor-exit v6

    .line 729
    if-eqz p12, :cond_4

    move-object/from16 v20, p12

    .line 730
    .local v20, "handler":Landroid/os/Handler;
    :goto_0
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager$ListenerWrapper;->setHandler(Landroid/os/Handler;)V

    .line 734
    .end local v16    # "recipientWrapper":Landroid/app/AlarmManager$ListenerWrapper;
    .end local v20    # "handler":Landroid/os/Handler;
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/AlarmManager;->mPackageName:Ljava/lang/String;

    move/from16 v7, p1

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    move-wide/from16 v12, p6

    move/from16 v14, p8

    move-object/from16 v15, p9

    move-object/from16 v17, p11

    move-object/from16 v18, p13

    move-object/from16 v19, p14

    invoke-interface/range {v5 .. v19}, Landroid/app/IAlarmManager;->set(Ljava/lang/String;IJJJILandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 702
    return-void

    .line 716
    :catchall_0
    move-exception v5

    :goto_1
    monitor-exit v6

    throw v5

    .line 729
    .restart local v16    # "recipientWrapper":Landroid/app/AlarmManager$ListenerWrapper;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/AlarmManager;->mMainThreadHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    .restart local v20    # "handler":Landroid/os/Handler;
    goto :goto_0

    .line 736
    .end local v16    # "recipientWrapper":Landroid/app/AlarmManager$ListenerWrapper;
    .end local v20    # "handler":Landroid/os/Handler;
    :catch_0
    move-exception v4

    .line 737
    .local v4, "ex":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 716
    .end local v4    # "ex":Landroid/os/RemoteException;
    .restart local v21    # "recipientWrapper":Landroid/app/AlarmManager$ListenerWrapper;
    :catchall_1
    move-exception v5

    move-object/from16 v16, v21

    .end local v21    # "recipientWrapper":Landroid/app/AlarmManager$ListenerWrapper;
    .restart local v16    # "recipientWrapper":Landroid/app/AlarmManager$ListenerWrapper;
    goto :goto_1
.end method

.method public static writePowerOffAlarmFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1135
    const/4 v2, 0x0

    .line 1137
    .local v2, "writer":Ljava/io/FileWriter;
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1138
    .end local v2    # "writer":Ljava/io/FileWriter;
    .local v3, "writer":Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1139
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1143
    if-eqz v3, :cond_0

    .line 1145
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v2, v3

    .line 1134
    .end local v3    # "writer":Ljava/io/FileWriter;
    :cond_1
    :goto_1
    return-void

    .line 1146
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :catch_0
    move-exception v1

    .line 1147
    .local v1, "e1":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1140
    .end local v1    # "e1":Ljava/lang/Exception;
    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    :catch_1
    move-exception v0

    .line 1141
    .end local v2    # "writer":Ljava/io/FileWriter;
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1143
    if-eqz v2, :cond_1

    .line 1145
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 1146
    :catch_2
    move-exception v1

    .line 1147
    .restart local v1    # "e1":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 1142
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e1":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 1143
    :goto_3
    if-eqz v2, :cond_2

    .line 1145
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1142
    :cond_2
    :goto_4
    throw v4

    .line 1146
    :catch_3
    move-exception v1

    .line 1147
    .restart local v1    # "e1":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 1142
    .end local v1    # "e1":Ljava/lang/Exception;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "writer":Ljava/io/FileWriter;
    .local v2, "writer":Ljava/io/FileWriter;
    goto :goto_3

    .line 1140
    .end local v2    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v2, v3

    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    goto :goto_2
.end method


# virtual methods
.method public cancel(Landroid/app/AlarmManager$OnAlarmListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;

    .prologue
    .line 978
    if-nez p1, :cond_0

    .line 979
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "cancel() called with a null OnAlarmListener"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 982
    :cond_0
    const/4 v0, 0x0

    .line 983
    .local v0, "wrapper":Landroid/app/AlarmManager$ListenerWrapper;
    const-class v2, Landroid/app/AlarmManager;

    monitor-enter v2

    .line 984
    :try_start_0
    sget-object v1, Landroid/app/AlarmManager;->sWrappers:Landroid/util/ArrayMap;

    if-eqz v1, :cond_1

    .line 985
    sget-object v1, Landroid/app/AlarmManager;->sWrappers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "wrapper":Landroid/app/AlarmManager$ListenerWrapper;
    check-cast v0, Landroid/app/AlarmManager$ListenerWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    .line 989
    if-nez v0, :cond_2

    .line 990
    const-string/jumbo v1, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unrecognized alarm listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    return-void

    .line 983
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 994
    :cond_2
    invoke-virtual {v0}, Landroid/app/AlarmManager$ListenerWrapper;->cancel()V

    .line 977
    return-void
.end method

.method public cancel(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 955
    if-nez p1, :cond_1

    .line 956
    const-string/jumbo v1, "cancel() called with a null PendingIntent"

    .line 957
    .local v1, "msg":Ljava/lang/String;
    iget v2, p0, Landroid/app/AlarmManager;->mTargetSdkVersion:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 958
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "cancel() called with a null PendingIntent"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 960
    :cond_0
    const-string/jumbo v2, "AlarmManager"

    const-string/jumbo v3, "cancel() called with a null PendingIntent"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    return-void

    .line 966
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Landroid/app/IAlarmManager;->remove(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 954
    return-void

    .line 967
    :catch_0
    move-exception v0

    .line 968
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getNextAlarmClock()Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 1

    .prologue
    .line 1075
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1096
    :try_start_0
    iget-object v1, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v1, p1}, Landroid/app/IAlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1097
    :catch_0
    move-exception v0

    .line 1098
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getNextWakeFromIdleTime()J
    .locals 4

    .prologue
    .line 1054
    :try_start_0
    iget-object v1, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v1}, Landroid/app/IAlarmManager;->getNextWakeFromIdleTime()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 1055
    :catch_0
    move-exception v0

    .line 1056
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public semSetAutoPowerUp(Ljava/lang/String;)V
    .locals 2
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 403
    :try_start_0
    iget-object v1, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v1, p1}, Landroid/app/IAlarmManager;->setAutoPowerUp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    :goto_0
    return-void

    .line 404
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public set(IJJJLandroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;Landroid/os/WorkSource;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "windowMillis"    # J
    .param p6, "intervalMillis"    # J
    .param p8, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;
    .param p9, "targetHandler"    # Landroid/os/Handler;
    .param p10, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 696
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 697
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v10, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    .line 696
    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 695
    return-void
.end method

.method public set(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "windowMillis"    # J
    .param p6, "intervalMillis"    # J
    .param p8, "operation"    # Landroid/app/PendingIntent;
    .param p9, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 663
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 664
    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v9, p8

    move-object/from16 v13, p9

    .line 663
    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 662
    return-void
.end method

.method public set(IJJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;Landroid/os/WorkSource;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "windowMillis"    # J
    .param p6, "intervalMillis"    # J
    .param p8, "tag"    # Ljava/lang/String;
    .param p9, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;
    .param p10, "targetHandler"    # Landroid/os/Handler;
    .param p11, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 679
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 680
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v10, p9

    move-object/from16 v11, p8

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    .line 679
    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 678
    return-void
.end method

.method public set(IJLandroid/app/PendingIntent;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 390
    invoke-direct/range {p0 .. p0}, Landroid/app/AlarmManager;->legacyExactLength()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 391
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v9, p4

    .line 390
    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 389
    return-void
.end method

.method public set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;
    .param p6, "targetHandler"    # Landroid/os/Handler;

    .prologue
    .line 433
    invoke-direct/range {p0 .. p0}, Landroid/app/AlarmManager;->legacyExactLength()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 434
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v10, p5

    move-object/from16 v11, p4

    move-object/from16 v12, p6

    .line 433
    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 432
    return-void
.end method

.method public setAlarmClock(Landroid/app/AlarmManager$AlarmClockInfo;Landroid/app/PendingIntent;)V
    .locals 15
    .param p1, "info"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p2, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 655
    invoke-virtual/range {p1 .. p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    const/4 v8, 0x0

    .line 656
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object/from16 v9, p2

    move-object/from16 v14, p1

    .line 655
    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 654
    return-void
.end method

.method public setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 886
    const-wide/16 v6, 0x0

    const-wide/16 v4, -0x1

    const/4 v8, 0x4

    .line 887
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v9, p4

    .line 886
    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 885
    return-void
.end method

.method public setExact(IJLandroid/app/PendingIntent;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 600
    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 601
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v9, p4

    .line 600
    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 599
    return-void
.end method

.method public setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;
    .param p6, "targetHandler"    # Landroid/os/Handler;

    .prologue
    .line 615
    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 616
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v10, p5

    move-object/from16 v11, p4

    move-object/from16 v12, p6

    .line 615
    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 614
    return-void
.end method

.method public setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 940
    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v8, 0x4

    .line 941
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v9, p4

    .line 940
    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 939
    return-void
.end method

.method public setIdleUntil(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;
    .param p6, "targetHandler"    # Landroid/os/Handler;

    .prologue
    .line 626
    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    .line 627
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v10, p5

    move-object/from16 v11, p4

    move-object/from16 v12, p6

    .line 626
    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 625
    return-void
.end method

.method public setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "intervalMillis"    # J
    .param p6, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 836
    const-wide/16 v4, -0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 837
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v6, p4

    move-object/from16 v9, p6

    .line 836
    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 835
    return-void
.end method

.method public setRepeating(IJJLandroid/app/PendingIntent;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "intervalMillis"    # J
    .param p6, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 495
    invoke-direct/range {p0 .. p0}, Landroid/app/AlarmManager;->legacyExactLength()J

    move-result-wide v4

    const/4 v8, 0x0

    .line 496
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v6, p4

    move-object/from16 v9, p6

    .line 495
    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 494
    return-void
.end method

.method public setTime(J)V
    .locals 3
    .param p1, "millis"    # J

    .prologue
    .line 1005
    :try_start_0
    iget-object v1, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v1, p1, p2}, Landroid/app/IAlarmManager;->setTime(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1003
    return-void

    .line 1006
    :catch_0
    move-exception v0

    .line 1007
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 6
    .param p1, "timeZone"    # Ljava/lang/String;

    .prologue
    .line 1027
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1028
    return-void

    .line 1032
    :cond_0
    iget v3, p0, Landroid/app/AlarmManager;->mTargetSdkVersion:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_1

    .line 1033
    const/4 v1, 0x0

    .line 1035
    .local v1, "hasTimeZone":Z
    :try_start_0
    invoke-static {}, Llibcore/util/ZoneInfoDB;->getInstance()Llibcore/util/ZoneInfoDB$TzData;

    move-result-object v3

    invoke-virtual {v3, p1}, Llibcore/util/ZoneInfoDB$TzData;->hasTimeZone(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1039
    .end local v1    # "hasTimeZone":Z
    :goto_0
    if-nez v1, :cond_1

    .line 1040
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Timezone: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is not an Olson ID"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1045
    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v3, p1}, Landroid/app/IAlarmManager;->setTimeZone(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1026
    return-void

    .line 1046
    :catch_0
    move-exception v0

    .line 1047
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 1036
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "hasTimeZone":Z
    :catch_1
    move-exception v2

    .local v2, "ignored":Ljava/io/IOException;
    goto :goto_0
.end method

.method public setWindow(IJJLandroid/app/PendingIntent;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "windowStartMillis"    # J
    .param p4, "windowLengthMillis"    # J
    .param p6, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 546
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    .line 547
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-object/from16 v9, p6

    .line 546
    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 545
    return-void
.end method

.method public setWindow(IJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "windowStartMillis"    # J
    .param p4, "windowLengthMillis"    # J
    .param p6, "tag"    # Ljava/lang/String;
    .param p7, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;
    .param p8, "targetHandler"    # Landroid/os/Handler;

    .prologue
    .line 561
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 562
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-object/from16 v10, p7

    move-object/from16 v11, p6

    move-object/from16 v12, p8

    .line 561
    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 560
    return-void
.end method
