.class public Landroid/os/OdtcHelper;
.super Ljava/lang/Object;
.source "OdtcHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/OdtcHelper$OdtcPackageInfo;
    }
.end annotation


# static fields
.field private static final MINIMUM_FREE_STORAGE_MEM:J = 0x40000000L

.field private static final MINIMUM_GLOBALMEMORYTHRESHOLD:I = 0x100000

.field private static final ODTCHELPER_TAG:Ljava/lang/String; = "ODTC_HELPER"

.field private static final ODTC_RECORD_REDIRECT:I = 0x1

.field private static final ODTC_REDIRECT:I = 0x2

.field private static final PERGAME_LIMIT:I = 0x6400000

.field private static final debug:Z

.field private static globalOccupiedOdtcMem:I

.field private static isNativeLibLoaded:Z

.field private static mInstance:Landroid/os/OdtcHelper;

.field private static odtcSessionAppCounter:B


# instance fields
.field private globalOdtcMem:I

.field private mContext:Landroid/content/Context;

.field odtcAllowedPackage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/OdtcHelper$OdtcPackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field sessionAllowedPackagesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    sput-boolean v2, Landroid/os/OdtcHelper;->isNativeLibLoaded:Z

    .line 32
    const/4 v1, 0x0

    sput-object v1, Landroid/os/OdtcHelper;->mInstance:Landroid/os/OdtcHelper;

    .line 33
    sput v2, Landroid/os/OdtcHelper;->globalOccupiedOdtcMem:I

    .line 37
    sput-byte v2, Landroid/os/OdtcHelper;->odtcSessionAppCounter:B

    .line 50
    :try_start_0
    const-string/jumbo v1, "sts_values"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 51
    const/4 v1, 0x1

    sput-boolean v1, Landroid/os/OdtcHelper;->isNativeLibLoaded:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 52
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 53
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    sput-boolean v2, Landroid/os/OdtcHelper;->isNativeLibLoaded:Z

    .line 54
    const-string/jumbo v1, "ODTC_HELPER"

    const-string/jumbo v2, "STS_ODTC : WARNING_ODTC : libsts_values.so loading failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/OdtcHelper;->mContext:Landroid/content/Context;

    .line 42
    const/high16 v0, 0x12c00000

    iput v0, p0, Landroid/os/OdtcHelper;->globalOdtcMem:I

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/os/OdtcHelper;->odtcAllowedPackage:Ljava/util/HashMap;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/OdtcHelper;->sessionAllowedPackagesList:Ljava/util/ArrayList;

    .line 28
    return-void
.end method

.method public static declared-synchronized getInstance()Landroid/os/OdtcHelper;
    .locals 2

    .prologue
    const-class v1, Landroid/os/OdtcHelper;

    monitor-enter v1

    .line 59
    :try_start_0
    sget-object v0, Landroid/os/OdtcHelper;->mInstance:Landroid/os/OdtcHelper;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Landroid/os/OdtcHelper;

    invoke-direct {v0}, Landroid/os/OdtcHelper;-><init>()V

    sput-object v0, Landroid/os/OdtcHelper;->mInstance:Landroid/os/OdtcHelper;

    .line 62
    :cond_0
    sget-object v0, Landroid/os/OdtcHelper;->mInstance:Landroid/os/OdtcHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getODTCVersion()I
    .locals 1

    .prologue
    .line 70
    sget-boolean v0, Landroid/os/OdtcHelper;->isNativeLibLoaded:Z

    if-nez v0, :cond_0

    .line 71
    const/4 v0, 0x0

    return v0

    .line 73
    :cond_0
    invoke-static {}, Landroid/os/OdtcHelper;->nativeGetODTCVersion()I

    move-result v0

    return v0
.end method

.method private isStorageAvailable()Z
    .locals 6

    .prologue
    .line 198
    iget v3, p0, Landroid/os/OdtcHelper;->globalOdtcMem:I

    sget v4, Landroid/os/OdtcHelper;->globalOccupiedOdtcMem:I

    sub-int v2, v3, v4

    .line 199
    .local v2, "odtcCacheUsableMemory":I
    new-instance v3, Landroid/os/StatFs;

    const-string/jumbo v4, "/data/"

    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v0

    .line 201
    .local v0, "availableSizeInBytes":J
    const/high16 v3, 0x100000

    if-le v2, v3, :cond_0

    const-wide/32 v4, 0x40000000

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    .line 202
    const/4 v3, 0x1

    return v3

    .line 204
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method public static native nativeGetODTCVersion()I
.end method


# virtual methods
.method public declared-synchronized addPackage(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "pckg"    # Ljava/lang/String;
    .param p2, "option"    # Z

    .prologue
    monitor-enter p0

    .line 127
    if-nez p2, :cond_0

    .line 128
    :try_start_0
    iget-object v1, p0, Landroid/os/OdtcHelper;->odtcAllowedPackage:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 129
    return-void

    .line 131
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/OdtcHelper$OdtcPackageInfo;

    invoke-direct {v0}, Landroid/os/OdtcHelper$OdtcPackageInfo;-><init>()V

    .line 132
    .local v0, "odtcPckg":Landroid/os/OdtcHelper$OdtcPackageInfo;
    iget-object v1, p0, Landroid/os/OdtcHelper;->odtcAllowedPackage:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 126
    return-void

    .end local v0    # "odtcPckg":Landroid/os/OdtcHelper$OdtcPackageInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getAllowedOdtcPackageList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 140
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v0, "gameTunerAllowedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Landroid/os/OdtcHelper;->odtcAllowedPackage:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "pckg$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 142
    .local v1, "pckg":Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "gameTunerAllowedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "pckg":Ljava/lang/String;
    .end local v2    # "pckg$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v0    # "gameTunerAllowedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "pckg$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    .line 145
    return-object v0
.end method

.method public getGlobalODTCMemory()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Landroid/os/OdtcHelper;->globalOdtcMem:I

    return v0
.end method

.method public getGlobalOccupiedODTCMemory()I
    .locals 1

    .prologue
    .line 166
    sget v0, Landroid/os/OdtcHelper;->globalOccupiedOdtcMem:I

    return v0
.end method

.method public declared-synchronized getODTCAppType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "pckg"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 173
    :try_start_0
    iget-object v1, p0, Landroid/os/OdtcHelper;->odtcAllowedPackage:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/OdtcHelper$OdtcPackageInfo;

    invoke-virtual {v1}, Landroid/os/OdtcHelper$OdtcPackageInfo;->getAppType()C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 174
    .local v0, "type":Ljava/lang/Character;
    const/16 v1, 0x45

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Character;->compareTo(Ljava/lang/Character;)I

    move-result v1

    if-nez v1, :cond_0

    .line 175
    const-string/jumbo v1, "EGL"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 177
    :cond_0
    :try_start_1
    const-string/jumbo v1, "JNI"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .end local v0    # "type":Ljava/lang/Character;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getODTCOption(Ljava/lang/String;)I
    .locals 1
    .param p1, "pckg"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 114
    :try_start_0
    invoke-direct {p0}, Landroid/os/OdtcHelper;->isStorageAvailable()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 117
    :cond_0
    const/4 v0, 0x2

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPackageExist(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Landroid/os/OdtcHelper;->odtcAllowedPackage:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public notifyOFS(Ljava/lang/String;)V
    .locals 4
    .param p1, "pckg"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Landroid/os/OdtcHelper;->isPackageExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 98
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "service.odtcfactory.sec.com.odtcfactoryservice"

    const-string/jumbo v3, "service.odtcfactory.sec.com.odtcfactoryservice.odtcfactory.AlarmReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 99
    const-string/jumbo v1, "service.odtcfactory.sec.com.odtcfactoryservice.odtcfactory.CACHE_MANAGEMENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    iget-object v1, p0, Landroid/os/OdtcHelper;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Landroid/os/OdtcHelper;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 94
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public declared-synchronized setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctxt"    # Landroid/content/Context;

    .prologue
    monitor-enter p0

    .line 88
    :try_start_0
    iput-object p1, p0, Landroid/os/OdtcHelper;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 87
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized showAllODTCInfo()V
    .locals 6

    .prologue
    monitor-enter p0

    .line 208
    :try_start_0
    iget-object v3, p0, Landroid/os/OdtcHelper;->odtcAllowedPackage:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "elem$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 209
    .local v0, "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/OdtcHelper$OdtcPackageInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/OdtcHelper$OdtcPackageInfo;

    .line 210
    .local v2, "odtcObject":Landroid/os/OdtcHelper$OdtcPackageInfo;
    const-string/jumbo v4, "ODTC_HELPER"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "STS_ODTC PackageName : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ",  ODTC Data is : App type :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 211
    invoke-static {v2}, Landroid/os/OdtcHelper$OdtcPackageInfo;->-get0(Landroid/os/OdtcHelper$OdtcPackageInfo;)C

    move-result v5

    .line 210
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 211
    const-string/jumbo v5, " Health Factor "

    .line 210
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 211
    invoke-static {v2}, Landroid/os/OdtcHelper$OdtcPackageInfo;->-get1(Landroid/os/OdtcHelper$OdtcPackageInfo;)S

    move-result v5

    .line 210
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 211
    const-string/jumbo v5, " Memory Consumed "

    .line 210
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 211
    invoke-static {v2}, Landroid/os/OdtcHelper$OdtcPackageInfo;->-get2(Landroid/os/OdtcHelper$OdtcPackageInfo;)I

    move-result v5

    .line 210
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/OdtcHelper$OdtcPackageInfo;>;"
    .end local v1    # "elem$iterator":Ljava/util/Iterator;
    .end local v2    # "odtcObject":Landroid/os/OdtcHelper$OdtcPackageInfo;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v1    # "elem$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    .line 207
    return-void
.end method

.method public updateGlobalODTCMemory(I)V
    .locals 1
    .param p1, "memorySize"    # I

    .prologue
    .line 152
    mul-int/lit16 v0, p1, 0x400

    mul-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/os/OdtcHelper;->globalOdtcMem:I

    .line 151
    return-void
.end method

.method public declared-synchronized updateOdtcPackageEntry(Ljava/lang/String;CSI)V
    .locals 5
    .param p1, "pckg"    # Ljava/lang/String;
    .param p2, "appType"    # C
    .param p3, "healthFactor"    # S
    .param p4, "memConsumed"    # I

    .prologue
    monitor-enter p0

    .line 189
    :try_start_0
    new-instance v0, Landroid/os/OdtcHelper$OdtcPackageInfo;

    invoke-direct {v0, p2, p3, p4}, Landroid/os/OdtcHelper$OdtcPackageInfo;-><init>(CII)V

    .line 190
    .local v0, "odtcPckgNewValue":Landroid/os/OdtcHelper$OdtcPackageInfo;
    iget-object v2, p0, Landroid/os/OdtcHelper;->odtcAllowedPackage:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/OdtcHelper$OdtcPackageInfo;

    .line 191
    .local v1, "odtcPckgOldValue":Landroid/os/OdtcHelper$OdtcPackageInfo;
    if-eqz v1, :cond_0

    .line 192
    sget v2, Landroid/os/OdtcHelper;->globalOccupiedOdtcMem:I

    invoke-virtual {v0}, Landroid/os/OdtcHelper$OdtcPackageInfo;->getMemConsumed()I

    move-result v3

    invoke-virtual {v1}, Landroid/os/OdtcHelper$OdtcPackageInfo;->getMemConsumed()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    sput v2, Landroid/os/OdtcHelper;->globalOccupiedOdtcMem:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 188
    return-void

    .end local v0    # "odtcPckgNewValue":Landroid/os/OdtcHelper$OdtcPackageInfo;
    .end local v1    # "odtcPckgOldValue":Landroid/os/OdtcHelper$OdtcPackageInfo;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
