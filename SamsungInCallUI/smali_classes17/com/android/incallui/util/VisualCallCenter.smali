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

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    sput-object v2, Lcom/android/incallui/util/VisualCallCenter;->IT:Lcom/android/incallui/util/VisualCallCenter$IvrTask;

    .line 50
    sput-object v2, Lcom/android/incallui/util/VisualCallCenter;->mCallNum:Ljava/lang/String;

    .line 51
    const-string v0, "010"

    sput-object v0, Lcom/android/incallui/util/VisualCallCenter;->moArea:Ljava/lang/String;

    .line 52
    const-string v0, "010"

    sput-object v0, Lcom/android/incallui/util/VisualCallCenter;->mtArea:Ljava/lang/String;

    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/incallui/util/VisualCallCenter;->oldTelNum:[Ljava/lang/String;

    .line 54
    sput-object v2, Lcom/android/incallui/util/VisualCallCenter;->oldTelNum2:Ljava/lang/String;

    .line 55
    sput-boolean v1, Lcom/android/incallui/util/VisualCallCenter;->useOldState:Z

    .line 56
    sput-boolean v1, Lcom/android/incallui/util/VisualCallCenter;->isDispalyIVR:Z

    .line 57
    sput-boolean v1, Lcom/android/incallui/util/VisualCallCenter;->isMenuPressed:Z

    .line 58
    sput-boolean v1, Lcom/android/incallui/util/VisualCallCenter;->isHasIVR:Z

    .line 59
    sput-boolean v1, Lcom/android/incallui/util/VisualCallCenter;->isIVRMode:Z

    .line 60
    sput-boolean v1, Lcom/android/incallui/util/VisualCallCenter;->isNoMenuIVR:Z

    .line 61
    sput-boolean v1, Lcom/android/incallui/util/VisualCallCenter;->isDisplayDailpad:Z

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/incallui/util/VisualCallCenter;->mNodeList:Ljava/util/List;

    .line 63
    sput v1, Lcom/android/incallui/util/VisualCallCenter;->i:I

    .line 65
    sput-object v2, Lcom/android/incallui/util/VisualCallCenter;->onIVRScreenRemovedListener:Lcom/android/incallui/util/VisualCallCenter$OnIVRScreenRemovedListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    return-void
.end method

.method public static VCC_addShortcut(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 400
    const/4 v0, 0x0

    return v0
.end method

.method public static VCC_checkUpdate()V
    .locals 2

    .prologue
    .line 291
    sget-object v0, Lcom/android/incallui/util/VisualCallCenter;->api:Lcom/yulore/sdk/ivr/YuloreIvrApi;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/incallui/util/VisualCallCenter;->isHasIVR:Z

    if-eqz v0, :cond_0

    .line 292
    const-string v0, "VisualCallCenter"

    const-string v1, "call api.checkUpdate():"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    sget-object v0, Lcom/android/incallui/util/VisualCallCenter;->api:Lcom/yulore/sdk/ivr/YuloreIvrApi;

    invoke-interface {v0}, Lcom/yulore/sdk/ivr/YuloreIvrApi;->checkUpdate()V

    .line 295
    :cond_0
    return-void
.end method

.method public static VCC_createSrinIVRApi(Ljava/lang/String;)V
    .locals 0
    .param p0, "telNum"    # Ljava/lang/String;

    .prologue
    .line 396
    return-void
.end method

.method public static VCC_createYuloreIVRApi(Ljava/lang/String;)V
    .locals 3
    .param p0, "telNum"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 134
    if-nez p0, :cond_0

    .line 145
    :goto_0
    return-void

    .line 137
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

    .line 138
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/util/VisualCallCenter;->useOldState:Z

    .line 143
    :goto_1
    sget v0, Lcom/android/incallui/util/VisualCallCenter;->i:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/incallui/util/VisualCallCenter;->i:I

    .line 144
    invoke-static {}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->getInstance()Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v2}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->createIvrApi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yulore/sdk/ivr/YuloreIvrApi;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/util/VisualCallCenter;->api:Lcom/yulore/sdk/ivr/YuloreIvrApi;

    goto :goto_0

    .line 140
    :cond_2
    sget-object v0, Lcom/android/incallui/util/VisualCallCenter;->oldTelNum:[Ljava/lang/String;

    sget v1, Lcom/android/incallui/util/VisualCallCenter;->i:I

    aput-object p0, v0, v1

    .line 141
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/util/VisualCallCenter;->useOldState:Z

    goto :goto_1
.end method

.method public static VCC_deleteShortcut(Ljava/lang/String;)Z
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 405
    const/4 v0, 0x0

    return v0
.end method

.method public static declared-synchronized VCC_getAdapter(Landroid/content/Context;)Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 231
    const-class v1, Lcom/android/incallui/util/VisualCallCenter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/util/VisualCallCenter;->LMA:Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

    invoke-direct {v0, p0}, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/incallui/util/VisualCallCenter;->LMA:Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

    .line 234
    :cond_0
    sget-object v0, Lcom/android/incallui/util/VisualCallCenter;->LMA:Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static VCC_getCallPath(J)Ljava/lang/String;
    .locals 2
    .param p0, "period"    # J

    .prologue
    .line 223
    const-string v0, ""

    .line 224
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/android/incallui/util/VisualCallCenter;->api:Lcom/yulore/sdk/ivr/YuloreIvrApi;

    if-eqz v1, :cond_0

    .line 225
    sget-object v1, Lcom/android/incallui/util/VisualCallCenter;->api:Lcom/yulore/sdk/ivr/YuloreIvrApi;

    invoke-interface {v1, p0, p1}, Lcom/yulore/sdk/ivr/YuloreIvrApi;->getFinalIvrCode(J)Ljava/lang/String;

    move-result-object v0

    .line 227
    :cond_0
    return-object v0
.end method

.method public static VCC_getDisplayDailpad()Z
    .locals 1

    .prologue
    .line 198
    sget-boolean v0, Lcom/android/incallui/util/VisualCallCenter;->isDisplayDailpad:Z

    return v0
.end method

.method public static VCC_getUpdateIVRLimit()I
    .locals 2

    .prologue
    .line 210
    invoke-static {}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->getInstance()Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->getupdateNetworkType()Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

    move-result-object v0

    .line 211
    .local v0, "getupdateNetworkType":Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;
    sget-object v1, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;->WIFI:Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

    if-ne v0, v1, :cond_0

    .line 212
    const/4 v1, 0x2

    .line 218
    :goto_0
    return v1

    .line 213
    :cond_0
    sget-object v1, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;->MOBILE_NETWORK:Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

    if-ne v0, v1, :cond_1

    .line 214
    const/4 v1, 0x1

    goto :goto_0

    .line 215
    :cond_1
    sget-object v1, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;->NEVER_UPDATE:Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

    if-ne v0, v1, :cond_2

    .line 216
    const/4 v1, 0x5

    goto :goto_0

    .line 218
    :cond_2
    const/4 v1, 0x3

    goto :goto_0
.end method

.method public static VCC_init(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    const-string v3, "noble_enable_grace_ux"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 107
    const-string v0, "/data/data/com.android.incallui/"

    .line 111
    .local v0, "Uri":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 113
    const-string v3, "VisualCallCenter"

    const-string v4, "!file.exists():"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 115
    const-string v3, "VisualCallCenter"

    const-string v4, "file success:"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
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

    .line 124
    invoke-virtual {v3, v4}, Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;->ivrFileDir(Ljava/io/File;)Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    const-string v5, "/"

    const-string v6, "system/csc"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v3, v4}, Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;->offlinePacketDir(Ljava/io/File;)Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;

    move-result-object v3

    sget-object v4, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;->WIFI:Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

    .line 126
    invoke-virtual {v3, v4}, Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;->updateNetworkStrategy(Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;)Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;

    move-result-object v3

    const/16 v4, 0xa8

    .line 127
    invoke-virtual {v3, v4}, Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;->updateIntervalByHour(I)Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;

    move-result-object v3

    .line 128
    invoke-virtual {v3}, Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;->create()Lcom/yulore/sdk/ivr/IvrConfiguration;

    move-result-object v1

    .line 130
    .local v1, "config":Lcom/yulore/sdk/ivr/IvrConfiguration;
    invoke-static {}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->getInstance()Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->init(Lcom/yulore/sdk/ivr/IvrConfiguration;Z)V

    .line 131
    .end local v1    # "config":Lcom/yulore/sdk/ivr/IvrConfiguration;
    :goto_1
    return-void

    .line 109
    .end local v0    # "Uri":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    :cond_1
    const-string v0, "/data/data/com.samsung.android.incallui/"

    .restart local v0    # "Uri":Ljava/lang/String;
    goto :goto_0

    .line 117
    .restart local v2    # "file":Ljava/io/File;
    :cond_2
    const-string v3, "VisualCallCenter"

    const-string v4, "file fail:"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static VCC_isNoMenuIVR()Z
    .locals 1

    .prologue
    .line 188
    sget-boolean v0, Lcom/android/incallui/util/VisualCallCenter;->isNoMenuIVR:Z

    return v0
.end method

.method public static VCC_menu_getAction(Landroid/widget/AdapterView;I)Z
    .locals 5
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;I)Z"
        }
    .end annotation

    .prologue
    .line 249
    .local p0, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    .line 250
    .local v2, "result":Z
    sget-object v3, Lcom/android/incallui/util/VisualCallCenter;->LMA:Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/incallui/util/VisualCallCenter;->LMA:Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

    invoke-virtual {v3}, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->getList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 251
    sget-object v3, Lcom/android/incallui/util/VisualCallCenter;->LMA:Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

    invoke-virtual {v3}, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yulore/sdk/ivr/model/INode;

    .line 252
    .local v0, "iNode":Lcom/yulore/sdk/ivr/model/INode;
    instance-of v3, v0, Lcom/yulore/sdk/ivr/model/ItemNode;

    if-eqz v3, :cond_1

    move-object v1, v0

    .line 253
    check-cast v1, Lcom/yulore/sdk/ivr/model/ItemNode;

    .line 254
    .local v1, "itemNode":Lcom/yulore/sdk/ivr/model/ItemNode;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/yulore/sdk/ivr/model/ItemNode;->getType()Lcom/yulore/sdk/ivr/ItemNodeType;

    move-result-object v3

    sget-object v4, Lcom/yulore/sdk/ivr/ItemNodeType;->LEAF_NODE:Lcom/yulore/sdk/ivr/ItemNodeType;

    if-ne v3, v4, :cond_0

    .line 255
    const/4 v2, 0x1

    .line 261
    .end local v0    # "iNode":Lcom/yulore/sdk/ivr/model/INode;
    .end local v1    # "itemNode":Lcom/yulore/sdk/ivr/model/ItemNode;
    :cond_0
    :goto_0
    return v2

    .line 257
    .restart local v0    # "iNode":Lcom/yulore/sdk/ivr/model/INode;
    :cond_1
    instance-of v3, v0, Lcom/yulore/sdk/ivr/model/ShortcutNode;

    if-eqz v3, :cond_0

    .line 258
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static VCC_menu_isShortcut(Landroid/widget/AdapterView;I)Z
    .locals 3
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;I)Z"
        }
    .end annotation

    .prologue
    .line 238
    .local p0, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x0

    .line 239
    .local v1, "result":Z
    sget-object v2, Lcom/android/incallui/util/VisualCallCenter;->LMA:Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/incallui/util/VisualCallCenter;->LMA:Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

    invoke-virtual {v2}, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->getList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 240
    sget-object v2, Lcom/android/incallui/util/VisualCallCenter;->LMA:Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

    invoke-virtual {v2}, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yulore/sdk/ivr/model/INode;

    .line 241
    .local v0, "iNode":Lcom/yulore/sdk/ivr/model/INode;
    instance-of v2, v0, Lcom/yulore/sdk/ivr/model/ShortcutNode;

    if-eqz v2, :cond_0

    .line 242
    const/4 v1, 0x1

    .line 245
    .end local v0    # "iNode":Lcom/yulore/sdk/ivr/model/INode;
    :cond_0
    return v1
.end method

.method public static VCC_obtainIVR(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 148
    sput-object p0, Lcom/android/incallui/util/VisualCallCenter;->mCallNum:Ljava/lang/String;

    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, "result":Z
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/incallui/util/VisualCallCenter;->isNoMenuIVR:Z

    .line 151
    sget-object v1, Lcom/android/incallui/util/VisualCallCenter;->api:Lcom/yulore/sdk/ivr/YuloreIvrApi;

    if-eqz v1, :cond_0

    .line 152
    sget-object v1, Lcom/android/incallui/util/VisualCallCenter;->api:Lcom/yulore/sdk/ivr/YuloreIvrApi;

    new-instance v2, Lcom/android/incallui/util/VisualCallCenter$1;

    invoke-direct {v2}, Lcom/android/incallui/util/VisualCallCenter$1;-><init>()V

    invoke-interface {v1, v2}, Lcom/yulore/sdk/ivr/YuloreIvrApi;->exists(Lcom/yulore/sdk/ivr/listener/RequestIVRCallBack;)Z

    move-result v0

    .line 179
    :cond_0
    sput-boolean v0, Lcom/android/incallui/util/VisualCallCenter;->isHasIVR:Z

    .line 180
    sget-object v1, Lcom/android/incallui/util/VisualCallCenter;->api:Lcom/yulore/sdk/ivr/YuloreIvrApi;

    if-eqz v1, :cond_1

    .line 181
    sget-object v1, Lcom/android/incallui/util/VisualCallCenter;->api:Lcom/yulore/sdk/ivr/YuloreIvrApi;

    invoke-interface {v1}, Lcom/yulore/sdk/ivr/YuloreIvrApi;->resetCallBack()V

    .line 183
    :cond_1
    return v0
.end method

.method public static VCC_obtainIVRHierarchy(Ljava/lang/String;I)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "position"    # I

    .prologue
    .line 203
    sget-object v1, Lcom/android/incallui/util/VisualCallCenter;->LMA:Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

    if-eqz v1, :cond_0

    .line 204
    sget-object v1, Lcom/android/incallui/util/VisualCallCenter;->LMA:Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

    invoke-virtual {v1}, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yulore/sdk/ivr/model/INode;

    .line 205
    .local v0, "iNode":Lcom/yulore/sdk/ivr/model/INode;
    sget-object v1, Lcom/android/incallui/util/VisualCallCenter;->api:Lcom/yulore/sdk/ivr/YuloreIvrApi;

    invoke-interface {v1, v0}, Lcom/yulore/sdk/ivr/YuloreIvrApi;->getIvrMenu(Lcom/yulore/sdk/ivr/model/INode;)Lcom/yulore/sdk/ivr/model/LayerMenu;

    .line 207
    .end local v0    # "iNode":Lcom/yulore/sdk/ivr/model/INode;
    :cond_0
    return-void
.end method

.method public static VCC_registerNetworkReceiver(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    return-void
.end method

.method public static VCC_setDisplayDailpad(Z)V
    .locals 0
    .param p0, "show"    # Z

    .prologue
    .line 193
    sput-boolean p0, Lcom/android/incallui/util/VisualCallCenter;->isDisplayDailpad:Z

    .line 194
    return-void
.end method

.method public static VCC_setUpdateIVRLimit(I)V
    .locals 2
    .param p0, "index"    # I

    .prologue
    .line 277
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 278
    invoke-static {}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->getInstance()Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    move-result-object v0

    sget-object v1, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;->MOBILE_NETWORK:Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

    invoke-virtual {v0, v1}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->setupdateNetworkType(Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;)V

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 280
    invoke-static {}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->getInstance()Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    move-result-object v0

    sget-object v1, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;->WIFI:Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

    invoke-virtual {v0, v1}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->setupdateNetworkType(Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;)V

    goto :goto_0

    .line 281
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 282
    invoke-static {}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->getInstance()Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    move-result-object v0

    sget-object v1, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;->UNLIMIT:Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

    invoke-virtual {v0, v1}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->setupdateNetworkType(Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;)V

    goto :goto_0

    .line 283
    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    .line 284
    invoke-static {}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->getInstance()Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    move-result-object v0

    sget-object v1, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;->NEVER_UPDATE:Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

    invoke-virtual {v0, v1}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->setupdateNetworkType(Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;)V

    goto :goto_0
.end method

.method public static declared-synchronized VCC_unregisterNetworkReceiver(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 101
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

    .prologue
    .line 424
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getIVRMode()Z
    .locals 1

    .prologue
    .line 330
    sget-boolean v0, Lcom/android/incallui/util/VisualCallCenter;->isIVRMode:Z

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/util/VisualCallCenter;
    .locals 2

    .prologue
    .line 73
    const-class v1, Lcom/android/incallui/util/VisualCallCenter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/util/VisualCallCenter;->instance:Lcom/android/incallui/util/VisualCallCenter;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/android/incallui/util/VisualCallCenter;

    invoke-direct {v0}, Lcom/android/incallui/util/VisualCallCenter;-><init>()V

    sput-object v0, Lcom/android/incallui/util/VisualCallCenter;->instance:Lcom/android/incallui/util/VisualCallCenter;

    .line 76
    :cond_0
    sget-object v0, Lcom/android/incallui/util/VisualCallCenter;->instance:Lcom/android/incallui/util/VisualCallCenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getMenuPressed()Z
    .locals 1

    .prologue
    .line 322
    sget-boolean v0, Lcom/android/incallui/util/VisualCallCenter;->isMenuPressed:Z

    return v0
.end method

.method public static isDisplayIVRPager()Z
    .locals 1

    .prologue
    .line 299
    sget-boolean v0, Lcom/android/incallui/util/VisualCallCenter;->isDispalyIVR:Z

    return v0
.end method

.method public static releaseDisplayIVRPager()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 315
    sput-boolean v1, Lcom/android/incallui/util/VisualCallCenter;->isDispalyIVR:Z

    .line 316
    sput-boolean v1, Lcom/android/incallui/util/VisualCallCenter;->isMenuPressed:Z

    .line 317
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/util/VisualCallCenter;->mNodeList:Ljava/util/List;

    .line 318
    sput-boolean v1, Lcom/android/incallui/util/VisualCallCenter;->isIVRMode:Z

    .line 319
    return-void
.end method

.method public static setDisplayIVRPager(Z)V
    .locals 1
    .param p0, "b"    # Z

    .prologue
    .line 305
    sget-boolean v0, Lcom/android/incallui/util/VisualCallCenter;->isDispalyIVR:Z

    if-eqz v0, :cond_0

    if-nez p0, :cond_0

    .line 306
    sput-boolean p0, Lcom/android/incallui/util/VisualCallCenter;->isDispalyIVR:Z

    .line 307
    sget-object v0, Lcom/android/incallui/util/VisualCallCenter;->onIVRScreenRemovedListener:Lcom/android/incallui/util/VisualCallCenter$OnIVRScreenRemovedListener;

    if-eqz v0, :cond_0

    .line 308
    sget-object v0, Lcom/android/incallui/util/VisualCallCenter;->onIVRScreenRemovedListener:Lcom/android/incallui/util/VisualCallCenter$OnIVRScreenRemovedListener;

    invoke-interface {v0}, Lcom/android/incallui/util/VisualCallCenter$OnIVRScreenRemovedListener;->ivrScreenRemoved()V

    .line 311
    :cond_0
    sput-boolean p0, Lcom/android/incallui/util/VisualCallCenter;->isDispalyIVR:Z

    .line 312
    return-void
.end method

.method public static setIVRMode(Z)V
    .locals 0
    .param p0, "b"    # Z

    .prologue
    .line 326
    sput-boolean p0, Lcom/android/incallui/util/VisualCallCenter;->isIVRMode:Z

    .line 327
    return-void
.end method


# virtual methods
.method public VCC_deleteShortCutsFromInCallUI()V
    .locals 0

    .prologue
    .line 420
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

    .prologue
    .line 415
    const/4 v0, 0x0

    return-object v0
.end method

.method public VCC_isShortcutPath(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 410
    const/4 v0, 0x0

    return v0
.end method

.method public setOnIVRScreenRemovedListener(Lcom/android/incallui/util/VisualCallCenter$OnIVRScreenRemovedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/incallui/util/VisualCallCenter$OnIVRScreenRemovedListener;

    .prologue
    .line 85
    sput-object p1, Lcom/android/incallui/util/VisualCallCenter;->onIVRScreenRemovedListener:Lcom/android/incallui/util/VisualCallCenter$OnIVRScreenRemovedListener;

    .line 86
    return-void
.end method
