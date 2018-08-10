.class public Lcom/android/systemui/statusbar/notification/NotificationInflater;
.super Ljava/lang/Object;
.source "NotificationInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;,
        Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;,
        Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;,
        Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;,
        Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    }
.end annotation


# static fields
.field private static final EXECUTOR:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;

.field static final FLAG_REINFLATE_ALL:I = -0x1

.field static final FLAG_REINFLATE_EXPANDED_VIEW:I = 0x2

.field protected static final KNOX_DEBUG:Z


# instance fields
.field private mCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

.field private mIsChildInGroup:Z

.field private mIsLowPriority:Z

.field private mRedactAmbient:Z

.field private mRemoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field private final mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private mUsesIncreasedHeadsUpHeight:Z

.field private mUsesIncreasedHeight:Z


# direct methods
.method static synthetic -com_android_systemui_statusbar_notification_NotificationInflater-mthref-0(Landroid/os/CancellationSignal;)V
    .locals 0

    invoke-virtual {p0}, Landroid/os/CancellationSignal;->cancel()V

    return-void
.end method

.method static synthetic -com_android_systemui_statusbar_notification_NotificationInflater-mthref-1(Landroid/os/CancellationSignal;)V
    .locals 0

    invoke-virtual {p0}, Landroid/os/CancellationSignal;->cancel()V

    return-void
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;ILjava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)Z
    .locals 1

    invoke-static/range {p0 .. p5}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->finishIfDone(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;ILjava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(ILandroid/app/Notification$Builder;ZZZZZLandroid/content/Context;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .locals 1

    invoke-static/range {p0 .. p8}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->createRemoteViews(ILandroid/app/Notification$Builder;ZZZZZLandroid/content/Context;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Ljava/util/HashMap;Ljava/lang/Exception;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->handleInflationError(Ljava/util/HashMap;Ljava/lang/Exception;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;-><init>(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->EXECUTOR:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;

    const-string/jumbo v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->KNOX_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    return-void
.end method

.method public static apply(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;ILcom/android/systemui/statusbar/ExpandableNotificationRow;ZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;)Landroid/os/CancellationSignal;
    .locals 50

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPublicLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v24

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getKnoxLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v44

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x1

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get7(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v1

    iget-object v2, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedContentView:Landroid/widget/RemoteViews;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->compareRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v1

    xor-int/lit8 v6, v1, 0x1

    new-instance v14, Lcom/android/systemui/statusbar/notification/NotificationInflater$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)V

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v11

    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v12

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-static/range {v1 .. v14}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->applyRemoteView(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;)V

    :cond_0
    const/4 v3, 0x2

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get8(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get8(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v1

    iget-object v2, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedBigContentView:Landroid/widget/RemoteViews;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->compareRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v1

    xor-int/lit8 v6, v1, 0x1

    new-instance v14, Lcom/android/systemui/statusbar/notification/NotificationInflater$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$2;-><init>(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)V

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v11

    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v12

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-static/range {v1 .. v14}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->applyRemoteView(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;)V

    :cond_1
    const/4 v3, 0x4

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get9(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get9(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v1

    iget-object v2, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedHeadsUpContentView:Landroid/widget/RemoteViews;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->compareRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v1

    xor-int/lit8 v6, v1, 0x1

    new-instance v14, Lcom/android/systemui/statusbar/notification/NotificationInflater$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$3;-><init>(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)V

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v11

    const/4 v1, 0x2

    invoke-virtual {v10, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v12

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-static/range {v1 .. v14}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->applyRemoteView(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;)V

    :cond_2
    const/16 v3, 0x8

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_3

    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get11(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v1

    iget-object v2, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedPublicContentView:Landroid/widget/RemoteViews;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->compareRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v1

    xor-int/lit8 v6, v1, 0x1

    new-instance v14, Lcom/android/systemui/statusbar/notification/NotificationInflater$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$4;-><init>(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)V

    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v25

    const/4 v1, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v26

    move-object/from16 v15, p0

    move/from16 v16, p1

    move/from16 v17, v3

    move-object/from16 v18, p2

    move/from16 v19, p3

    move/from16 v20, v6

    move-object/from16 v21, p4

    move-object/from16 v22, p5

    move-object/from16 v23, v9

    move-object/from16 v27, v13

    move-object/from16 v28, v14

    invoke-static/range {v15 .. v28}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->applyRemoteView(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;)V

    :cond_3
    const/16 v3, 0x10

    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_4

    if-eqz p3, :cond_6

    move-object/from16 v34, v24

    :goto_0
    invoke-static/range {p2 .. p3}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->canReapplyAmbient(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get6(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v1

    iget-object v2, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedAmbientContentView:Landroid/widget/RemoteViews;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->compareRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v1

    xor-int/lit8 v6, v1, 0x1

    :goto_1
    new-instance v14, Lcom/android/systemui/statusbar/notification/NotificationInflater$5;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$5;-><init>(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)V

    invoke-virtual/range {v34 .. v34}, Lcom/android/systemui/statusbar/NotificationContentView;->getAmbientChild()Landroid/view/View;

    move-result-object v35

    const/4 v1, 0x4

    move-object/from16 v0, v34

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v36

    move-object/from16 v25, p0

    move/from16 v26, p1

    move/from16 v27, v3

    move-object/from16 v28, p2

    move/from16 v29, p3

    move/from16 v30, v6

    move-object/from16 v31, p4

    move-object/from16 v32, p5

    move-object/from16 v33, v9

    move-object/from16 v37, v13

    move-object/from16 v38, v14

    invoke-static/range {v25 .. v38}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->applyRemoteView(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;)V

    :cond_4
    const/16 v3, 0x20

    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_5

    const-class v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/KnoxStateMonitor;->isPersona(I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get10(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v1

    iget-object v2, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedKnoxContentView:Landroid/widget/RemoteViews;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->compareRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v1

    xor-int/lit8 v6, v1, 0x1

    new-instance v14, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;-><init>(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)V

    invoke-virtual/range {v44 .. v44}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v45

    const/4 v1, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v46

    move-object/from16 v35, p0

    move/from16 v36, p1

    move/from16 v37, v3

    move-object/from16 v38, p2

    move/from16 v39, p3

    move/from16 v40, v6

    move-object/from16 v41, p4

    move-object/from16 v42, p5

    move-object/from16 v43, v9

    move-object/from16 v47, v13

    move-object/from16 v48, v14

    invoke-static/range {v35 .. v48}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->applyRemoteView(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;)V

    :cond_5
    move-object/from16 v15, p0

    move/from16 v16, p1

    move-object/from16 v17, v13

    move-object/from16 v18, p5

    move-object/from16 v19, p2

    move/from16 v20, p3

    invoke-static/range {v15 .. v20}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->finishIfDone(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;ILjava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)Z

    new-instance v49, Landroid/os/CancellationSignal;

    invoke-direct/range {v49 .. v49}, Landroid/os/CancellationSignal;-><init>()V

    new-instance v1, Lcom/android/systemui/statusbar/notification/-$Lambda$gIHVGdltksSGhu3zzApFHCkb-NE$2;

    invoke-direct {v1, v13}, Lcom/android/systemui/statusbar/notification/-$Lambda$gIHVGdltksSGhu3zzApFHCkb-NE$2;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v49

    invoke-virtual {v0, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    return-object v49

    :cond_6
    move-object/from16 v34, v10

    goto/16 :goto_0

    :cond_7
    const/4 v6, 0x1

    goto/16 :goto_1
.end method

.method static applyRemoteView(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;",
            "II",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            "ZZ",
            "Landroid/widget/RemoteViews$OnClickHandler;",
            "Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            "Lcom/android/systemui/statusbar/NotificationContentView;",
            "Landroid/view/View;",
            "Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/CancellationSignal;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;",
            ")V"
        }
    .end annotation

    invoke-virtual/range {p13 .. p13}, Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;->getRemoteView()Landroid/widget/RemoteViews;

    move-result-object v15

    new-instance v2, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;

    move/from16 v3, p5

    move-object/from16 v4, p13

    move-object/from16 v5, p11

    move-object/from16 v6, p3

    move-object/from16 v7, p9

    move-object/from16 v8, p12

    move/from16 v9, p2

    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p7

    move/from16 v13, p4

    move-object/from16 v14, p10

    move-object/from16 v16, p6

    move-object/from16 v17, p8

    invoke-direct/range {v2 .. v17}, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;-><init>(ZLcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationContentView;Ljava/util/HashMap;ILcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;ILcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;ZLandroid/view/View;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    if-eqz p5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->packageContext:Landroid/content/Context;

    move-object/from16 v16, v0

    sget-object v18, Lcom/android/systemui/statusbar/notification/NotificationInflater;->EXECUTOR:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;

    move-object/from16 v17, p9

    move-object/from16 v19, v2

    move-object/from16 v20, p6

    invoke-virtual/range {v15 .. v20}, Landroid/widget/RemoteViews;->applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/os/CancellationSignal;

    move-result-object v21

    :goto_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p12

    move-object/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->packageContext:Landroid/content/Context;

    move-object/from16 v16, v0

    sget-object v18, Lcom/android/systemui/statusbar/notification/NotificationInflater;->EXECUTOR:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;

    move-object/from16 v17, p10

    move-object/from16 v19, v2

    move-object/from16 v20, p6

    invoke-virtual/range {v15 .. v20}, Landroid/widget/RemoteViews;->reapplyAsync(Landroid/content/Context;Landroid/view/View;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/os/CancellationSignal;

    move-result-object v21

    goto :goto_0
.end method

.method private static canReapplyAmbient(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPublicLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getAmbientChild()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static compareRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private static createContentView(Landroid/app/Notification$Builder;ZZ)Landroid/widget/RemoteViews;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->makeLowPriorityContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->createContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method private static createExpandedView(Landroid/app/Notification$Builder;Z)Landroid/widget/RemoteViews;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-static {v1}, Landroid/app/Notification$Builder;->makeHeaderExpanded(Landroid/widget/RemoteViews;)V

    return-object v1

    :cond_1
    return-object v2
.end method

.method private static createRemoteViews(ILandroid/app/Notification$Builder;ZZZZZLandroid/content/Context;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;-><init>()V

    if-eqz p2, :cond_6

    xor-int/lit8 p2, p3, 0x1

    :goto_0
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    invoke-static {p1, p2, p4}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->createContentView(Landroid/app/Notification$Builder;ZZ)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-set7(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->createExpandedView(Landroid/app/Notification$Builder;Z)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-set8(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    invoke-virtual {p1, p5}, Landroid/app/Notification$Builder;->createHeadsUpContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-set9(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->makePublicContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-set11(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    :cond_3
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_4

    if-eqz p6, :cond_7

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->makePublicAmbientNotification()Landroid/widget/RemoteViews;

    move-result-object v1

    :goto_1
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-set6(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    :cond_4
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_5

    const-class v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {p8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/KnoxStateMonitor;->isPersona(I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p8, p7}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->makeKnoxNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-set10(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    :cond_5
    iput-object p7, v0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->packageContext:Landroid/content/Context;

    return-object v0

    :cond_6
    const/4 p2, 0x0

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->makeAmbientNotification()Landroid/widget/RemoteViews;

    move-result-object v1

    goto :goto_1
.end method

.method private static finishIfDone(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;ILjava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/CancellationSignal;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            "Z)Z"
        }
    .end annotation

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    invoke-virtual {p4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    invoke-virtual {p4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v5

    invoke-virtual {p4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPublicLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v6

    invoke-virtual {p4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getKnoxLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v2

    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_12

    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_1

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get1(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get1(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->isCustomNotification(Landroid/app/Notification;Landroid/view/View;)Z

    move-result v1

    invoke-virtual {p4, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIsCustomNotification(Z)V

    :cond_0
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get7(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedContentView:Landroid/widget/RemoteViews;

    :cond_1
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_3

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get2(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_d

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get2(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/NotificationContentView;->setExpandedChild(Landroid/view/View;)V

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->isCustomNotification(Landroid/app/Notification;Landroid/view/View;)Z

    move-result v1

    invoke-virtual {p4, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIsCustomBigNotification(Z)V

    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get8(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedBigContentView:Landroid/widget/RemoteViews;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get8(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v7

    if-eqz v7, :cond_e

    const/4 v7, 0x1

    :goto_1
    invoke-virtual {p4, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExpandable(Z)V

    :cond_3
    and-int/lit8 v7, p1, 0x4

    if-eqz v7, :cond_5

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get3(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_f

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get3(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/NotificationContentView;->setHeadsUpChild(Landroid/view/View;)V

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->isCustomNotification(Landroid/app/Notification;Landroid/view/View;)Z

    move-result v1

    invoke-virtual {p4, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIsCustomHeadsupNotification(Z)V

    :cond_4
    :goto_2
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get9(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedHeadsUpContentView:Landroid/widget/RemoteViews;

    :cond_5
    and-int/lit8 v7, p1, 0x8

    if-eqz v7, :cond_7

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get5(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get5(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v7, v7, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v7, :cond_6

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v7, v7, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->isCustomNotification(Landroid/app/Notification;Landroid/view/View;)Z

    move-result v1

    invoke-virtual {p4, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIsCustomPublicNotification(Z)V

    :cond_6
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get11(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedPublicContentView:Landroid/widget/RemoteViews;

    :cond_7
    and-int/lit8 v7, p1, 0x10

    if-eqz v7, :cond_9

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get0(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_8

    if-eqz p5, :cond_10

    move-object v3, v6

    :goto_3
    if-nez p5, :cond_11

    move-object v4, v6

    :goto_4
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get0(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/NotificationContentView;->setAmbientChild(Landroid/view/View;)V

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/NotificationContentView;->setAmbientChild(Landroid/view/View;)V

    :cond_8
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get6(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedAmbientContentView:Landroid/widget/RemoteViews;

    :cond_9
    and-int/lit8 v7, p1, 0x20

    if-eqz v7, :cond_b

    const-class v7, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v7}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {p4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v8

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/systemui/KnoxStateMonitor;->isPersona(I)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get4(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get4(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    :cond_a
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get10(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedKnoxContentView:Landroid/widget/RemoteViews;

    :cond_b
    if-eqz p3, :cond_c

    invoke-virtual {p4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v7

    invoke-interface {p3, v7}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;->onAsyncInflationFinished(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    :cond_c
    const/4 v7, 0x1

    return v7

    :cond_d
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get8(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v7

    if-nez v7, :cond_2

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/NotificationContentView;->setExpandedChild(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_e
    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_f
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get9(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v7

    if-nez v7, :cond_4

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/NotificationContentView;->setHeadsUpChild(Landroid/view/View;)V

    goto/16 :goto_2

    :cond_10
    move-object v3, v5

    goto :goto_3

    :cond_11
    move-object v4, v5

    goto :goto_4

    :cond_12
    const/4 v7, 0x0

    return v7
.end method

.method private static handleInflationError(Ljava/util/HashMap;Ljava/lang/Exception;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/CancellationSignal;",
            ">;",
            "Ljava/lang/Exception;",
            "Landroid/service/notification/StatusBarNotification;",
            "Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/notification/-$Lambda$gIHVGdltksSGhu3zzApFHCkb-NE;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/-$Lambda$gIHVGdltksSGhu3zzApFHCkb-NE;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    if-eqz p3, :cond_0

    invoke-interface {p3, p2, p1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;->handleInflationException(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method private static isCustomNotification(Landroid/app/Notification;Landroid/view/View;)Z
    .locals 4

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->isDecorateNotification(Landroid/app/Notification;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x10204f2

    if-eq v2, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDecorateNotification(Landroid/app/Notification;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    invoke-virtual {p0}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/app/Notification$DecoratedCustomViewStyle;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Landroid/app/Notification$DecoratedMediaCustomViewStyle;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method static synthetic lambda$-com_android_systemui_statusbar_notification_NotificationInflater_18046(Ljava/util/HashMap;)V
    .locals 2

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/notification/-$Lambda$gIHVGdltksSGhu3zzApFHCkb-NE$1;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/-$Lambda$gIHVGdltksSGhu3zzApFHCkb-NE$1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static makeKnoxNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 10

    const v9, 0x7f1209da

    const/4 v6, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v4

    const-class v5, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v5, v4}, Lcom/android/systemui/KnoxStateMonitor;->getKnoxName(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getContext()Landroid/content/Context;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "Knox"

    aput-object v7, v6, v8

    invoke-virtual {v5, v9, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    iget-object v5, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v5

    const v6, 0x1040606

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v7, "android.showWhen"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    iget-object v5, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v5, v5, Landroid/app/Notification;->color:I

    if-eqz v5, :cond_0

    iget-object v5, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v5, v5, Landroid/app/Notification;->color:I

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    :cond_0
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v5

    return-object v5

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getContext()Landroid/content/Context;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v8

    invoke-virtual {v5, v9, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method inflateNotificationViews(ILandroid/app/Notification$Builder;Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .locals 9

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mIsLowPriority:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mIsChildInGroup:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mUsesIncreasedHeight:Z

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mUsesIncreasedHeadsUpHeight:Z

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRedactAmbient:Z

    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move v0, p1

    move-object v1, p2

    move-object v7, p3

    invoke-static/range {v0 .. v8}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->createRemoteViews(ILandroid/app/Notification$Builder;ZZZZZLandroid/content/Context;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRedactAmbient:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRemoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    const/4 v5, 0x0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->apply(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;ILcom/android/systemui/statusbar/ExpandableNotificationRow;ZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;)Landroid/os/CancellationSignal;

    return-object v0
.end method

.method public inflateNotificationViews()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->inflateNotificationViews(I)V

    return-void
.end method

.method inflateNotificationViews(I)V
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mIsLowPriority:Z

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mIsChildInGroup:Z

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mUsesIncreasedHeight:Z

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mUsesIncreasedHeadsUpHeight:Z

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRedactAmbient:Z

    iget-object v9, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    iget-object v10, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRemoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    const/4 v11, 0x0

    move v2, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;-><init>(Landroid/service/notification/StatusBarNotification;ILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZZZZLcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Landroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedAmbientContentView:Landroid/widget/RemoteViews;

    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedBigContentView:Landroid/widget/RemoteViews;

    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedContentView:Landroid/widget/RemoteViews;

    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedHeadsUpContentView:Landroid/widget/RemoteViews;

    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedPublicContentView:Landroid/widget/RemoteViews;

    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedKnoxContentView:Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->inflateNotificationViews()V

    return-void
.end method

.method public setInflationCallback(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    return-void
.end method

.method public setIsChildInGroup(Z)V
    .locals 3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mIsChildInGroup:Z

    if-eq p1, v1, :cond_1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mIsChildInGroup:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mIsLowPriority:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    const-class v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitor;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/KnoxStateMonitor;->isPersona(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x23

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->inflateNotificationViews(I)V

    :cond_1
    return-void
.end method

.method public setIsLowPriority(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mIsLowPriority:Z

    return-void
.end method

.method public setRedactAmbient(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRedactAmbient:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRedactAmbient:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->inflateNotificationViews(I)V

    :cond_1
    return-void
.end method

.method public setRemoteViewClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRemoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    return-void
.end method

.method public setUsesIncreasedHeadsUpHeight(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mUsesIncreasedHeadsUpHeight:Z

    return-void
.end method

.method public setUsesIncreasedHeight(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mUsesIncreasedHeight:Z

    return-void
.end method
