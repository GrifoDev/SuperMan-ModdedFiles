.class public final Lcom/android/systemui/statusbar/NotificationData$Entry;
.super Ljava/lang/Object;
.source "NotificationData.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/bixby/PluginNotificationEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field public autoRedacted:Z

.field public cachedAmbientContentView:Landroid/widget/RemoteViews;

.field public cachedBigContentView:Landroid/widget/RemoteViews;

.field public cachedContentView:Landroid/widget/RemoteViews;

.field public cachedHeadsUpContentView:Landroid/widget/RemoteViews;

.field public cachedKnoxContentView:Landroid/widget/RemoteViews;

.field public cachedPublicContentView:Landroid/widget/RemoteViews;

.field public channel:Landroid/app/NotificationChannel;

.field public expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

.field public icon:Lcom/android/systemui/statusbar/StatusBarIconView;

.field private interruption:Z

.field public isSanitizedPendingIntent:Z

.field public key:Ljava/lang/String;

.field private lastFullScreenIntentLaunchTime:J

.field private lockStarPreview:Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;

.field private mCachedContrastColor:I

.field private mCachedContrastColorIsFor:I

.field private mIsPinned:Z

.field private mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

.field public notification:Landroid/service/notification/StatusBarNotification;

.field private preview:Lcom/android/systemui/statusbar/preview/NotificationPreview;

.field public remoteInputText:Ljava/lang/CharSequence;

.field public row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field public sanitizing:I

.field public snoozeCriteria:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;"
        }
    .end annotation
.end field

.field public targetSdk:I


# direct methods
.method public constructor <init>(Landroid/service/notification/StatusBarNotification;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x7d0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->lastFullScreenIntentLaunchTime:J

    iput v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mCachedContrastColor:I

    iput v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mCachedContrastColorIsFor:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    iput v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mIsPinned:Z

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->isSanitizedPendingIntent:Z

    return-void
.end method


# virtual methods
.method public abortTask()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/InflationTask;->abort()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    :cond_0
    return-void
.end method

.method public createIcons(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/statusbar/notification/InflationException;
        }
    .end annotation

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v1, Lcom/android/systemui/statusbar/notification/InflationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No small icon in notification from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/notification/InflationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "/0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "/0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v4, v7, Landroid/app/Notification;->iconLevel:I

    iget v5, v7, Landroid/app/Notification;->number:I

    invoke-static {p1, v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->contentDescForNotification(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    :cond_1
    iput-object v8, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    iput-object v8, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    new-instance v1, Lcom/android/systemui/statusbar/notification/InflationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t create icon: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/notification/InflationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    new-instance v2, Lcom/android/systemui/statusbar/-$Lambda$lHCf4iJXJj1ODt2YAfgGVLZsSQw;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/-$Lambda$lHCf4iJXJj1ODt2YAfgGVLZsSQw;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setOnVisibilityChangedListener(Lcom/android/systemui/statusbar/StatusBarIconView$OnVisibilityChangedListener;)V

    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getContrastedColor(Landroid/content/Context;ZI)I
    .locals 4

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mCachedContrastColorIsFor:I

    if-ne v2, v1, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mCachedContrastColor:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mCachedContrastColor:I

    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v1, v2, Landroid/app/Notification;->color:I

    goto :goto_0

    :cond_1
    invoke-static {p1, v1, p3}, Lcom/android/internal/util/NotificationColorUtil;->resolveContrastColor(Landroid/content/Context;II)I

    move-result v0

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mCachedContrastColorIsFor:I

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mCachedContrastColor:I

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mCachedContrastColor:I

    return v2
.end method

.method public getEnr()Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    return-object v0
.end method

.method public bridge synthetic getEnr()Lcom/samsung/systemui/splugins/bixby/PluginExpandableNotificationRow;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getEnr()Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v0

    return-object v0
.end method

.method public getExpandedContentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getLockStarNotificationPreview()Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->lockStarPreview:Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;

    return-object v0
.end method

.method public getNotificationPreview()Lcom/android/systemui/statusbar/preview/NotificationPreview;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->preview:Lcom/android/systemui/statusbar/preview/NotificationPreview;

    return-object v0
.end method

.method public getPublicContentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPublicLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getRunningTask()Lcom/android/systemui/statusbar/InflationTask;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    return-object v0
.end method

.method public getStatusBarNotification()Landroid/service/notification/StatusBarNotification;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    return-object v0
.end method

.method public hasInterrupted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->interruption:Z

    return v0
.end method

.method public hasJustLaunchedFullScreenIntent()Z
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->lastFullScreenIntentLaunchTime:J

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPinned()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mIsPinned:Z

    return v0
.end method

.method synthetic lambda$-com_android_systemui_statusbar_NotificationData$Entry_9832(I)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconsVisible(Z)V

    :cond_1
    return-void
.end method

.method public notifyFullScreenIntentLaunched()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setInterruption()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->lastFullScreenIntentLaunchTime:J

    return-void
.end method

.method public onInflationTaskFinished()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->reset()V

    :cond_0
    return-void
.end method

.method public setIconTag(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setInflationTask(Lcom/android/systemui/statusbar/InflationTask;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationData$Entry;->abortTask()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/InflationTask;->supersedeTask(Lcom/android/systemui/statusbar/InflationTask;)V

    :cond_0
    return-void
.end method

.method public setInterruption()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->interruption:Z

    return-void
.end method

.method public setLockStarNotificationPreview(Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->lockStarPreview:Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;

    return-void
.end method

.method public setNotificationPreview(Lcom/android/systemui/statusbar/preview/NotificationPreview;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->preview:Lcom/android/systemui/statusbar/preview/NotificationPreview;

    return-void
.end method

.method public updateIcons(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/statusbar/notification/InflationException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    iget v4, v7, Landroid/app/Notification;->iconLevel:I

    iget v5, v7, Landroid/app/Notification;->number:I

    invoke-static {p1, v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->contentDescForNotification(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setNotification(Landroid/service/notification/StatusBarNotification;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setNotification(Landroid/service/notification/StatusBarNotification;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/notification/InflationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Couldn\'t update icon: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/notification/InflationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method
