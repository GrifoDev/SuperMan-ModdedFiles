.class Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
.super Lcom/samsung/android/cocktailbar/ICocktailBarStateCallback$Stub;
.source "CocktailBarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/CocktailBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CocktailBarStateListenerDelegate"
.end annotation


# static fields
.field private static final MSG_LISTEN_COCKTAIL_BAR_STATE_CHANGE:I


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final mStateChangedListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateChangedListener;

.field final synthetic this$0:Lcom/samsung/android/cocktailbar/CocktailBarManager;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;)Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->mListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;)Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->mStateChangedListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateChangedListener;

    return-object v0
.end method

.method public constructor <init>(Lcom/samsung/android/cocktailbar/CocktailBarManager;Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateChangedListener;Landroid/os/Handler;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->this$0:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarStateCallback$Stub;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->mStateChangedListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateChangedListener;

    iput-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->mListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;

    if-nez p3, :cond_0

    iget-object v1, p1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate$2;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate$2;-><init>(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->mHandler:Landroid/os/Handler;

    return-void

    :cond_0
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/samsung/android/cocktailbar/CocktailBarManager;Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;Landroid/os/Handler;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->this$0:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarStateCallback$Stub;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->mListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;

    iput-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->mStateChangedListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateChangedListener;

    if-nez p3, :cond_0

    iget-object v1, p1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate$1;-><init>(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->mHandler:Landroid/os/Handler;

    return-void

    :cond_0
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getListener()Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->mListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;

    return-object v0
.end method

.method public getStateChangedListener()Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->mStateChangedListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateChangedListener;

    return-object v0
.end method

.method public onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
