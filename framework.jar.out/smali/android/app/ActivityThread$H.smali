.class Landroid/app/ActivityThread$H;
.super Landroid/os/Handler;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# static fields
.field public static final ACTIVITY_CONFIGURATION_CHANGED:I = 0x7d

.field public static final ACTIVITY_DISPLAY_ID_CHANGED:I = 0x7d0

.field public static final BACKGROUND_VISIBLE_BEHIND_CHANGED:I = 0x94

.field public static final BIND_APPLICATION:I = 0x6e

.field public static final BIND_SERVICE:I = 0x79

.field public static final CANCEL_VISIBLE_BEHIND:I = 0x93

.field public static final CLEAN_UP_CONTEXT:I = 0x77

.field public static final CONFIGURATION_CHANGED:I = 0x76

.field public static final CREATE_BACKUP_AGENT:I = 0x80

.field public static final CREATE_SERVICE:I = 0x72

.field public static final DESTROY_ACTIVITY:I = 0x6d

.field public static final DESTROY_BACKUP_AGENT:I = 0x81

.field public static final DISPATCH_PACKAGE_BROADCAST:I = 0x85

.field public static final DUMP_ACTIVITY:I = 0x88

.field public static final DUMP_CONTEXT_RELATION_INFO:I = 0x7d1

.field public static final DUMP_HEAP:I = 0x87

.field public static final DUMP_PROVIDER:I = 0x8d

.field public static final DUMP_SERVICE:I = 0x7b

.field public static final ENABLE_JIT:I = 0x84

.field public static final ENTER_ANIMATION_COMPLETE:I = 0x95

.field public static final EXIT_APPLICATION:I = 0x6f

.field public static final GC_WHEN_IDLE:I = 0x78

.field public static final HIDE_WINDOW:I = 0x6a

.field public static final INSTALL_PROVIDER:I = 0x91

.field public static final LAUNCH_ACTIVITY:I = 0x64

.field public static final LOCAL_VOICE_INTERACTION_STARTED:I = 0x9a

.field public static final LOW_MEMORY:I = 0x7c

.field public static final MULTI_WINDOW_MODE_CHANGED:I = 0x98

.field public static final NEW_INTENT:I = 0x70

.field public static final ON_NEW_ACTIVITY_OPTIONS:I = 0x92

.field public static final PAUSE_ACTIVITY:I = 0x65

.field public static final PAUSE_ACTIVITY_FINISHING:I = 0x66

.field public static final PICTURE_IN_PICTURE_MODE_CHANGED:I = 0x99

.field public static final PROFILER_CONTROL:I = 0x7f

.field public static final RECEIVER:I = 0x71

.field public static final RELAUNCH_ACTIVITY:I = 0x7e

.field public static final REMOVE_PROVIDER:I = 0x83

.field public static final REQUEST_ASSIST_CONTEXT_EXTRAS:I = 0x8f

.field public static final RESUME_ACTIVITY:I = 0x6b

.field public static final SCHEDULE_CRASH:I = 0x86

.field public static final SEND_RESULT:I = 0x6c

.field public static final SERVICE_ARGS:I = 0x73

.field public static final SET_CORE_SETTINGS:I = 0x8a

.field public static final SET_MULTIWINDOW_SETTINGS:I = 0x834

.field public static final SHOW_WINDOW:I = 0x69

.field public static final SLEEPING:I = 0x89

.field public static final START_BINDER_TRACKING:I = 0x96

.field public static final STOP_ACTIVITY_HIDE:I = 0x68

.field public static final STOP_ACTIVITY_SHOW:I = 0x67

.field public static final STOP_BINDER_TRACKING_AND_DUMP:I = 0x97

.field public static final STOP_SERVICE:I = 0x74

.field public static final SUICIDE:I = 0x82

.field public static final TRANSLUCENT_CONVERSION_COMPLETE:I = 0x90

.field public static final TRIM_MEMORY:I = 0x8c

.field public static final UNBIND_SERVICE:I = 0x7a

.field public static final UNSTABLE_PROVIDER_DIED:I = 0x8e

.field public static final UPDATE_OVERLAY_PATH:I = 0x9b

.field public static final UPDATE_PACKAGE_COMPATIBILITY_INFO:I = 0x8b


# instance fields
.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method private constructor <init>(Landroid/app/ActivityThread;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ActivityThread;

    .prologue
    .line 1502
    iput-object p1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$H;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ActivityThread;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$H;-><init>(Landroid/app/ActivityThread;)V

    return-void
.end method

.method private maybeSnapshot()V
    .locals 8

    .prologue
    .line 1922
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1925
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v5, v5, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    iget-object v3, v5, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 1926
    .local v3, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1928
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v5}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 1929
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 1930
    const-string/jumbo v5, "ActivityThread"

    const-string/jumbo v6, "cannot get a valid context"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    return-void

    .line 1933
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1934
    .local v4, "pm":Landroid/content/pm/PackageManager;
    if-nez v4, :cond_1

    .line 1935
    const-string/jumbo v5, "ActivityThread"

    const-string/jumbo v6, "cannot get a valid PackageManager"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    return-void

    .line 1939
    :cond_1
    const/4 v5, 0x1

    .line 1938
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1943
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v5, v5, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/android/internal/os/SamplingProfilerIntegration;->writeSnapshot(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V

    .line 1921
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_2
    return-void

    .line 1940
    .restart local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v3    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1941
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "ActivityThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "cannot get package info for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method codeToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 1639
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1643
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1914
    :goto_0
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1915
    .local v12, "obj":Ljava/lang/Object;
    instance-of v2, v12, Lcom/android/internal/os/SomeArgs;

    if-eqz v2, :cond_0

    .line 1916
    check-cast v12, Lcom/android/internal/os/SomeArgs;

    .end local v12    # "obj":Ljava/lang/Object;
    invoke-virtual {v12}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1641
    :cond_0
    return-void

    .line 1645
    :sswitch_0
    const-string/jumbo v2, "activityStart"

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1646
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 1648
    .local v17, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 1649
    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 1648
    invoke-virtual {v2, v3, v4}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    .line 1650
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    const-string/jumbo v3, "LAUNCH_ACTIVITY"

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-static {v2, v0, v4, v3}, Landroid/app/ActivityThread;->-wrap14(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;Ljava/lang/String;)V

    .line 1651
    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    .line 1654
    .end local v17    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :sswitch_1
    const-string/jumbo v2, "activityRestart"

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1655
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 1656
    .restart local v17    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/app/ActivityThread;->-wrap21(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 1657
    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    .line 1660
    .end local v17    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :sswitch_2
    const-string/jumbo v2, "activityPause"

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1661
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/os/SomeArgs;

    .line 1662
    .local v9, "args":Lcom/android/internal/os/SomeArgs;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v3, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/os/IBinder;

    .line 1663
    iget v4, v9, Lcom/android/internal/os/SomeArgs;->argi1:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    const/4 v5, 0x1

    :goto_1
    iget v6, v9, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 1664
    iget v4, v9, Lcom/android/internal/os/SomeArgs;->argi1:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    const/4 v7, 0x1

    :goto_2
    iget v8, v9, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 1662
    const/4 v4, 0x0

    invoke-static/range {v2 .. v8}, Landroid/app/ActivityThread;->-wrap18(Landroid/app/ActivityThread;Landroid/os/IBinder;ZZIZI)V

    .line 1665
    invoke-direct/range {p0 .. p0}, Landroid/app/ActivityThread$H;->maybeSnapshot()V

    .line 1666
    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1663
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 1664
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 1669
    .end local v9    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_3
    const-string/jumbo v2, "activityPause"

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1670
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/os/SomeArgs;

    .line 1671
    .restart local v9    # "args":Lcom/android/internal/os/SomeArgs;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v3, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/os/IBinder;

    iget v4, v9, Lcom/android/internal/os/SomeArgs;->argi1:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3

    const/4 v5, 0x1

    .line 1672
    :goto_3
    iget v6, v9, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v4, v9, Lcom/android/internal/os/SomeArgs;->argi1:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_4

    const/4 v7, 0x1

    :goto_4
    iget v8, v9, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 1671
    const/4 v4, 0x1

    invoke-static/range {v2 .. v8}, Landroid/app/ActivityThread;->-wrap18(Landroid/app/ActivityThread;Landroid/os/IBinder;ZZIZI)V

    .line 1673
    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1671
    :cond_3
    const/4 v5, 0x0

    goto :goto_3

    .line 1672
    :cond_4
    const/4 v7, 0x0

    goto :goto_4

    .line 1676
    .end local v9    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_4
    const-string/jumbo v2, "activityStop"

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1677
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/os/SomeArgs;

    .line 1678
    .restart local v9    # "args":Lcom/android/internal/os/SomeArgs;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    iget v4, v9, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v5, v9, Lcom/android/internal/os/SomeArgs;->argi3:I

    const/4 v6, 0x1

    invoke-static {v3, v2, v6, v4, v5}, Landroid/app/ActivityThread;->-wrap28(Landroid/app/ActivityThread;Landroid/os/IBinder;ZII)V

    .line 1679
    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1682
    .end local v9    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_5
    const-string/jumbo v2, "activityStop"

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1683
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/os/SomeArgs;

    .line 1684
    .restart local v9    # "args":Lcom/android/internal/os/SomeArgs;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    iget v4, v9, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v5, v9, Lcom/android/internal/os/SomeArgs;->argi3:I

    const/4 v6, 0x0

    invoke-static {v3, v2, v6, v4, v5}, Landroid/app/ActivityThread;->-wrap28(Landroid/app/ActivityThread;Landroid/os/IBinder;ZII)V

    .line 1685
    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1688
    .end local v9    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_6
    const-string/jumbo v2, "activityShowWindow"

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1689
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Landroid/app/ActivityThread;->-wrap34(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    .line 1690
    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1693
    :sswitch_7
    const-string/jumbo v2, "activityHideWindow"

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1694
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/app/ActivityThread;->-wrap34(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    .line 1695
    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1698
    :sswitch_8
    const-string/jumbo v2, "activityResume"

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1699
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/os/SomeArgs;

    .line 1700
    .restart local v9    # "args":Lcom/android/internal/os/SomeArgs;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v3, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/os/IBinder;

    iget v4, v9, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-eqz v4, :cond_5

    const/4 v5, 0x1

    .line 1701
    :goto_5
    iget v7, v9, Lcom/android/internal/os/SomeArgs;->argi3:I

    const-string/jumbo v8, "RESUME_ACTIVITY"

    .line 1700
    const/4 v4, 0x1

    const/4 v6, 0x1

    invoke-virtual/range {v2 .. v8}, Landroid/app/ActivityThread;->handleResumeActivity(Landroid/os/IBinder;ZZZILjava/lang/String;)V

    .line 1702
    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1700
    :cond_5
    const/4 v5, 0x0

    goto :goto_5

    .line 1705
    .end local v9    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_9
    const-string/jumbo v2, "activityDeliverResult"

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1706
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$ResultData;

    invoke-static {v3, v2}, Landroid/app/ActivityThread;->-wrap22(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ResultData;)V

    .line 1707
    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1710
    :sswitch_a
    const-string/jumbo v2, "activityDestroy"

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1711
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    .line 1712
    :goto_6
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    const/4 v6, 0x0

    .line 1711
    invoke-static {v4, v2, v3, v5, v6}, Landroid/app/ActivityThread;->-wrap7(Landroid/app/ActivityThread;Landroid/os/IBinder;ZIZ)V

    .line 1713
    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1711
    :cond_6
    const/4 v3, 0x0

    goto :goto_6

    .line 1716
    :sswitch_b
    const-string/jumbo v2, "bindApplication"

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1717
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/app/ActivityThread$AppBindData;

    .line 1718
    .local v11, "data":Landroid/app/ActivityThread$AppBindData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v2, v11}, Landroid/app/ActivityThread;->-wrap3(Landroid/app/ActivityThread;Landroid/app/ActivityThread$AppBindData;)V

    .line 1719
    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1722
    .end local v11    # "data":Landroid/app/ActivityThread$AppBindData;
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v2, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    if-eqz v2, :cond_7

    .line 1723
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v2, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->onTerminate()V

    .line 1725
    :cond_7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    .line 1728
    :sswitch_d
    const-string/jumbo v2, "activityNewIntent"

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1729
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$NewIntentData;

    invoke-static {v3, v2}, Landroid/app/ActivityThread;->-wrap17(Landroid/app/ActivityThread;Landroid/app/ActivityThread$NewIntentData;)V

    .line 1730
    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1733
    :sswitch_e
    const-string/jumbo v2, "broadcastReceiveComp"

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1734
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$ReceiverData;

    invoke-static {v3, v2}, Landroid/app/ActivityThread;->-wrap20(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ReceiverData;)V

    .line 1735
    invoke-direct/range {p0 .. p0}, Landroid/app/ActivityThread$H;->maybeSnapshot()V

    .line 1736
    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1739
    :sswitch_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "serviceCreate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1740
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$CreateServiceData;

    invoke-static {v3, v2}, Landroid/app/ActivityThread;->-wrap6(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateServiceData;)V

    .line 1741
    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1744
    :sswitch_10
    const-string/jumbo v2, "serviceBind"

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1745
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$BindServiceData;

    invoke-static {v3, v2}, Landroid/app/ActivityThread;->-wrap4(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V

    .line 1746
    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1749
    :sswitch_11
    const-string/jumbo v2, "serviceUnbind"

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1750
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$BindServiceData;

    invoke-static {v3, v2}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V

    .line 1751
    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1754
    :sswitch_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "serviceStart: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1755
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$ServiceArgsData;

    invoke-static {v3, v2}, Landroid/app/ActivityThread;->-wrap23(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ServiceArgsData;)V

    .line 1756
    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1759
    :sswitch_13
    const-string/jumbo v2, "serviceStop"

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1760
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v3, v2}, Landroid/app/ActivityThread;->-wrap30(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    .line 1761
    invoke-direct/range {p0 .. p0}, Landroid/app/ActivityThread$H;->maybeSnapshot()V

    .line 1762
    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1765
    :sswitch_14
    const-string/jumbo v2, "configChanged"

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1766
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    iput v2, v3, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    .line 1767
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/res/Configuration;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 1768
    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1771
    :sswitch_15
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/app/ActivityThread$ContextCleanupInfo;

    .line 1772
    .local v10, "cci":Landroid/app/ActivityThread$ContextCleanupInfo;
    iget-object v2, v10, Landroid/app/ActivityThread$ContextCleanupInfo;->context:Landroid/app/ContextImpl;

    iget-object v3, v10, Landroid/app/ActivityThread$ContextCleanupInfo;->who:Ljava/lang/String;

    iget-object v4, v10, Landroid/app/ActivityThread$ContextCleanupInfo;->what:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/app/ContextImpl;->performFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1775
    .end local v10    # "cci":Landroid/app/ActivityThread$ContextCleanupInfo;
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->scheduleGcIdler()V

    goto/16 :goto_0

    .line 1778
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-static {v3, v2}, Landroid/app/ActivityThread;->-wrap12(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    goto/16 :goto_0

    .line 1781
    :sswitch_18
    const-string/jumbo v2, "lowMemory"

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1782
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->handleLowMemory()V

    .line 1783
    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1786
    :sswitch_19
    const-string/jumbo v2, "activityConfigChanged"

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1787
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$ActivityConfigChangeData;

    .line 1788
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_8

    const/4 v3, 0x1

    .line 1787
    :goto_7
    invoke-virtual {v4, v2, v3}, Landroid/app/ActivityThread;->handleActivityConfigurationChanged(Landroid/app/ActivityThread$ActivityConfigChangeData;Z)V

    .line 1789
    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1788
    :cond_8
    const/4 v3, 0x0

    goto :goto_7

    .line 1792
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    move v3, v2

    :goto_8
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ProfilerInfo;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v3, v2, v5}, Landroid/app/ActivityThread;->handleProfilerControl(ZLandroid/app/ProfilerInfo;I)V

    goto/16 :goto_0

    :cond_9
    const/4 v2, 0x0

    move v3, v2

    goto :goto_8

    .line 1795
    :sswitch_1b
    const-string/jumbo v2, "backupCreateAgent"

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1796
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-static {v3, v2}, Landroid/app/ActivityThread;->-wrap5(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V

    .line 1797
    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1800
    :sswitch_1c
    const-string/jumbo v2, "backupDestroyAgent"

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1801
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-static {v3, v2}, Landroid/app/ActivityThread;->-wrap8(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V

    .line 1802
    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1805
    :sswitch_1d
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    goto/16 :goto_0

    .line 1808
    :sswitch_1e
    const-string/jumbo v2, "providerRemove"

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1809
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$ProviderRefCount;

    invoke-virtual {v3, v2}, Landroid/app/ActivityThread;->completeRemoveProvider(Landroid/app/ActivityThread$ProviderRefCount;)V

    .line 1810
    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1813
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->ensureJitEnabled()V

    goto/16 :goto_0

    .line 1816
    :sswitch_20
    const-string/jumbo v2, "broadcastPackage"

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1817
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/app/ActivityThread;->handleDispatchPackageBroadcast(I[Ljava/lang/String;)V

    .line 1818
    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1821
    :sswitch_21
    new-instance v3, Landroid/app/RemoteServiceException;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v2}, Landroid/app/RemoteServiceException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1823
    :sswitch_22
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    move v3, v2

    :goto_9
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$DumpHeapData;

    invoke-static {v3, v2}, Landroid/app/ActivityThread;->handleDumpHeap(ZLandroid/app/ActivityThread$DumpHeapData;)V

    goto/16 :goto_0

    :cond_a
    const/4 v2, 0x0

    move v3, v2

    goto :goto_9

    .line 1826
    :sswitch_23
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-static {v3, v2}, Landroid/app/ActivityThread;->-wrap9(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    goto/16 :goto_0

    .line 1829
    :sswitch_24
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-static {v3, v2}, Landroid/app/ActivityThread;->-wrap11(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    goto/16 :goto_0

    .line 1832
    :sswitch_25
    const-string/jumbo v2, "sleeping"

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1833
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_b

    const/4 v3, 0x1

    :goto_a
    invoke-static {v4, v2, v3}, Landroid/app/ActivityThread;->-wrap26(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    .line 1834
    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1833
    :cond_b
    const/4 v3, 0x0

    goto :goto_a

    .line 1837
    :sswitch_26
    const-string/jumbo v2, "setCoreSettings"

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1838
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v3, v2}, Landroid/app/ActivityThread;->-wrap24(Landroid/app/ActivityThread;Landroid/os/Bundle;)V

    .line 1839
    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1842
    :sswitch_27
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$UpdateCompatibilityData;

    invoke-static {v3, v2}, Landroid/app/ActivityThread;->-wrap33(Landroid/app/ActivityThread;Landroid/app/ActivityThread$UpdateCompatibilityData;)V

    goto/16 :goto_0

    .line 1845
    :sswitch_28
    const-string/jumbo v2, "trimMemory"

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1846
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/app/ActivityThread;->handleTrimMemory(I)V

    .line 1847
    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1850
    :sswitch_29
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/app/ActivityThread;->handleUnstableProviderDied(Landroid/os/IBinder;Z)V

    goto/16 :goto_0

    .line 1853
    :sswitch_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$RequestAssistContextExtras;

    invoke-virtual {v3, v2}, Landroid/app/ActivityThread;->handleRequestAssistContextExtras(Landroid/app/ActivityThread$RequestAssistContextExtras;)V

    goto/16 :goto_0

    .line 1856
    :sswitch_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_c

    const/4 v3, 0x1

    :goto_b
    invoke-virtual {v4, v2, v3}, Landroid/app/ActivityThread;->handleTranslucentConversionComplete(Landroid/os/IBinder;Z)V

    goto/16 :goto_0

    :cond_c
    const/4 v3, 0x0

    goto :goto_b

    .line 1859
    :sswitch_2c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/pm/ProviderInfo;

    invoke-virtual {v3, v2}, Landroid/app/ActivityThread;->handleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    goto/16 :goto_0

    .line 1862
    :sswitch_2d
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/util/Pair;

    .line 1863
    .local v14, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IBinder;Landroid/app/ActivityOptions;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    iget-object v3, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/app/ActivityOptions;

    invoke-virtual {v4, v2, v3}, Landroid/app/ActivityThread;->onNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V

    goto/16 :goto_0

    .line 1866
    .end local v14    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IBinder;Landroid/app/ActivityOptions;>;"
    :sswitch_2e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Landroid/app/ActivityThread;->handleCancelVisibleBehind(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 1869
    :sswitch_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-lez v3, :cond_d

    const/4 v3, 0x1

    :goto_c
    invoke-virtual {v4, v2, v3}, Landroid/app/ActivityThread;->handleOnBackgroundVisibleBehindChanged(Landroid/os/IBinder;Z)V

    goto/16 :goto_0

    :cond_d
    const/4 v3, 0x0

    goto :goto_c

    .line 1872
    :sswitch_30
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v3, v2}, Landroid/app/ActivityThread;->-wrap13(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 1875
    :sswitch_31
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v2}, Landroid/app/ActivityThread;->-wrap27(Landroid/app/ActivityThread;)V

    goto/16 :goto_0

    .line 1878
    :sswitch_32
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    invoke-static {v3, v2}, Landroid/app/ActivityThread;->-wrap29(Landroid/app/ActivityThread;Landroid/os/ParcelFileDescriptor;)V

    goto/16 :goto_0

    .line 1881
    :sswitch_33
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_e

    const/4 v3, 0x1

    :goto_d
    invoke-static {v4, v2, v3}, Landroid/app/ActivityThread;->-wrap16(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    goto/16 :goto_0

    :cond_e
    const/4 v3, 0x0

    goto :goto_d

    .line 1884
    :sswitch_34
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_f

    const/4 v3, 0x1

    :goto_e
    invoke-static {v4, v2, v3}, Landroid/app/ActivityThread;->-wrap19(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    goto/16 :goto_0

    :cond_f
    const/4 v3, 0x0

    goto :goto_e

    .line 1887
    :sswitch_35
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    iget-object v2, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    .line 1888
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/os/SomeArgs;

    iget-object v3, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/app/IVoiceInteractor;

    .line 1887
    invoke-static {v4, v2, v3}, Landroid/app/ActivityThread;->-wrap15(Landroid/app/ActivityThread;Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V

    goto/16 :goto_0

    .line 1892
    :sswitch_36
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/util/Pair;

    .line 1893
    .local v16, "pathPackagePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v16

    iget-object v15, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    .line 1894
    .local v15, "path":Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v13, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    .line 1895
    .local v13, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-static {v2, v15, v13, v3}, Landroid/app/ActivityThread;->-wrap32(Landroid/app/ActivityThread;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1900
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v15    # "path":Ljava/lang/String;
    .end local v16    # "pathPackagePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :sswitch_37
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-static {v3, v2, v4}, Landroid/app/ActivityThread;->-wrap2(Landroid/app/ActivityThread;Landroid/os/IBinder;I)V

    goto/16 :goto_0

    .line 1903
    :sswitch_38
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-static {v3, v2}, Landroid/app/ActivityThread;->-wrap10(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    goto/16 :goto_0

    .line 1908
    :sswitch_39
    const-string/jumbo v2, "setMultiWindowSettings"

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1909
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v3, v2}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;Landroid/os/Bundle;)V

    .line 1910
    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1643
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_2
        0x66 -> :sswitch_3
        0x67 -> :sswitch_4
        0x68 -> :sswitch_5
        0x69 -> :sswitch_6
        0x6a -> :sswitch_7
        0x6b -> :sswitch_8
        0x6c -> :sswitch_9
        0x6d -> :sswitch_a
        0x6e -> :sswitch_b
        0x6f -> :sswitch_c
        0x70 -> :sswitch_d
        0x71 -> :sswitch_e
        0x72 -> :sswitch_f
        0x73 -> :sswitch_12
        0x74 -> :sswitch_13
        0x76 -> :sswitch_14
        0x77 -> :sswitch_15
        0x78 -> :sswitch_16
        0x79 -> :sswitch_10
        0x7a -> :sswitch_11
        0x7b -> :sswitch_17
        0x7c -> :sswitch_18
        0x7d -> :sswitch_19
        0x7e -> :sswitch_1
        0x7f -> :sswitch_1a
        0x80 -> :sswitch_1b
        0x81 -> :sswitch_1c
        0x82 -> :sswitch_1d
        0x83 -> :sswitch_1e
        0x84 -> :sswitch_1f
        0x85 -> :sswitch_20
        0x86 -> :sswitch_21
        0x87 -> :sswitch_22
        0x88 -> :sswitch_23
        0x89 -> :sswitch_25
        0x8a -> :sswitch_26
        0x8b -> :sswitch_27
        0x8c -> :sswitch_28
        0x8d -> :sswitch_24
        0x8e -> :sswitch_29
        0x8f -> :sswitch_2a
        0x90 -> :sswitch_2b
        0x91 -> :sswitch_2c
        0x92 -> :sswitch_2d
        0x93 -> :sswitch_2e
        0x94 -> :sswitch_2f
        0x95 -> :sswitch_30
        0x96 -> :sswitch_31
        0x97 -> :sswitch_32
        0x98 -> :sswitch_33
        0x99 -> :sswitch_34
        0x9a -> :sswitch_35
        0x9b -> :sswitch_36
        0x7d0 -> :sswitch_37
        0x7d1 -> :sswitch_38
        0x834 -> :sswitch_39
    .end sparse-switch
.end method
