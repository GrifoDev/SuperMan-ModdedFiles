.class public Lcom/android/incallui/CallOrgInfoController;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallOrgInfoController$SecCallOrgInfoListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CallOrgInfoController"

.field private static sMe:Lcom/android/incallui/CallOrgInfoController;


# instance fields
.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/CallOrgInfoController$SecCallOrgInfoListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/incallui/CallOrgInfoController;

    invoke-direct {v0}, Lcom/android/incallui/CallOrgInfoController;-><init>()V

    sput-object v0, Lcom/android/incallui/CallOrgInfoController;->sMe:Lcom/android/incallui/CallOrgInfoController;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/CallOrgInfoController;->mListeners:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/android/incallui/CallOrgInfoController;
    .locals 1

    sget-object v0, Lcom/android/incallui/CallOrgInfoController;->sMe:Lcom/android/incallui/CallOrgInfoController;

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/android/incallui/CallOrgInfoController$SecCallOrgInfoListener;)V
    .locals 3

    invoke-static {p1}, Lcom/google/a/a/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/CallOrgInfoController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallOrgInfoController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callOrgInfo:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/incallui/CallOrgInfoController$SecCallOrgInfoListener;->onSecCallOrgInfoQueryComplete(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public notifyListenersOfOrgInfoQueryComplete(Ljava/lang/String;)V
    .locals 3

    const-string v0, "CallOrgInfoController"

    const-string v1, "notifyListenersOfOrgInfoQueryComplete"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/CallOrgInfoController;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallOrgInfoController$SecCallOrgInfoListener;

    invoke-interface {v0, p1}, Lcom/android/incallui/CallOrgInfoController$SecCallOrgInfoListener;->onSecCallOrgInfoQueryComplete(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeListener(Lcom/android/incallui/CallOrgInfoController$SecCallOrgInfoListener;)V
    .locals 1

    invoke-static {p1}, Lcom/google/a/a/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/CallOrgInfoController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public tearDown()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallOrgInfoController;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/CallOrgInfoController;->sMe:Lcom/android/incallui/CallOrgInfoController;

    return-void
.end method
