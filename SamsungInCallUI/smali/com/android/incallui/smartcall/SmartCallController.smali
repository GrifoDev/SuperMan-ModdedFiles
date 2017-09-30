.class public Lcom/android/incallui/smartcall/SmartCallController;
.super Ljava/lang/Object;


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

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/incallui/smartcall/SmartCallController;->DBG:Z

    const-class v0, Lcom/android/incallui/smartcall/SmartCallController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/smartcall/SmartCallController;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/android/incallui/smartcall/SmartCallController;

    invoke-direct {v0}, Lcom/android/incallui/smartcall/SmartCallController;-><init>()V

    sput-object v0, Lcom/android/incallui/smartcall/SmartCallController;->sMe:Lcom/android/incallui/smartcall/SmartCallController;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/smartcall/SmartCallController;->mListeners:Ljava/util/List;

    new-instance v0, Lcom/android/incallui/smartcall/SmartCallManager;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/smartcall/SmartCallManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/smartcall/SmartCallController;->mSmartCallManager:Lcom/android/incallui/smartcall/SmartCallManager;

    return-void
.end method

.method public static getInstance()Lcom/android/incallui/smartcall/SmartCallController;
    .locals 1

    sget-object v0, Lcom/android/incallui/smartcall/SmartCallController;->sMe:Lcom/android/incallui/smartcall/SmartCallController;

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/incallui/smartcall/SmartCallController;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/smartcall/SmartCallController;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;)V
    .locals 3

    invoke-static {p1}, Lcom/google/a/a/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/smartcall/SmartCallController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/smartcall/SmartCallController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSmartCallSearching()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/smartcall/SmartCallController;->notifyListenersOfSmartQueryStart()V

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->smartCallInfo:Lcom/android/incallui/smartcall/SmartCallInfo;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;->onSmartInfoQueryComplete()V

    :cond_1
    return-void
.end method

.method public getSmartCallManager()Lcom/android/incallui/smartcall/SmartCallManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/smartcall/SmartCallController;->mSmartCallManager:Lcom/android/incallui/smartcall/SmartCallManager;

    return-object v0
.end method

.method public notifyListenersOfSmartImageQueryComplete()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/smartcall/SmartCallController;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;

    invoke-interface {v0}, Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;->onSmartImageQueryComplete()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyListenersOfSmartInfoQueryComplete()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/smartcall/SmartCallController;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;

    invoke-interface {v0}, Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;->onSmartInfoQueryComplete()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyListenersOfSmartQueryStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/smartcall/SmartCallController;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;

    invoke-interface {v0}, Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;->onSmartInfoQueryStart()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeListener(Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;)V
    .locals 1

    invoke-static {p1}, Lcom/google/a/a/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/smartcall/SmartCallController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public startQuery(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/SecCall;->getFakeSmartCall()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/incallui/smartcall/SmartCallInfo;

    invoke-direct {v1}, Lcom/android/incallui/smartcall/SmartCallInfo;-><init>()V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/SecCall;->getFakeSmartCallSpamName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/SecCall;->getFakeSmartCallSpamLevel()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationTypeCode:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/SecCall;->getFakeSmartCallSpamLevel()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryCode:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/SecCall;->getFakeSmartCalllSpamDescription()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/SecCall;->getFakeSmartCallSpamPhotoUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/SecCall;->getFakeSmartCallSpamAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->addressCity:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/SecCall;->getFakeSmartCallSpamAddressState()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->addressState:Ljava/lang/String;

    const-string v2, "http://www.whitepages.com/oemredirect"

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderUrl:Ljava/lang/String;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    if-eqz v2, :cond_0

    iput-object v1, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->smartCallInfo:Lcom/android/incallui/smartcall/SmartCallInfo;

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v1, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p2}, Lcom/android/incallui/smartcall/SmartCallUtil;->queryCallerImageInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/smartcall/SmartCallController;->notifyListenersOfSmartInfoQueryComplete()V

    :goto_0
    return-void

    :cond_2
    invoke-static {p1, p2}, Lcom/android/incallui/smartcall/SmartCallUtil;->queryCallerInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public tearDown()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/smartcall/SmartCallController;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/smartcall/SmartCallController;->sMe:Lcom/android/incallui/smartcall/SmartCallController;

    return-void
.end method
