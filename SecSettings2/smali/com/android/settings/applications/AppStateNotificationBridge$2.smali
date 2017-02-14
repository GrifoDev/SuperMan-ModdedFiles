.class final Lcom/android/settings/applications/AppStateNotificationBridge$2;
.super Ljava/lang/Object;
.source "AppStateNotificationBridge.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$AppFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppStateNotificationBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-nez v2, :cond_1

    :cond_0
    return v1

    :cond_1
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->appImportance:I

    if-lez v2, :cond_2

    iget v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->appImportance:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public init()V
    .locals 0

    return-void
.end method
