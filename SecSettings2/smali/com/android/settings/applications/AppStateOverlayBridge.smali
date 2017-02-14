.class public Lcom/android/settings/applications/AppStateOverlayBridge;
.super Lcom/android/settings/applications/AppStateAppOpsBridge;
.source "AppStateOverlayBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppStateOverlayBridge$1;,
        Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;
    }
.end annotation


# static fields
.field public static final FILTER_SYSTEM_ALERT_WINDOW:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field private static final PM_PERMISSION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.SYSTEM_ALERT_WINDOW"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/applications/AppStateOverlayBridge;->PM_PERMISSION:[Ljava/lang/String;

    new-instance v0, Lcom/android/settings/applications/AppStateOverlayBridge$1;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateOverlayBridge$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppStateOverlayBridge;->FILTER_SYSTEM_ALERT_WINDOW:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V
    .locals 6

    sget-object v5, Lcom/android/settings/applications/AppStateOverlayBridge;->PM_PERMISSION:[Ljava/lang/String;

    const/16 v4, 0x18

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/AppStateAppOpsBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;I[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getOverlayInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/settings/applications/AppStateAppOpsBridge;->getPermissionInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    move-result-object v0

    new-instance v1, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    invoke-direct {v1, v0}, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;-><init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V

    return-object v1
.end method

.method protected updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p0, p2, p3}, Lcom/android/settings/applications/AppStateOverlayBridge;->getOverlayInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    return-void
.end method
