.class public Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;
.super Ljava/lang/Object;
.source "CaAkmManager.java"


# static fields
.field private static final SETTING_FILE_NAME:Ljava/lang/String; = "/data/misc/akmd_set.txt"

.field private static volatile instance:Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;
    .locals 2

    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;-><init>()V

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private loadIntValue(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private saveIntValue(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getOrientationValueNames()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "HSUC_HDST_FORM0"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "HSUC_HO_FORM0.x"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "HSUC_HO_FORM0.y"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "HSUC_HO_FORM0.z"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "HFLUCV_HREF_FORM0.x"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "HFLUCV_HREF_FORM0.y"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "HFLUCV_HREF_FORM0.z"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method public final loadOrientationInfo()Landroid/os/Bundle;
    .locals 8

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;->getOrientationValueNames()[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v2, v4

    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;->loadIntValue(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final saveOrientationInfo(Landroid/os/Bundle;)V
    .locals 7

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string/jumbo v3, "can\'t save the orientation information"

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;->getOrientationValueNames()[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;->saveIntValue(Ljava/lang/String;I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
