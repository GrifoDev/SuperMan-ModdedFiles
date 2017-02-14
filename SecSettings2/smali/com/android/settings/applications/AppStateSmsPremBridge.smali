.class public Lcom/android/settings/applications/AppStateSmsPremBridge;
.super Lcom/android/settings/applications/AppStateBaseBridge;
.source "AppStateSmsPremBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppStateSmsPremBridge$1;,
        Lcom/android/settings/applications/AppStateSmsPremBridge$SmsState;
    }
.end annotation


# static fields
.field public static final FILTER_APP_PREMIUM_SMS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSmsManager:Lcom/android/internal/telephony/ISms;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/applications/AppStateSmsPremBridge$1;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateSmsPremBridge$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppStateSmsPremBridge;->FILTER_APP_PREMIUM_SMS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V
    .locals 1

    invoke-direct {p0, p2, p3}, Lcom/android/settings/applications/AppStateBaseBridge;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object p1, p0, Lcom/android/settings/applications/AppStateSmsPremBridge;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "isms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppStateSmsPremBridge;->mSmsManager:Lcom/android/internal/telephony/ISms;

    return-void
.end method

.method private getSmsState(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/AppStateSmsPremBridge;->mSmsManager:Lcom/android/internal/telephony/ISms;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ISms;->getPremiumSmsPermission(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public getState(Ljava/lang/String;)Lcom/android/settings/applications/AppStateSmsPremBridge$SmsState;
    .locals 2

    new-instance v0, Lcom/android/settings/applications/AppStateSmsPremBridge$SmsState;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateSmsPremBridge$SmsState;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/settings/applications/AppStateSmsPremBridge;->getSmsState(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/settings/applications/AppStateSmsPremBridge$SmsState;->smsState:I

    return-object v0
.end method

.method protected loadAllExtraInfo()V
    .locals 6

    iget-object v4, p0, Lcom/android/settings/applications/AppStateSmsPremBridge;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

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

    iget-object v4, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v1, v4, v5}, Lcom/android/settings/applications/AppStateSmsPremBridge;->updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSmsState(Ljava/lang/String;I)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/AppStateSmsPremBridge;->mSmsManager:Lcom/android/internal/telephony/ISms;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ISms;->setPremiumSmsPermission(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/android/settings/applications/AppStateSmsPremBridge;->getState(Ljava/lang/String;)Lcom/android/settings/applications/AppStateSmsPremBridge$SmsState;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    return-void
.end method
