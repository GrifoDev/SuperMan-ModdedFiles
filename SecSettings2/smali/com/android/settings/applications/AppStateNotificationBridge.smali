.class public Lcom/android/settings/applications/AppStateNotificationBridge;
.super Lcom/android/settings/applications/AppStateBaseBridge;
.source "AppStateNotificationBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppStateNotificationBridge$1;,
        Lcom/android/settings/applications/AppStateNotificationBridge$2;,
        Lcom/android/settings/applications/AppStateNotificationBridge$3;,
        Lcom/android/settings/applications/AppStateNotificationBridge$4;,
        Lcom/android/settings/applications/AppStateNotificationBridge$5;
    }
.end annotation


# static fields
.field public static final FILTER_APP_NOTIFICATION_BLOCKED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_APP_NOTIFICATION_HIDE_ALL:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_APP_NOTIFICATION_HIDE_SENSITIVE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_APP_NOTIFICATION_PRIORITY:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_APP_NOTIFICATION_SILENCED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNotifBackend:Lcom/android/settings/notification/NotificationBackend;

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/applications/AppStateNotificationBridge$1;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateNotificationBridge$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_BLOCKED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    new-instance v0, Lcom/android/settings/applications/AppStateNotificationBridge$2;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateNotificationBridge$2;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_SILENCED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    new-instance v0, Lcom/android/settings/applications/AppStateNotificationBridge$3;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateNotificationBridge$3;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_PRIORITY:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    new-instance v0, Lcom/android/settings/applications/AppStateNotificationBridge$4;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateNotificationBridge$4;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_HIDE_SENSITIVE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    new-instance v0, Lcom/android/settings/applications/AppStateNotificationBridge$5;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateNotificationBridge$5;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_HIDE_ALL:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 1

    invoke-direct {p0, p2, p3}, Lcom/android/settings/applications/AppStateBaseBridge;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object p1, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mPm:Landroid/content/pm/PackageManager;

    iput-object p4, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mNotifBackend:Lcom/android/settings/notification/NotificationBackend;

    return-void
.end method


# virtual methods
.method protected loadAllExtraInfo()V
    .locals 7

    iget-object v4, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v4}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mNotifBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v5, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v5, v6, v1}, Lcom/android/settings/notification/NotificationBackend;->loadAppRow(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/notification/NotificationBackend$AppRow;

    move-result-object v4

    iput-object v4, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mNotifBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/notification/NotificationBackend;->loadAppRow(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/notification/NotificationBackend$AppRow;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    return-void
.end method
