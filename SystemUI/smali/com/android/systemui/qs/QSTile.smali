.class public abstract Lcom/android/systemui/qs/QSTile;
.super Ljava/lang/Object;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSTile$AnimationIcon;,
        Lcom/android/systemui/qs/QSTile$BooleanState;,
        Lcom/android/systemui/qs/QSTile$Callback;,
        Lcom/android/systemui/qs/QSTile$DetailAdapter;,
        Lcom/android/systemui/qs/QSTile$DrawableIcon;,
        Lcom/android/systemui/qs/QSTile$H;,
        Lcom/android/systemui/qs/QSTile$Host;,
        Lcom/android/systemui/qs/QSTile$Icon;,
        Lcom/android/systemui/qs/QSTile$ResourceIcon;,
        Lcom/android/systemui/qs/QSTile$SignalState;,
        Lcom/android/systemui/qs/QSTile$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TState:",
        "Lcom/android/systemui/qs/QSTile$State;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final DEBUG:Z

.field public static final TYPE_UNLOCK_INDUCE_IN_SECURE:I = 0x1

.field public static final TYPE_UNLOCK_NONE:I


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private mAnnounceNextStateChange:Z

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/QSTile$Callback;",
            ">;"
        }
    .end annotation
.end field

.field protected final mContext:Landroid/content/Context;

.field protected final mHandler:Lcom/android/systemui/qs/QSTile$H;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<TTState;>.H;"
        }
    .end annotation
.end field

.field protected final mHost:Lcom/android/systemui/qs/QSTile$Host;

.field private final mListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mState:Lcom/android/systemui/qs/QSTile$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTState;"
        }
    .end annotation
.end field

.field private mTileSpec:Ljava/lang/String;

.field private mTmpState:Lcom/android/systemui/qs/QSTile$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTState;"
        }
    .end annotation
.end field

.field protected final mUiHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -set0(Lcom/android/systemui/qs/QSTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSTile;->mAnnounceNextStateChange:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/QSTile;Lcom/android/systemui/qs/QSTile$Callback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;->handleAddCallback(Lcom/android/systemui/qs/QSTile$Callback;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/QSTile;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;->handleDisableStateChanged(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/QSTile;Lcom/android/systemui/qs/QSTile$Callback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;->handleRemoveCallback(Lcom/android/systemui/qs/QSTile$Callback;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/qs/QSTile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSTile;->handleRemoveCallbacks()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/qs/QSTile;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;->handleScanStateChanged(Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/qs/QSTile;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;->handleShowDetail(Z)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/qs/QSTile;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;->handleToggleStateChanged(Z)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/qs/QSTile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSTile;->handleUpdateDetail()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "Tile"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/QSTile;->DEBUG:Z

    return-void
.end method

.method protected constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Tile."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTile;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSTile;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSTile;->mUiHandler:Landroid/os/Handler;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSTile;->mListeners:Landroid/util/ArraySet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSTile;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTile;->newTileState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTile;->newTileState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSTile;->mTmpState:Lcom/android/systemui/qs/QSTile$State;

    iput-object p1, p0, Lcom/android/systemui/qs/QSTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSTile;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/qs/QSTile$H;

    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/qs/QSTile$H;-><init>(Lcom/android/systemui/qs/QSTile;Landroid/os/Looper;Lcom/android/systemui/qs/QSTile$H;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    return-void
.end method

.method private handleAddCallback(Lcom/android/systemui/qs/QSTile$Callback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    invoke-interface {p1, v0}, Lcom/android/systemui/qs/QSTile$Callback;->onStateChanged(Lcom/android/systemui/qs/QSTile$State;)V

    return-void
.end method

.method private handleDisableStateChanged(Z)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSTile;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSTile;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSTile$Callback;

    invoke-interface {v1, p1}, Lcom/android/systemui/qs/QSTile$Callback;->onDisableStateChanged(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleRemoveCallback(Lcom/android/systemui/qs/QSTile$Callback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private handleRemoveCallbacks()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private handleScanStateChanged(Z)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSTile;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSTile;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSTile$Callback;

    invoke-interface {v1, p1}, Lcom/android/systemui/qs/QSTile$Callback;->onScanStateChanged(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleShowDetail(Z)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSTile;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSTile;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSTile$Callback;

    invoke-interface {v1, p1}, Lcom/android/systemui/qs/QSTile$Callback;->onShowDetail(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleStateChanged()V
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTile;->shouldAnnouncementBeDelayed()Z

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/qs/QSTile;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/QSTile;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/QSTile;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSTile$Callback;

    iget-object v5, p0, Lcom/android/systemui/qs/QSTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    invoke-interface {v3, v5}, Lcom/android/systemui/qs/QSTile$Callback;->onStateChanged(Lcom/android/systemui/qs/QSTile$State;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/qs/QSTile;->mAnnounceNextStateChange:Z

    if-eqz v3, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    :goto_1
    iget-boolean v3, p0, Lcom/android/systemui/qs/QSTile;->mAnnounceNextStateChange:Z

    if-eqz v3, :cond_3

    :goto_2
    iput-boolean v1, p0, Lcom/android/systemui/qs/QSTile;->mAnnounceNextStateChange:Z

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTile;->composeChangeAnnouncement()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/QSTile;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSTile$Callback;

    invoke-interface {v3, v0}, Lcom/android/systemui/qs/QSTile$Callback;->onAnnouncementRequested(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    move v1, v4

    goto :goto_2
.end method

.method private handleToggleStateChanged(Z)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSTile;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSTile;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSTile$Callback;

    invoke-interface {v1, p1}, Lcom/android/systemui/qs/QSTile$Callback;->onToggleStateChanged(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleUpdateDetail()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSTile;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSTile;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSTile$Callback;

    invoke-interface {v1}, Lcom/android/systemui/qs/QSTile$Callback;->onUpdateDetail()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/qs/QSTile$Callback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/qs/QSTile$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/QSTile;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-static {v1, p2, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSTile;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-static {v1, p2, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$State;->disabledByPolicy:Z

    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$State;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$State;->disabledByPolicy:Z

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$State;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    goto :goto_0
.end method

.method public final clearState()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTile$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public click()V
    .locals 7

    const/4 v6, 0x0

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_GSIM_LOG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$State;->isCustomTile:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.android.systemui.statusbar.policy.quicksetting"

    const-string/jumbo v2, "QP06"

    iget-object v3, p0, Lcom/android/systemui/qs/QSTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    iget-object v3, v3, Lcom/android/systemui/qs/QSTile$State;->tileClassName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v6}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTile$H;->sendEmptyMessage(I)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.android.systemui.statusbar.policy.quicksetting"

    const-string/jumbo v2, "QP06"

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTile;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Tile"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, v6}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSTile;->composeChangeAnnouncement(Lcom/android/systemui/qs/QSTile$BooleanState;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected composeChangeAnnouncement(Lcom/android/systemui/qs/QSTile$BooleanState;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f02cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f02ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public createTileView(Landroid/content/Context;)Lcom/android/systemui/qs/QSIconView;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/QSIconView;

    invoke-direct {v0, p1}, Lcom/android/systemui/qs/QSIconView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTile$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public fireDisableStateChanged(Z)V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v3, 0xf

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/systemui/qs/QSTile$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public fireScanStateChanged(Z)V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v3, 0x9

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/systemui/qs/QSTile$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public fireToggleStateChanged(Z)V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v3, 0x8

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/systemui/qs/QSTile$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getDetailAdapter()Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHost()Lcom/android/systemui/qs/QSTile$Host;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    return-object v0
.end method

.method public abstract getLongClickIntent()Landroid/content/Intent;
.end method

.method public abstract getMetricsCategory()I
.end method

.method public getState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTState;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method public abstract getTileLabel()Ljava/lang/CharSequence;
.end method

.method public getTileSpec()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mTileSpec:Ljava/lang/String;

    return-object v0
.end method

.method public getUnlockTypeInSecure()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected handleClearState()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTile;->newTileState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSTile;->mTmpState:Lcom/android/systemui/qs/QSTile$State;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTile;->newTileState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-void
.end method

.method protected abstract handleClick()V
.end method

.method protected handleDestroy()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSTile;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected handleLongClick()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/qs/QSTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x16e

    invoke-static {v1, v3, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTile;->getLongClickIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1, v0}, Lcom/android/systemui/qs/QSTile$Host;->startActivityDismissingKeyguard(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected handleRefreshState(Ljava/lang/Object;)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/qs/QSTile;->mTmpState:Lcom/android/systemui/qs/QSTile$State;

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/qs/QSTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSTile;->mTmpState:Lcom/android/systemui/qs/QSTile$State;

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSTile$State;->copyTo(Lcom/android/systemui/qs/QSTile$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSTile;->handleStateChanged()V

    :cond_0
    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTile;->getDetailAdapter()Lcom/android/systemui/qs/QSTile$DetailAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$State;->disabledByPolicy:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSTile;->showDetail(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTile;->handleClick()V

    goto :goto_0
.end method

.method protected abstract handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTState;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method protected handleUserSwitch(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSTile;->handleRefreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSTile$Host;->shouldBeHiddenByKnox(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public longClick()V
    .locals 7

    const/4 v6, 0x0

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_GSIM_LOG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$State;->isCustomTile:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.android.systemui.statusbar.policy.quicksetting"

    const-string/jumbo v2, "QS03"

    iget-object v3, p0, Lcom/android/systemui/qs/QSTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    iget-object v3, v3, Lcom/android/systemui/qs/QSTile$State;->tileClassName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v6}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTile$H;->sendEmptyMessage(I)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.android.systemui.statusbar.policy.quicksetting"

    const-string/jumbo v2, "QS03"

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTile;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Tile"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, v6}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public abstract newTileState()Lcom/android/systemui/qs/QSTile$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTState;"
        }
    .end annotation
.end method

.method public final refreshState()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method protected final refreshState(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/qs/QSTile$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public removeCallback(Lcom/android/systemui/qs/QSTile$Callback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/qs/QSTile$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public removeCallbacks()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTile$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public secondaryClick()V
    .locals 7

    const/4 v6, 0x0

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_GSIM_LOG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$State;->isCustomTile:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.android.systemui.statusbar.policy.quicksetting"

    const-string/jumbo v2, "QP12"

    iget-object v3, p0, Lcom/android/systemui/qs/QSTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    iget-object v3, v3, Lcom/android/systemui/qs/QSTile$State;->tileClassName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v6}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTile$H;->sendEmptyMessage(I)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.android.systemui.statusbar.policy.quicksetting"

    const-string/jumbo v2, "QP12"

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTile;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Tile"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, v6}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public setDetailListening(Z)V
    .locals 0

    return-void
.end method

.method public setDialogWindowType(Landroid/app/AlertDialog;)V
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/qs/QSTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v3}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v1

    :goto_0
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTile;->getUnlockTypeInSecure()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d8

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setListening(Ljava/lang/Object;Z)V
    .locals 5

    const/16 v4, 0xe

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ne v0, v3, :cond_1

    sget-boolean v0, Lcom/android/systemui/qs/QSTile;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setListening true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    invoke-virtual {v0, v4, v3, v2}, Lcom/android/systemui/qs/QSTile$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/qs/QSTile;->DEBUG:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setListening false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    invoke-virtual {v0, v4, v2, v2}, Lcom/android/systemui/qs/QSTile$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method protected abstract setListening(Z)V
.end method

.method public setTileSpec(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSTile;->mTileSpec:Ljava/lang/String;

    return-void
.end method

.method protected shouldAnnouncementBeDelayed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showDetail(Z)V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x6

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/systemui/qs/QSTile$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected showItPolicyToast()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSTile;->showItPolicyToast(I)V

    return-void
.end method

.method protected showItPolicyToast(I)V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/QSTile;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    aput-object v1, v4, v5

    const v1, 0x7f0f03d5

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->setShowForAllUsers()V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public updateDetail()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/systemui/qs/QSTile$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public userSwitch(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/systemui/qs/QSTile$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
