.class public Lcom/android/incallui/util/VisualCallCenter;
.super Ljava/lang/Object;
.source "VisualCallCenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/util/VisualCallCenter$IvrTask;,
        Lcom/android/incallui/util/VisualCallCenter$OnIVRScreenRemovedListener;
    }
.end annotation


# static fields
.field static IT:Lcom/android/incallui/util/VisualCallCenter$IvrTask;

.field static LMA:Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

.field static api:Lcom/yulore/sdk/ivr/YuloreIvrApi;

.field static i:I

.field private static instance:Lcom/android/incallui/util/VisualCallCenter;

.field static isDispalyIVR:Z

.field static isDisplayDailpad:Z

.field static isHasIVR:Z

.field static isIVRMode:Z

.field static isMenuPressed:Z

.field static isNoMenuIVR:Z

.field static mCallNum:Ljava/lang/String;

.field static mNodeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yulore/sdk/ivr/model/INode;",
            ">;"
        }
    .end annotation
.end field

.field static moArea:Ljava/lang/String;

.field static mtArea:Ljava/lang/String;

.field static oldTelNum:[Ljava/lang/String;

.field static oldTelNum2:Ljava/lang/String;

.field static onIVRScreenRemovedListener:Lcom/android/incallui/util/VisualCallCenter$OnIVRScreenRemovedListener;

.field static useOldState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    sput-object v2, Lcom/android/incallui/util/VisualCallCenter;->IT:Lcom/android/incallui/util/VisualCallCenter$IvrTask;

    sput-object v2, Lcom/android/incallui/util/VisualCallCenter;->mCallNum:Ljava/lang/String;

    const-string v0, "010"

    sput-object v0, Lcom/android/incallui/util/VisualCallCenter;->moArea:Ljava/lang/String;

    const-string v0, "010"

    sput-object v0, Lcom/android/incallui/util/VisualCallCenter;->mtArea:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/incallui/util/VisualCallCenter;->oldTelNum:[Ljava/lang/String;

    sput-object v2, Lcom/android/incallui/util/VisualCallCenter;->oldTelNum2:Ljava/lang/String;

    sput-boolean v1, Lcom/android/incallui/util/VisualCallCenter;->useOldState:Z

    sput-boolean v1, Lcom/android/incallui/util/VisualCallCenter;->isDispalyIVR:Z

    sput-boolean v1, Lcom/android/incallui/util/VisualCallCenter;->isMenuPressed:Z

    sput-boolean v1, Lcom/android/incallui/util/VisualCallCenter;->isHasIVR:Z

    sput-boolean v1, Lcom/android/incallui/util/VisualCallCenter;->isIVRMode:Z

    sput-boolean v1, Lcom/android/incallui/util/VisualCallCenter;->isNoMenuIVR:Z

    sput-boolean v1, Lcom/android/incallui/util/VisualCallCenter;->isDisplayDailpad:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/incallui/util/VisualCallCenter;->mNodeList:Ljava/util/List;

    sput v1, Lcom/android/incallui/util/VisualCallCenter;->i:I

    sput-object v2, Lcom/android/incallui/util/VisualCallCenter;->onIVRScreenRemovedListener:Lcom/android/incallui/util/VisualCallCenter$OnIVRScreenRemovedListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static VCC_addShortcut(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static VCC_checkUpdate()V
    .locals 2

    sget-object v0, Lcom/android/incallui/util/VisualCallCenter;->api:Lcom/yulore/sdk/ivr/YuloreIvrApi;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/incallui/util/VisualCallCenter;->isHasIVR:Z

    if-eqz v0, :cond_0

    const-string v0, "VisualCallCenter"

    const-string v1, "call api.checkUpdate():"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/incallui/util/VisualCallCenter;->api:Lcom/yulore/sdk/ivr/YuloreIvrApi;

    invoke-interface {v0}, Lcom/yulore/sdk/ivr/YuloreIvrApi;->checkUpdate()V

    :cond_0
    return-void
.end method

.method public static VCC_createSrinIVRApi(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static VCC_createYuloreIVRApi(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/incallui/util/VisualCallCenter;->oldTelNum:[Ljava/lang/String;

    sget v1, Lcom/android/incallui/util/VisualCallCenter;->i:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/incallui/util/VisualCallCenter;->oldTelNum:[Ljava/lang/String;

    sget v1, Lcom/android/incallui/util/VisualCallCenter;->i:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/util/VisualCallCenter;->useOldState:Z

    :goto_1
    sget v0, Lcom/android/incallui/util/VisualCallCenter;->i:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/incallui/util/VisualCallCenter;->i:I

    invoke-static {}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->getInstance()Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v2}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->createIvrApi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yulore/sdk/ivr/YuloreIvrApi;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/util/VisualCallCenter;->api:Lcom/yulore/sdk/ivr/YuloreIvrApi;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/incallui/util/VisualCallCenter;->oldTelNum:[Ljava/lang/String;

    sget v1, Lcom/android/incallui/util/VisualCallCenter;->i:I

    aput-object p0, v0, v1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/util/VisualCallCenter;->useOldState:Z

    goto :goto_1
.end method

.method public static VCC_deleteShortcut(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static declared-synchronized VCC_getAdapter(Landroid/content/Context;)Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;
    .locals 2

    const-class v1, Lcom/android/incallui/util/VisualCallCenter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/util/VisualCallCenter;->LMA:Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

    invoke-direct {v0, p0}, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/incallui/util/VisualCallCenter;->LMA:Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

    :cond_0
    sget-object v0, Lcom/android/incallui/util/VisualCallCenter;->LMA:Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static VCC_getCallPath(J)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    sget-object v1, Lcom/android/incallui/util/VisualCallCenter;->api:Lcom/yulore/sdk/ivr/YuloreIvrApi;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/incallui/util/VisualCallCenter;->api:Lcom/yulore/sdk/ivr/YuloreIvrApi;

    invoke-interface {v1, p0, p1}, Lcom/yulore/sdk/ivr/YuloreIvrApi;->getFinalIvrCode(J)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static VCC_getDisplayDailpad()Z
    .locals 1

    sget-boolean v0, Lcom/android/incallui/util/VisualCallCenter;->isDisplayDailpad:Z

    return v0
.end method

.method public static VCC_getUpdateIVRLimit()I
    .locals 2

    invoke-static {}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->getInstance()Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->getupdateNetworkType()Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

    move-result-object v0

    sget-object v1, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;->WIFI:Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x2

    :goto_0
    return v1

    :cond_0
    sget-object v1, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;->MOBILE_NETWORK:Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;->NEVER_UPDATE:Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

    if-ne v0, v1, :cond_2

    const/4 v1, 0x5

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_0
.end method

.method public static VCC_init(Landroid/content/Context;)V
    .locals 7

    const-string v3, "noble_enable_grace_ux"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "/data/data/com.android.incallui/"

    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "VisualCallCenter"

    const-string v4, "!file.exists():"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "VisualCallCenter"

    const-string v4, "file success:"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v3, Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;

    invoke-direct {v3, p0}, Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;-><init>(Landroid/content/Context;)V

    const-string v4, "7OX8e8HMMDUfp4glcsz9Mjc9F4JwKyJl"

    invoke-virtual {v3, v4}, Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;->apiKey(Ljava/lang/String;)Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;

    move-result-object v3

    const-string v4, "EJxt0qbvSidBlSxhgzw27KxdrrhdLrW9b2J51YCwQ3lwuF8RemYAbDYYragwlauto2zdyd4hvrlWuNO5rs0snpdMeGhWqfnfzvqhqBvtsci3nHMJzkCTBAV3WR9cngCRiWFLAlXKuwXhwhOzn5Z6iP3cnhvN1RwwOFHf7"

    invoke-virtual {v3, v4}, Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;->secret(Ljava/lang/String;)Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    const-string v5, "yulore/ivr"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;->ivrFileDir(Ljava/io/File;)Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    const-string v5, "/"

    const-string v6, "system/csc"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;->offlinePacketDir(Ljava/io/File;)Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;

    move-result-object v3

    sget-object v4, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;->WIFI:Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

    invoke-virtual {v3, v4}, Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;->updateNetworkStrategy(Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;)Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;

    move-result-object v3

    const/16 v4, 0xa8

    invoke-virtual {v3, v4}, Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;->updateIntervalByHour(I)Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;->create()Lcom/yulore/sdk/ivr/IvrConfiguration;

    move-result-object v1

    invoke-static {}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->getInstance()Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->init(Lcom/yulore/sdk/ivr/IvrConfiguration;Z)V

    :goto_1
    return-void

    :cond_1
    const-string v0, "/data/data/com.samsung.android.incallui/"

    goto :goto_0

    :cond_2
    const-string v3, "VisualCallCenter"

    const-string v4, "file fail:"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static VCC_isNoMenuIVR()Z
    .locals 1

    sget-boolean v0, Lcom/android/incallui/util/VisualCallCenter;->isNoMenuIVR:Z

    return v0
.end method

.method public static VCC_menu_getAction(Landroid/widget/AdapterView;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;I)Z"
        }
    .end annotation

    const/4 v2, 0x0

    sget-object v3, Lcom/android/incallui/util/VisualCallCenter;->LMA:Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/incallui/util/VisualCallCenter;->LMA:Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

    invoke-virtual {v3}, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->getList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/incallui/util/VisualCallCenter;->LMA:Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

    invoke-virtual {v3}, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yulore/sdk/ivr/model/INode;

    instance-of v3, v0, Lcom/yulore/sdk/ivr/model/ItemNode;

    if-eqz v3, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/yulore/sdk/ivr/model/ItemNode;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/yulore/sdk/ivr/model/ItemNode;->getType()Lcom/yulore/sdk/ivr/ItemNodeType;

    move-result-object v3

    sget-object v4, Lcom/yulore/sdk/ivr/ItemNodeType;->LEAF_NODE:Lcom/yulore/sdk/ivr/ItemNodeType;

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :cond_1
    instance-of v3, v0, Lcom/yulore/sdk/ivr/model/ShortcutNode;

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static VCC_menu_isShortcut(Landroid/widget/AdapterView;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;I)Z"
        }
    .end annotation

    const/4 v1, 0x0

    sget-object v2, Lcom/android/incallui/util/VisualCallCenter;->LMA:Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/incallui/util/VisualCallCenter;->LMA:Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

    invoke-virtual {v2}, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->getList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/incallui/util/VisualCallCenter;->LMA:Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

    invoke-virtual {v2}, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yulore/sdk/ivr/model/INode;

    instance-of v2, v0, Lcom/yulore/sdk/ivr/model/ShortcutNode;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static VCC_obtainIVR(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    sput-object p0, Lcom/android/incallui/util/VisualCallCenter;->mCallNum:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/incallui/util/VisualCallCenter;->isNoMenuIVR:Z

    sget-object v1, Lcom/android/incallui/util/VisualCallCenter;->api:Lcom/yulore/sdk/ivr/YuloreIvrApi;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/incallui/util/VisualCallCenter;->api:Lcom/yulore/sdk/ivr/YuloreIvrApi;

    new-instance v2, Lcom/android/incallui/util/VisualCallCenter$1;

    invoke-direct {v2}, Lcom/android/incallui/util/VisualCallCenter$1;-><init>()V

    invoke-interface {v1, v2}, Lcom/yulore/sdk/ivr/YuloreIvrApi;->exists(Lcom/yulore/sdk/ivr/listener/RequestIVRCallBack;)Z

    move-result v0

    :cond_0
    sput-boolean v0, Lcom/android/incallui/util/VisualCallCenter;->isHasIVR:Z

    sget-object v1, Lcom/android/incallui/util/VisualCallCenter;->api:Lcom/yulore/sdk/ivr/YuloreIvrApi;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/incallui/util/VisualCallCenter;->api:Lcom/yulore/sdk/ivr/YuloreIvrApi;

    invoke-interface {v1}, Lcom/yulore/sdk/ivr/YuloreIvrApi;->resetCallBack()V

    :cond_1
    return v0
.end method

.method public static VCC_obtainIVRHierarchy(Ljava/lang/String;I)V
    .locals 2

    sget-object v1, Lcom/android/incallui/util/VisualCallCenter;->LMA:Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/incallui/util/VisualCallCenter;->LMA:Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

    invoke-virtual {v1}, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yulore/sdk/ivr/model/INode;

    sget-object v1, Lcom/android/incallui/util/VisualCallCenter;->api:Lcom/yulore/sdk/ivr/YuloreIvrApi;

    invoke-interface {v1, v0}, Lcom/yulore/sdk/ivr/YuloreIvrApi;->getIvrMenu(Lcom/yulore/sdk/ivr/model/INode;)Lcom/yulore/sdk/ivr/model/LayerMenu;

    :cond_0
    return-void
.end method

.method public static VCC_registerNetworkReceiver(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static VCC_setDisplayDailpad(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/incallui/util/VisualCallCenter;->isDisplayDailpad:Z

    return-void
.end method

.method public static VCC_setUpdateIVRLimit(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    invoke-static {}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->getInstance()Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    move-result-object v0

    sget-object v1, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;->MOBILE_NETWORK:Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

    invoke-virtual {v0, v1}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->setupdateNetworkType(Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    invoke-static {}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->getInstance()Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    move-result-object v0

    sget-object v1, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;->WIFI:Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

    invoke-virtual {v0, v1}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->setupdateNetworkType(Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    invoke-static {}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->getInstance()Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    move-result-object v0

    sget-object v1, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;->UNLIMIT:Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

    invoke-virtual {v0, v1}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->setupdateNetworkType(Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->getInstance()Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    move-result-object v0

    sget-object v1, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;->NEVER_UPDATE:Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

    invoke-virtual {v0, v1}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->setupdateNetworkType(Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;)V

    goto :goto_0
.end method

.method public static declared-synchronized VCC_unregisterNetworkReceiver(Landroid/content/Context;)V
    .locals 1

    const-class v0, Lcom/android/incallui/util/VisualCallCenter;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public static getDeleteList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getIVRMode()Z
    .locals 1

    sget-boolean v0, Lcom/android/incallui/util/VisualCallCenter;->isIVRMode:Z

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/util/VisualCallCenter;
    .locals 2

    const-class v1, Lcom/android/incallui/util/VisualCallCenter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/util/VisualCallCenter;->instance:Lcom/android/incallui/util/VisualCallCenter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/util/VisualCallCenter;

    invoke-direct {v0}, Lcom/android/incallui/util/VisualCallCenter;-><init>()V

    sput-object v0, Lcom/android/incallui/util/VisualCallCenter;->instance:Lcom/android/incallui/util/VisualCallCenter;

    :cond_0
    sget-object v0, Lcom/android/incallui/util/VisualCallCenter;->instance:Lcom/android/incallui/util/VisualCallCenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getMenuPressed()Z
    .locals 1

    sget-boolean v0, Lcom/android/incallui/util/VisualCallCenter;->isMenuPressed:Z

    return v0
.end method

.method public static isDisplayIVRPager()Z
    .locals 1

    sget-boolean v0, Lcom/android/incallui/util/VisualCallCenter;->isDispalyIVR:Z

    return v0
.end method

.method public static releaseDisplayIVRPager()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/incallui/util/VisualCallCenter;->isDispalyIVR:Z

    sput-boolean v1, Lcom/android/incallui/util/VisualCallCenter;->isMenuPressed:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/util/VisualCallCenter;->mNodeList:Ljava/util/List;

    sput-boolean v1, Lcom/android/incallui/util/VisualCallCenter;->isIVRMode:Z

    return-void
.end method

.method public static setDisplayIVRPager(Z)V
    .locals 1

    sget-boolean v0, Lcom/android/incallui/util/VisualCallCenter;->isDispalyIVR:Z

    if-eqz v0, :cond_0

    if-nez p0, :cond_0

    sput-boolean p0, Lcom/android/incallui/util/VisualCallCenter;->isDispalyIVR:Z

    sget-object v0, Lcom/android/incallui/util/VisualCallCenter;->onIVRScreenRemovedListener:Lcom/android/incallui/util/VisualCallCenter$OnIVRScreenRemovedListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/util/VisualCallCenter;->onIVRScreenRemovedListener:Lcom/android/incallui/util/VisualCallCenter$OnIVRScreenRemovedListener;

    invoke-interface {v0}, Lcom/android/incallui/util/VisualCallCenter$OnIVRScreenRemovedListener;->ivrScreenRemoved()V

    :cond_0
    sput-boolean p0, Lcom/android/incallui/util/VisualCallCenter;->isDispalyIVR:Z

    return-void
.end method

.method public static setIVRMode(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/incallui/util/VisualCallCenter;->isIVRMode:Z

    return-void
.end method


# virtual methods
.method public VCC_deleteShortCutsFromInCallUI()V
    .locals 0

    return-void
.end method

.method public VCC_getShortcutForDialog()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public VCC_isShortcutPath(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setOnIVRScreenRemovedListener(Lcom/android/incallui/util/VisualCallCenter$OnIVRScreenRemovedListener;)V
    .locals 0

    sput-object p1, Lcom/android/incallui/util/VisualCallCenter;->onIVRScreenRemovedListener:Lcom/android/incallui/util/VisualCallCenter$OnIVRScreenRemovedListener;

    return-void
.end method
