.class public Lcom/android/server/bridge/operations/SimplePersonaInfos;
.super Ljava/lang/Object;
.source "SimplePersonaInfos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;
    }
.end annotation


# static fields
.field public static final LAST_IMPORT_CALENDAR_STATUS:Ljava/lang/String; = "last_import_calendar_status"

.field public static final LAST_IMPORT_CONTACT_STATUS:Ljava/lang/String; = "last_import_contact_status"

.field static final MAX:I = 0x5

.field public static final PERSONA_ID:Ljava/lang/String; = "user_id"

.field public static final PERSONA_NAME:Ljava/lang/String; = "user_name"

.field public static final PERSONA_TYPE:Ljava/lang/String; = "type"

.field static final TAG:Ljava/lang/String; = "SimplePersonaInfos"

.field private static mCtx:Landroid/content/Context;

.field private static mPm:Lcom/samsung/android/knox/SemPersonaManager;


# instance fields
.field isInitialized:Z

.field lock:Ljava/lang/Object;

.field mExtraInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field mList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mCtx:Landroid/content/Context;

    sput-object v0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->isInitialized:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->lock:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mList:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mExtraInfo:Ljava/util/HashMap;

    sput-object p1, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mCtx:Landroid/content/Context;

    const-string/jumbo v0, "persona"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    sput-object v0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {p0}, Lcom/android/server/bridge/operations/SimplePersonaInfos;->initialize()V

    return-void
.end method

.method private addItem(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/bridge/operations/SimplePersonaInfos;->isExist(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;

    invoke-direct {v1, p0}, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;-><init>(Lcom/android/server/bridge/operations/SimplePersonaInfos;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput p1, v1, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;->id:I

    iput-object p2, v1, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;->name:Ljava/lang/String;

    iput-object p3, v1, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;->type:Ljava/lang/String;

    const-string/jumbo v2, "KNOX"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mList:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :goto_0
    const-string/jumbo v2, "user_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "user_name"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "last_import_contact_status"

    const-string/jumbo v3, "false"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "last_import_calendar_status"

    const-string/jumbo v3, "false"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mExtraInfo:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mList:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private isExist(I)Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;

    iget v1, v1, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;->id:I

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public getExtraInfo(I)Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mExtraInfo:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method public getItem(I)Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->isInitialized:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/bridge/operations/SimplePersonaInfos;->initialize()V

    :cond_0
    iget-object v1, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getSimplePersonaInfo(I)Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/bridge/operations/SimplePersonaInfos;->getExtraInfo(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->isInitialized:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/bridge/operations/SimplePersonaInfos;->initialize()V

    :cond_0
    iget-object v1, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public initialize()V
    .locals 9

    sget-object v5, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v5, :cond_0

    const-string/jumbo v5, "SimplePersonaInfos"

    const-string/jumbo v6, "initialize() failed"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v5, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v5}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonas()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v5, "SimplePersonaInfos"

    const-string/jumbo v6, "initialize() failed, personas is null"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->clear()V

    iget-object v6, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->lock:Ljava/lang/Object;

    monitor-enter v6

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_4

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/SemPersonaInfo;

    iget-boolean v5, v2, Lcom/samsung/android/knox/SemPersonaInfo;->isBBCContainer:Z

    if-nez v5, :cond_2

    sget-object v5, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mCtx:Landroid/content/Context;

    const-string/jumbo v7, "user"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    iget v5, v2, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-boolean v5, v2, Lcom/samsung/android/knox/SemPersonaInfo;->removePersona:Z

    if-eqz v5, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget v5, v2, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    iget-object v7, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    iget-object v8, v2, Lcom/samsung/android/knox/SemPersonaInfo;->type:Ljava/lang/String;

    invoke-direct {p0, v5, v7, v8}, Lcom/android/server/bridge/operations/SimplePersonaInfos;->addItem(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_4
    const/4 v5, 0x1

    :try_start_1
    iput-boolean v5, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->isInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    return-void
.end method

.method public removeItem(I)V
    .locals 4

    iget-boolean v1, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->isInitialized:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/bridge/operations/SimplePersonaInfos;->initialize()V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->lock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;

    iget v1, v1, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;->id:I

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mExtraInfo:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
