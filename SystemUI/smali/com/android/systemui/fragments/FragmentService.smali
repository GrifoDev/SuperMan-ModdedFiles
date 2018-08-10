.class public Lcom/android/systemui/fragments/FragmentService;
.super Ljava/lang/Object;
.source "FragmentService.java"

# interfaces
.implements Lcom/android/systemui/ConfigurationChangedReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/fragments/FragmentService$FragmentHostState;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHosts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Lcom/android/systemui/fragments/FragmentService$FragmentHostState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/fragments/FragmentService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/fragments/FragmentService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fragments/FragmentService;->mHosts:Landroid/util/ArrayMap;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fragments/FragmentService;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/fragments/FragmentService;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public destroyAll()V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/fragments/FragmentService;->mHosts:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;

    invoke-static {v0}, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->-get0(Lcom/android/systemui/fragments/FragmentService$FragmentHostState;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/fragments/FragmentHostManager;->destroy()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getFragmentHostManager(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/fragments/FragmentService;->mHosts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;-><init>(Lcom/android/systemui/fragments/FragmentService;Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/systemui/fragments/FragmentService;->mHosts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->getFragmentHostManager()Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v2

    return-object v2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/fragments/FragmentService;->mHosts:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->sendConfigurationChange(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_0
    return-void
.end method
