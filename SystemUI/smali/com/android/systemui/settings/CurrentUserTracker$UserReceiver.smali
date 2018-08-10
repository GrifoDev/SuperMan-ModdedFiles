.class Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CurrentUserTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/CurrentUserTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UserReceiver"
.end annotation


# static fields
.field private static sInstance:Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCurrentUserId:I

.field private mReceiverRegistered:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->addTracker(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->removeTracker(Ljava/util/function/Consumer;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mCallbacks:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mAppContext:Landroid/content/Context;

    return-void
.end method

.method private addTracker(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mReceiverRegistered:Z

    if-nez v1, :cond_1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mCurrentUserId:I

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mReceiverRegistered:Z

    :cond_1
    return-void
.end method

.method static getInstance(Landroid/content/Context;)Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;
    .locals 1

    sget-object v0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->sInstance:Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->sInstance:Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;

    :cond_0
    sget-object v0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->sInstance:Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;

    return-object v0
.end method

.method private notifyUserSwitched(I)V
    .locals 4

    iget v3, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mCurrentUserId:I

    if-eq v3, p1, :cond_1

    iput p1, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mCurrentUserId:I

    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mCallbacks:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Consumer;

    iget-object v3, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mCallbacks:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removeTracker(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v1, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mReceiverRegistered:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentUserId()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mCurrentUserId:I

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "android.intent.extra.user_handle"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->notifyUserSwitched(I)V

    :cond_0
    return-void
.end method
