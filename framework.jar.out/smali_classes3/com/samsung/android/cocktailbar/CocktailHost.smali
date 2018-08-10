.class public Lcom/samsung/android/cocktailbar/CocktailHost;
.super Ljava/lang/Object;
.source "CocktailHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;,
        Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;,
        Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;
    }
.end annotation


# static fields
.field static final HANDLE_COCKTAIL_CLOSE:I = 0x5

.field static final HANDLE_COCKTAIL_PARTIALLY_UPDATE:I = 0x2

.field static final HANDLE_COCKTAIL_PARTIALLY_UPDATE_HELPVIEW:I = 0xe

.field static final HANDLE_COCKTAIL_REMOVE:I = 0x3

.field static final HANDLE_COCKTAIL_SEND_EXTRA_DATA:I = 0xc

.field static final HANDLE_COCKTAIL_SET_PULL_TO_REFRESH:I = 0xd

.field static final HANDLE_COCKTAIL_SHOW:I = 0x4

.field static final HANDLE_COCKTAIL_SWITCH_DEFAULT:I = 0xa

.field static final HANDLE_COCKTAIL_TICKER_DISABLE:I = 0x9

.field static final HANDLE_COCKTAIL_UPDATE:I = 0x1

.field static final HANDLE_COCKTAIL_UPDATE_EXTRA:I = 0x8

.field static final HANDLE_COCKTAIL_UPDATE_TOOL_LAUNCHER:I = 0x7

.field static final HANDLE_COCKTAIL_VIEW_DATA_CHANGED:I = 0x6

.field static final HANDLE_NOTIFY_CHANGE_VISIBLE_EDGE_SERVICE:I = 0x66

.field static final HANDLE_NOTIFY_KEYGUARD_STATE:I = 0x64

.field static final HANDLE_NOTIFY_WAKEUP_STATE:I = 0x65

.field private static final TAG:Ljava/lang/String;

.field static sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

.field static final sServiceLock:Ljava/lang/Object;


# instance fields
.field mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

.field private final mCallbacks:Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;

.field private mContextOpPackageName:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mListeningCategory:I


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/cocktailbar/CocktailHost;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost;->changeVisibleEdgeService(II)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/cocktailbar/CocktailHost;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost;->closeCocktail(III)V

    return-void
.end method

.method static synthetic -wrap10(Lcom/samsung/android/cocktailbar/CocktailHost;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost;->showCocktail(II)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/samsung/android/cocktailbar/CocktailHost;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/cocktailbar/CocktailHost;->switchDefaultCocktail(I)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/samsung/android/cocktailbar/CocktailHost;ILcom/samsung/android/cocktailbar/Cocktail;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost;->updateCocktail(ILcom/samsung/android/cocktailbar/Cocktail;I)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/samsung/android/cocktailbar/CocktailHost;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/cocktailbar/CocktailHost;->updateToolLauncher(I)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/samsung/android/cocktailbar/CocktailHost;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost;->viewDataChanged(III)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/cocktailbar/CocktailHost;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost;->notifyKeyguardState(II)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/cocktailbar/CocktailHost;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost;->notifyWakeUpState(III)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/cocktailbar/CocktailHost;ILandroid/widget/RemoteViews;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost;->partiallyUpdateCocktail(ILandroid/widget/RemoteViews;I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/cocktailbar/CocktailHost;ILandroid/widget/RemoteViews;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost;->partiallyUpdateHelpView(ILandroid/widget/RemoteViews;I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/cocktailbar/CocktailHost;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost;->removeCocktail(II)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/cocktailbar/CocktailHost;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost;->sendExtraDataToCocktailBar(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/samsung/android/cocktailbar/CocktailHost;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost;->setDisableTickerView(II)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/samsung/android/cocktailbar/CocktailHost;IILandroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost;->setPullToRefresh(IILandroid/app/PendingIntent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/cocktailbar/CocktailHost;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cocktailbar/CocktailHost;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/cocktailbar/CocktailHost;->sServiceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/cocktailbar/CocktailHost;-><init>(Landroid/content/Context;ILcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mListeningCategory:I

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mContextOpPackageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;

    invoke-direct {v0, p0, p4}, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;-><init>(Lcom/samsung/android/cocktailbar/CocktailHost;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbacks:Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;

    iput p2, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mListeningCategory:I

    invoke-direct {p0, p2}, Lcom/samsung/android/cocktailbar/CocktailHost;->bindService(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/cocktailbar/CocktailHost;-><init>(Landroid/content/Context;Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;Landroid/os/Looper;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mListeningCategory:I

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mContextOpPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;

    invoke-direct {v0, p0, p3}, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;-><init>(Lcom/samsung/android/cocktailbar/CocktailHost;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbacks:Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;

    invoke-direct {p0, v2}, Lcom/samsung/android/cocktailbar/CocktailHost;->bindService(I)V

    return-void
.end method

.method private bindService(I)V
    .locals 6

    sget-object v3, Lcom/samsung/android/cocktailbar/CocktailHost;->sServiceLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/samsung/android/cocktailbar/CocktailHost;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v2, :cond_0

    const-string/jumbo v2, "CocktailBarService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/cocktailbar/CocktailHost;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    sget-object v2, Lcom/samsung/android/cocktailbar/CocktailHost;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/samsung/android/cocktailbar/CocktailHost;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbacks:Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;

    iget-object v5, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mContextOpPackageName:Ljava/lang/String;

    invoke-interface {v2, v4, v5, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->setCocktailHostCallbacks(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v3

    return-void

    :cond_1
    :try_start_2
    sget-object v2, Lcom/samsung/android/cocktailbar/CocktailHost;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "bindService: can not get ICocktailBarService"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private changeVisibleEdgeService(II)V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-interface {v1, v0, p2}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onChangeVisibleEdgeService(ZI)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private closeCocktail(III)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onCloseCocktail(III)V

    return-void
.end method

.method private notifyKeyguardState(II)V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-interface {v1, v0, p2}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onNotifyKeyguardState(ZI)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyWakeUpState(III)V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-interface {v1, v0, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onNotifyWakeUpModeState(ZII)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private partiallyUpdateCocktail(ILandroid/widget/RemoteViews;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onPartiallyUpdateCocktail(ILandroid/widget/RemoteViews;I)V

    return-void
.end method

.method private partiallyUpdateHelpView(ILandroid/widget/RemoteViews;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onPartiallyUpdateHelpView(ILandroid/widget/RemoteViews;I)V

    return-void
.end method

.method private removeCocktail(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onRemoveCocktail(II)V

    return-void
.end method

.method private sendExtraDataToCocktailBar(ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p2, p1}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onSendExtraDataToCocktailBar(Landroid/os/Bundle;I)V

    return-void
.end method

.method private setDisableTickerView(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onSetDisableTickerView(II)V

    return-void
.end method

.method private setPullToRefresh(IILandroid/app/PendingIntent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onSetPullToRefresh(IILandroid/app/PendingIntent;)V

    return-void
.end method

.method private showCocktail(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onShowCocktail(II)V

    return-void
.end method

.method private switchDefaultCocktail(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onSwitchDefaultCocktail(I)V

    return-void
.end method

.method private updateCocktail(ILcom/samsung/android/cocktailbar/Cocktail;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onUpdateCocktail(ILcom/samsung/android/cocktailbar/Cocktail;I)V

    return-void
.end method

.method private updateToolLauncher(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onUpdateToolLauncher(I)V

    return-void
.end method

.method private viewDataChanged(III)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onViewDataChanged(III)V

    return-void
.end method


# virtual methods
.method public startListening()V
    .locals 5

    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailHost;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbacks:Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;

    iget-object v3, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mContextOpPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mListeningCategory:I

    invoke-interface {v1, v2, v3, v4}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->startListening(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startListening(I)V
    .locals 4

    :try_start_0
    iput p1, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mListeningCategory:I

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailHost;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbacks:Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;

    iget-object v3, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mContextOpPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->startListening(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public stopListening()V
    .locals 3

    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailHost;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mContextOpPackageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->stopListening(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
