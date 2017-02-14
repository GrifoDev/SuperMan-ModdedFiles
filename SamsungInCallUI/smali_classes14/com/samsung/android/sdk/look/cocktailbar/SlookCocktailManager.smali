.class public final Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
.super Ljava/lang/Object;
.source "SlookCocktailManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;,
        Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsInfo;,
        Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsListenerWrapper;,
        Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$OnFeedUpdatedListener;,
        Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$OnStateChangeListener;,
        Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$StateChangeListenerWrapper;,
        Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$States;
    }
.end annotation


# static fields
.field public static final COCKTAIL_CATEGORY_CONTEXTUAL:I = 0x10000

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_CALLING:I = 0x10002

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_COMMAND:I = 0x10007

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_HEADSET:I = 0x10005

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_INCOMING_CALL:I = 0x10001

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_NOTIFICATION:I = 0x10004

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_SPEN:I = 0x10006

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_TICKER:I = 0x10003

.field public static final COCKTAIL_CATEGORY_GLOBAL:I = 0x1

.field public static final COCKTAIL_DISPLAY_POLICY_ALL:I = 0x9f

.field public static final COCKTAIL_DISPLAY_POLICY_GENERAL:I = 0x1

.field public static final COCKTAIL_DISPLAY_POLICY_INDEX_MODE:I = 0x10

.field public static final COCKTAIL_DISPLAY_POLICY_LOCKSCREEN:I = 0x2

.field public static final COCKTAIL_DISPLAY_POLICY_NOT_PROVISION:I = 0x80

.field public static final COCKTAIL_DISPLAY_POLICY_SCOVER:I = 0x4

.field public static final COCKTAIL_DISPLAY_POLICY_TABLE_MODE:I = 0x8

.field public static final COCKTAIL_VISIBILITY_HIDE:I = 0x2

.field public static final COCKTAIL_VISIBILITY_SHOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SlookCocktailManager"

.field static sManagerCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

.field private mFeedsUpdatedListenerWrapper:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsListenerWrapper;

.field private mSlook:Lcom/samsung/android/sdk/look/Slook;

.field private mStateChangeListenerWrapper:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$StateChangeListenerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->sManagerCache:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/look/Slook;

    invoke-direct {v0}, Lcom/samsung/android/sdk/look/Slook;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
    .locals 6

    sget-object v4, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->sManagerCache:Ljava/util/WeakHashMap;

    monitor-enter v4

    if-nez p0, :cond_0

    :try_start_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "context is null."

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    instance-of v3, p0, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/content/ContextWrapper;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "Base context is null."

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    sget-object v3, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->sManagerCache:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;

    :cond_2
    if-nez v2, :cond_3

    new-instance v2, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->sManagerCache:Ljava/util/WeakHashMap;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, p0, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method


# virtual methods
.method public closeCocktail(II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->closeCocktail(II)V

    :cond_0
    return-void
.end method

.method public disableCocktail(Landroid/content/ComponentName;)V
    .locals 3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->disableCocktail(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0
.end method

.method public getCocktailBarWindowType()I
    .locals 3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getCocktailBarWindowType()I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCocktailIds(Landroid/content/ComponentName;)[I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getCocktailIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [I

    goto :goto_0
.end method

.method public isEnabledCocktail(Landroid/content/ComponentName;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->isEnabledCocktail(Landroid/content/ComponentName;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyCocktailViewDataChanged(II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->notifyCocktailViewDataChanged(II)V

    :cond_0
    return-void
.end method

.method public partiallyUpdateCocktail(ILandroid/widget/RemoteViews;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "contentView is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->partiallyUpdateCocktail(ILandroid/widget/RemoteViews;)V

    :cond_1
    return-void
.end method

.method public setCocktailBarStatus(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->setCocktailBarStatus(ZZ)V

    :cond_0
    return-void
.end method

.method public setLongPressEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->updateLongpressGesture(Z)V

    :cond_0
    return-void
.end method

.method public setOnFeedUpdatedListener(Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$OnFeedUpdatedListener;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mFeedsUpdatedListenerWrapper:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsListenerWrapper;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsListenerWrapper;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsListenerWrapper;-><init>(Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$OnFeedUpdatedListener;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mFeedsUpdatedListenerWrapper:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsListenerWrapper;

    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mFeedsUpdatedListenerWrapper:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsListenerWrapper;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->registerOnFeedsUpdatedListener(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mFeedsUpdatedListenerWrapper:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsListenerWrapper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsListenerWrapper;->setOnFeedsUpdatedListener(Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$OnFeedUpdatedListener;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mFeedsUpdatedListenerWrapper:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsListenerWrapper;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->unregisterOnFeedsUpdatedListener(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mFeedsUpdatedListenerWrapper:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsListenerWrapper;

    goto :goto_0
.end method

.method public setOnStateChangeListener(Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$OnStateChangeListener;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mStateChangeListenerWrapper:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$StateChangeListenerWrapper;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$StateChangeListenerWrapper;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$StateChangeListenerWrapper;-><init>(Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$OnStateChangeListener;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mStateChangeListenerWrapper:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$StateChangeListenerWrapper;

    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mStateChangeListenerWrapper:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$StateChangeListenerWrapper;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->registerListener(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mStateChangeListenerWrapper:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$StateChangeListenerWrapper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$StateChangeListenerWrapper;->setOnStateChangeListener(Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$OnStateChangeListener;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mStateChangeListenerWrapper:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$StateChangeListenerWrapper;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->unregisterListener(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mStateChangeListenerWrapper:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$StateChangeListenerWrapper;

    goto :goto_0
.end method

.method public showCocktail(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->showCocktail(I)V

    :cond_0
    return-void
.end method

.method public updateCocktail(ILcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CocktailInfo is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    # getter for: Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->mDisplayPolicy:I
    invoke-static {p2}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->access$1(Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;)I

    move-result v2

    # getter for: Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->mCategory:I
    invoke-static {p2}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->access$2(Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;)I

    move-result v3

    # getter for: Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->mContentView:Landroid/widget/RemoteViews;
    invoke-static {p2}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->access$3(Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;)Landroid/widget/RemoteViews;

    move-result-object v4

    # getter for: Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->mHelpView:Landroid/widget/RemoteViews;
    invoke-static {p2}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->access$4(Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;)Landroid/widget/RemoteViews;

    move-result-object v5

    # getter for: Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->mContentInfo:Landroid/os/Bundle;
    invoke-static {p2}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->access$5(Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;)Landroid/os/Bundle;

    move-result-object v6

    # getter for: Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->mClassInfo:Landroid/content/ComponentName;
    invoke-static {p2}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->access$6(Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;)Landroid/content/ComponentName;

    move-result-object v7

    move v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->updateCocktail(IIILandroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/os/Bundle;Landroid/content/ComponentName;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    # getter for: Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->mDisplayPolicy:I
    invoke-static {p2}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->access$1(Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;)I

    move-result v2

    # getter for: Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->mCategory:I
    invoke-static {p2}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->access$2(Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;)I

    move-result v3

    # getter for: Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->mContentView:Landroid/widget/RemoteViews;
    invoke-static {p2}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->access$3(Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;)Landroid/widget/RemoteViews;

    move-result-object v4

    # getter for: Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->mContentInfo:Landroid/os/Bundle;
    invoke-static {p2}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->access$5(Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;)Landroid/os/Bundle;

    move-result-object v5

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->updateCocktail(IIILandroid/widget/RemoteViews;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public updateFeeds(ILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v3, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    invoke-virtual {v3, p1, v0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->updateFeeds(ILjava/util/List;)V

    :cond_0
    return-void

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsInfo;

    new-instance v4, Lcom/samsung/android/cocktailbar/FeedsInfo$Builder;

    iget-object v5, v2, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsInfo;->feedsText:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    invoke-virtual {v6}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/cocktailbar/FeedsInfo$Builder;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    iget v5, v2, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsInfo;->icon:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/cocktailbar/FeedsInfo$Builder;->setIcon(I)Lcom/samsung/android/cocktailbar/FeedsInfo$Builder;

    move-result-object v4

    iget-object v5, v2, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsInfo;->largeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Lcom/samsung/android/cocktailbar/FeedsInfo$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Lcom/samsung/android/cocktailbar/FeedsInfo$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/cocktailbar/FeedsInfo$Builder;->build()Lcom/samsung/android/cocktailbar/FeedsInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
