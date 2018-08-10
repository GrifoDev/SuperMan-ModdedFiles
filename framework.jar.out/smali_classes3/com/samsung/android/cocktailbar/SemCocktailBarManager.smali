.class public Lcom/samsung/android/cocktailbar/SemCocktailBarManager;
.super Ljava/lang/Object;
.source "SemCocktailBarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;
    }
.end annotation


# static fields
.field public static final COCKTAIL_CATEGORY_CONTEXTUAL:I = 0x10000

.field public static final COCKTAIL_CATEGORY_GLOBAL:I = 0x1

.field public static final COCKTAIL_DISPLAY_POLICY_ALL:I = 0x8f

.field public static final COCKTAIL_DISPLAY_POLICY_GENERAL:I = 0x1

.field public static final COCKTAIL_DISPLAY_POLICY_LOCKSCREEN:I = 0x2

.field public static final COCKTAIL_DISPLAY_POLICY_NOT_PROVISION:I = 0x80

.field public static final COCKTAIL_DISPLAY_POLICY_SCOVER:I = 0x4

.field public static final COCKTAIL_DISPLAY_POLICY_TABLE_MODE:I = 0x8

.field public static final COCKTAIL_VISIBILITY_HIDE:I = 0x2

.field public static final COCKTAIL_VISIBILITY_SHOW:I = 0x1

.field public static final INVALID_COCKTAIL_ID:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected final mPackageName:Ljava/lang/String;

.field protected mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/cocktailbar/ICocktailBarService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/SemCocktailBarManager;
    .locals 1

    const-string/jumbo v0, "CocktailBarService"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    return-object v0
.end method

.method private getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    const-string/jumbo v1, "CocktailBarService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    return-object v1
.end method


# virtual methods
.method public closeCocktail(I)V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mPackageName:Ljava/lang/String;

    const/high16 v3, 0x10000

    invoke-interface {v1, v2, p1, v3}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->closeCocktail(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public disableCocktail(Landroid/content/ComponentName;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->disableCocktail(Ljava/lang/String;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCocktailBarWindowType()I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getCocktailBarStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCocktailIds(Landroid/content/ComponentName;)[I
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v2, 0x1

    new-array v0, v2, [I

    aput v3, v0, v3

    return-object v0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v3, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getCocktailIds(Ljava/lang/String;Landroid/content/ComponentName;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "CocktailBarService dead?"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public isCocktailEnabled(Landroid/content/ComponentName;)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->isEnabledCocktail(Ljava/lang/String;Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isCocktailEnabledInternal(Landroid/content/ComponentName;)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->isCocktailEnabled(Ljava/lang/String;Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public notifyCocktailViewDataChanged(II)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->notifyCocktailViewDataChanged(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public registerStateListener(Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "resitered SemCocktailManager"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showCocktail(I)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->showCocktail(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unregisterStateListener(Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "resitered SemCocktailManager"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateCocktail(IIILandroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 6

    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateCocktail : service is not running "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    :try_start_0
    new-instance v3, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    iget-object v4, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;-><init>(Landroid/content/Context;)V

    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setOrientation(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setDiplayPolicy(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setCategory(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p4}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setContentView(Landroid/widget/RemoteViews;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p5}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setHelpView(Landroid/widget/RemoteViews;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->build()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v4, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v4, v0, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateCocktail(Ljava/lang/String;Lcom/samsung/android/cocktailbar/CocktailInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "CocktailBarService dead?"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public updateCocktail(IIILjava/lang/Class;Landroid/os/Bundle;Landroid/widget/RemoteViews;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/Class",
            "<+",
            "Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroid/widget/RemoteViews;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateCocktail : service is not running "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4, p4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v4, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    :try_start_0
    new-instance v4, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    iget-object v5, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;-><init>(Landroid/content/Context;)V

    iget v5, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setOrientation(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setDiplayPolicy(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setCategory(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v4

    invoke-virtual {v4, p6}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setHelpView(Landroid/widget/RemoteViews;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v4

    invoke-virtual {v4, p5}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setContentInfo(Landroid/os/Bundle;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setClassloader(Landroid/content/ComponentName;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->build()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v5, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v4, v5, v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateCocktail(Ljava/lang/String;Lcom/samsung/android/cocktailbar/CocktailInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "CocktailBarService dead?"

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public updateCocktailHelpView(ILandroid/widget/RemoteViews;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p2, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->partiallyUpdateHelpView(Ljava/lang/String;Landroid/widget/RemoteViews;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateCocktailView(ILandroid/widget/RemoteViews;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p2, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->partiallyUpdateCocktail(Ljava/lang/String;Landroid/widget/RemoteViews;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
