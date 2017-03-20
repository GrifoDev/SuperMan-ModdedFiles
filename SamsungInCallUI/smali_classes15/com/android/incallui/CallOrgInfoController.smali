.class public Lcom/android/incallui/CallOrgInfoController;
.super Ljava/lang/Object;
.source "CallOrgInfoController.java"


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

    .prologue
    .line 28
    new-instance v0, Lcom/android/incallui/CallOrgInfoController;

    invoke-direct {v0}, Lcom/android/incallui/CallOrgInfoController;-><init>()V

    sput-object v0, Lcom/android/incallui/CallOrgInfoController;->sMe:Lcom/android/incallui/CallOrgInfoController;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/CallOrgInfoController;->mListeners:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/android/incallui/CallOrgInfoController;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/incallui/CallOrgInfoController;->sMe:Lcom/android/incallui/CallOrgInfoController;

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/android/incallui/CallOrgInfoController$SecCallOrgInfoListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/android/incallui/CallOrgInfoController$SecCallOrgInfoListener;

    .prologue
    .line 36
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v3, p0, Lcom/android/incallui/CallOrgInfoController;->mListeners:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 38
    iget-object v3, p0, Lcom/android/incallui/CallOrgInfoController;->mListeners:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    .line 40
    .local v1, "callList":Lcom/android/incallui/CallList;
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 41
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 42
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    .line 43
    .local v2, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callOrgInfo:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 44
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/incallui/CallOrgInfoController$SecCallOrgInfoListener;->onSecCallOrgInfoQueryComplete(Ljava/lang/String;)V

    .line 48
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v1    # "callList":Lcom/android/incallui/CallList;
    .end local v2    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_0
    return-void
.end method

.method public notifyListenersOfOrgInfoQueryComplete(Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 61
    const-string v1, "CallOrgInfoController"

    const-string v2, "notifyListenersOfOrgInfoQueryComplete"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 62
    iget-object v1, p0, Lcom/android/incallui/CallOrgInfoController;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallOrgInfoController$SecCallOrgInfoListener;

    .line 63
    .local v0, "listener":Lcom/android/incallui/CallOrgInfoController$SecCallOrgInfoListener;
    invoke-interface {v0, p1}, Lcom/android/incallui/CallOrgInfoController$SecCallOrgInfoListener;->onSecCallOrgInfoQueryComplete(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    .end local v0    # "listener":Lcom/android/incallui/CallOrgInfoController$SecCallOrgInfoListener;
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/android/incallui/CallOrgInfoController$SecCallOrgInfoListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/CallOrgInfoController$SecCallOrgInfoListener;

    .prologue
    .line 51
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/android/incallui/CallOrgInfoController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public tearDown()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/incallui/CallOrgInfoController;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/CallOrgInfoController;->sMe:Lcom/android/incallui/CallOrgInfoController;

    .line 58
    return-void
.end method
