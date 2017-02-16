.class public Lcom/android/incallui/coreapps/CoreAppsContactManager;
.super Ljava/lang/Object;
.source "CoreAppsContactManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/coreapps/CoreAppsContactManager$UpdateCoreAppsContactListener;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/incallui/coreapps/CoreAppsContactManager;


# instance fields
.field private final mCoreAppsContactByNumber:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/incallui/coreapps/CoreAppsContact;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdateListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/coreapps/CoreAppsContactManager$UpdateCoreAppsContactListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/android/incallui/coreapps/CoreAppsContactManager;

    invoke-direct {v0}, Lcom/android/incallui/coreapps/CoreAppsContactManager;-><init>()V

    sput-object v0, Lcom/android/incallui/coreapps/CoreAppsContactManager;->sInstance:Lcom/android/incallui/coreapps/CoreAppsContactManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsContactManager;->mUpdateListeners:Ljava/util/Set;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsContactManager;->mCoreAppsContactByNumber:Ljava/util/HashMap;

    .line 56
    return-void
.end method

.method public static getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/incallui/coreapps/CoreAppsContactManager;->sInstance:Lcom/android/incallui/coreapps/CoreAppsContactManager;

    return-object v0
.end method


# virtual methods
.method public addCoreAppsContact(Lcom/android/incallui/coreapps/CoreAppsContact;)V
    .locals 5
    .param p1, "contact"    # Lcom/android/incallui/coreapps/CoreAppsContact;

    .prologue
    .line 82
    if-nez p1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v2, p1, Lcom/android/incallui/coreapps/CoreAppsContact;->number:Ljava/lang/String;

    .line 85
    .local v2, "number":Ljava/lang/String;
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "normalizedNumber":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 87
    const-string v3, "add: number is empty"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_2
    iget-object v3, p0, Lcom/android/incallui/coreapps/CoreAppsContactManager;->mCoreAppsContactByNumber:Ljava/util/HashMap;

    invoke-virtual {v3, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v3, p0, Lcom/android/incallui/coreapps/CoreAppsContactManager;->mUpdateListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/coreapps/CoreAppsContactManager$UpdateCoreAppsContactListener;

    .line 93
    .local v0, "listener":Lcom/android/incallui/coreapps/CoreAppsContactManager$UpdateCoreAppsContactListener;
    invoke-interface {v0}, Lcom/android/incallui/coreapps/CoreAppsContactManager$UpdateCoreAppsContactListener;->onUpdateCoreAppsContact()V

    goto :goto_1
.end method

.method public addListener(Lcom/android/incallui/coreapps/CoreAppsContactManager$UpdateCoreAppsContactListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/incallui/coreapps/CoreAppsContactManager$UpdateCoreAppsContactListener;

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addListener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    if-nez p1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsContactManager;->mUpdateListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsContactManager;->mUpdateListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clearCoreAppsContact()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsContactManager;->mCoreAppsContactByNumber:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 106
    return-void
.end method

.method public getCoreAppsContact(Ljava/lang/String;)Lcom/android/incallui/coreapps/CoreAppsContact;
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "normalizedNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    const-string v1, "number is empty"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    const/4 v1, 0x0

    .line 78
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/coreapps/CoreAppsContactManager;->mCoreAppsContactByNumber:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/coreapps/CoreAppsContact;

    goto :goto_0
.end method

.method public removeCoreAppsContact(Ljava/lang/String;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "normalizedNumber":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/incallui/coreapps/CoreAppsContactManager;->mCoreAppsContactByNumber:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/android/incallui/coreapps/CoreAppsContactManager;->mCoreAppsContactByNumber:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/android/incallui/coreapps/CoreAppsContactManager$UpdateCoreAppsContactListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/coreapps/CoreAppsContactManager$UpdateCoreAppsContactListener;

    .prologue
    .line 68
    if-nez p1, :cond_0

    .line 70
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsContactManager;->mUpdateListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public showAll()V
    .locals 4

    .prologue
    .line 109
    iget-object v1, p0, Lcom/android/incallui/coreapps/CoreAppsContactManager;->mCoreAppsContactByNumber:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/coreapps/CoreAppsContact;

    .line 110
    .local v0, "contact":Lcom/android/incallui/coreapps/CoreAppsContact;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/incallui/coreapps/CoreAppsContact;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 112
    .end local v0    # "contact":Lcom/android/incallui/coreapps/CoreAppsContact;
    :cond_0
    return-void
.end method
