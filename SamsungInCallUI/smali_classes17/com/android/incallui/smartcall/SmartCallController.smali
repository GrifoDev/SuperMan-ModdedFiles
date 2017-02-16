.class public Lcom/android/incallui/smartcall/SmartCallController;
.super Ljava/lang/Object;
.source "SmartCallController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;

.field private static sMe:Lcom/android/incallui/smartcall/SmartCallController;


# instance fields
.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSmartCallManager:Lcom/android/incallui/smartcall/SmartCallManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/incallui/smartcall/SmartCallController;->DBG:Z

    .line 24
    const-class v0, Lcom/android/incallui/smartcall/SmartCallController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/smartcall/SmartCallController;->TAG:Ljava/lang/String;

    .line 28
    new-instance v0, Lcom/android/incallui/smartcall/SmartCallController;

    invoke-direct {v0}, Lcom/android/incallui/smartcall/SmartCallController;-><init>()V

    sput-object v0, Lcom/android/incallui/smartcall/SmartCallController;->sMe:Lcom/android/incallui/smartcall/SmartCallController;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/smartcall/SmartCallController;->mListeners:Ljava/util/List;

    .line 41
    new-instance v0, Lcom/android/incallui/smartcall/SmartCallManager;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/smartcall/SmartCallManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/smartcall/SmartCallController;->mSmartCallManager:Lcom/android/incallui/smartcall/SmartCallManager;

    .line 42
    return-void
.end method

.method public static getInstance()Lcom/android/incallui/smartcall/SmartCallController;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/incallui/smartcall/SmartCallController;->sMe:Lcom/android/incallui/smartcall/SmartCallController;

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 129
    sget-boolean v0, Lcom/android/incallui/smartcall/SmartCallController;->DBG:Z

    if-eqz v0, :cond_0

    .line 130
    sget-object v0, Lcom/android/incallui/smartcall/SmartCallController;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;

    .prologue
    .line 71
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v3, p0, Lcom/android/incallui/smartcall/SmartCallController;->mListeners:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 73
    iget-object v3, p0, Lcom/android/incallui/smartcall/SmartCallController;->mListeners:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    .line 75
    .local v1, "callList":Lcom/android/incallui/CallList;
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 76
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSmartCallSearching()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/android/incallui/smartcall/SmartCallController;->notifyListenersOfSmartQueryStart()V

    .line 80
    :cond_0
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

    .line 81
    .local v2, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->smartCallInfo:Lcom/android/incallui/smartcall/SmartCallInfo;

    if-eqz v3, :cond_1

    .line 82
    invoke-interface {p1}, Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;->onSmartInfoQueryComplete()V

    .line 86
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v1    # "callList":Lcom/android/incallui/CallList;
    .end local v2    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_1
    return-void
.end method

.method public getSmartCallManager()Lcom/android/incallui/smartcall/SmartCallManager;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/incallui/smartcall/SmartCallController;->mSmartCallManager:Lcom/android/incallui/smartcall/SmartCallManager;

    return-object v0
.end method

.method public notifyListenersOfSmartImageQueryComplete()V
    .locals 3

    .prologue
    .line 100
    iget-object v1, p0, Lcom/android/incallui/smartcall/SmartCallController;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;

    .line 101
    .local v0, "listener":Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;
    invoke-interface {v0}, Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;->onSmartImageQueryComplete()V

    goto :goto_0

    .line 103
    .end local v0    # "listener":Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;
    :cond_0
    return-void
.end method

.method public notifyListenersOfSmartInfoQueryComplete()V
    .locals 3

    .prologue
    .line 94
    iget-object v1, p0, Lcom/android/incallui/smartcall/SmartCallController;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;

    .line 95
    .local v0, "listener":Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;
    invoke-interface {v0}, Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;->onSmartInfoQueryComplete()V

    goto :goto_0

    .line 97
    .end local v0    # "listener":Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;
    :cond_0
    return-void
.end method

.method public notifyListenersOfSmartQueryStart()V
    .locals 3

    .prologue
    .line 106
    iget-object v1, p0, Lcom/android/incallui/smartcall/SmartCallController;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;

    .line 107
    .local v0, "listener":Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;
    invoke-interface {v0}, Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;->onSmartInfoQueryStart()V

    goto :goto_0

    .line 109
    .end local v0    # "listener":Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;

    .prologue
    .line 89
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/android/incallui/smartcall/SmartCallController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

.method public startQuery(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "callId"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v0

    .line 46
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/SecCall;->getFakeSmartCall()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 47
    new-instance v2, Lcom/android/incallui/smartcall/SmartCallInfo;

    invoke-direct {v2}, Lcom/android/incallui/smartcall/SmartCallInfo;-><init>()V

    .line 48
    .local v2, "info":Lcom/android/incallui/smartcall/SmartCallInfo;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/SecCall;->getFakeSmartCallSpamName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    .line 49
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    .line 50
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/SecCall;->getFakeSmartCallSpamLevel()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationTypeCode:Ljava/lang/String;

    .line 51
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/SecCall;->getFakeSmartCallSpamLevel()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryCode:Ljava/lang/String;

    .line 52
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/SecCall;->getFakeSmartCalllSpamDescription()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryName:Ljava/lang/String;

    .line 53
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/SecCall;->getFakeSmartCallSpamPhotoUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUrl:Ljava/lang/String;

    .line 54
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/SecCall;->getFakeSmartCallSpamAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/incallui/smartcall/SmartCallInfo;->addressCity:Ljava/lang/String;

    .line 55
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/SecCall;->getFakeSmartCallSpamAddressState()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/incallui/smartcall/SmartCallInfo;->addressState:Ljava/lang/String;

    .line 56
    const-string v3, "http://www.whitepages.com/oemredirect"

    iput-object v3, v2, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderUrl:Ljava/lang/String;

    .line 57
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    .line 58
    .local v1, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v1, :cond_0

    .line 59
    iput-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->smartCallInfo:Lcom/android/incallui/smartcall/SmartCallInfo;

    .line 61
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 62
    iget-object v3, v2, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, p2}, Lcom/android/incallui/smartcall/SmartCallUtil;->queryCallerImageInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/smartcall/SmartCallController;->notifyListenersOfSmartInfoQueryComplete()V

    .line 68
    .end local v1    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .end local v2    # "info":Lcom/android/incallui/smartcall/SmartCallInfo;
    :goto_0
    return-void

    .line 66
    :cond_2
    invoke-static {p1, p2}, Lcom/android/incallui/smartcall/SmartCallUtil;->queryCallerInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public tearDown()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/incallui/smartcall/SmartCallController;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 113
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/smartcall/SmartCallController;->sMe:Lcom/android/incallui/smartcall/SmartCallController;

    .line 114
    return-void
.end method
