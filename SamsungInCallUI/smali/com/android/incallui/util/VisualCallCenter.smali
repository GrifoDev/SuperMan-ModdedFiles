.class public Lcom/android/incallui/util/VisualCallCenter;
.super Ljava/lang/Object;


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

.field static api:Lcom/yulore/sdk/ivr/c;

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

    sget-object v0, Lcom/android/incallui/util/VisualCallCenter;->api:Lcom/yulore/sdk/ivr/c;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/incallui/util/VisualCallCenter;->isHasIVR:Z

    if-eqz v0, :cond_0

    const-string v0, "VisualCallCenter"

    const-string v1, "call api.checkUpdate():"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/incallui/util/VisualCallCenter;->api:Lcom/yulore/sdk/ivr/c;

    invoke-interface {v0}, Lcom/yulore/sdk/ivr/c;->a()V

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

    invoke-static {}, Lcom/yulore/sdk/ivr/a/a;->a()Lcom/yulore/sdk/ivr/a/a;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v2}, Lcom/yulore/sdk/ivr/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yulore/sdk/ivr/c;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/util/VisualCallCenter;->api:Lcom/yulore/sdk/ivr/c;

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

    sget-object v1, Lcom/android/incallui/util/VisualCallCenter;->api:Lcom/yulore/sdk/ivr/c;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/android/incallui/util/VisualCallCenter;->api:Lcom/yulore/sdk/ivr/c;

    invoke-interface {v0, p0, p1}, Lcom/yulore/sdk/ivr/c;->a(J)Ljava/lang/String;

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

    invoke-static {}, Lcom/yulore/sdk/ivr/a/a;->a()Lcom/yulore/sdk/ivr/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yulore/sdk/ivr/a/a;->d()Lcom/yulore/sdk/ivr/b;

    move-result-object v0

    sget-object v1, Lcom/yulore/sdk/ivr/b;->b:Lcom/yulore/sdk/ivr/b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/yulore/sdk/ivr/b;->a:Lcom/yulore/sdk/ivr/b;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/yulore/sdk/ivr/b;->d:Lcom/yulore/sdk/ivr/b;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x5

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static VCC_init(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v2

    const-string v0, "user"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const-string v1, "/data/data/com.samsung.android.incallui/"

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "VisualCallCenter"

    const-string v1, "Direct Boot mode running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/data/user_de/0/com.samsung.android.incallui/"

    move-object p0, v2

    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "VisualCallCenter"

    const-string v3, "!file.exists():"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "VisualCallCenter"

    const-string v2, "file success:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Lcom/yulore/sdk/ivr/a$a;

    invoke-direct {v1, p0}, Lcom/yulore/sdk/ivr/a$a;-><init>(Landroid/content/Context;)V

    const-string v2, "7OX8e8HMMDUfp4glcsz9Mjc9F4JwKyJl"

    invoke-virtual {v1, v2}, Lcom/yulore/sdk/ivr/a$a;->b(Ljava/lang/String;)Lcom/yulore/sdk/ivr/a$a;

    move-result-object v1

    const-string v2, "EJxt0qbvSidBlSxhgzw27KxdrrhdLrW9b2J51YCwQ3lwuF8RemYAbDYYragwlauto2zdyd4hvrlWuNO5rs0snpdMeGhWqfnfzvqhqBvtsci3nHMJzkCTBAV3WR9cngCRiWFLAlXKuwXhwhOzn5Z6iP3cnhvN1RwwOFHf7"

    invoke-virtual {v1, v2}, Lcom/yulore/sdk/ivr/a$a;->a(Ljava/lang/String;)Lcom/yulore/sdk/ivr/a$a;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "yulore/ivr"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/yulore/sdk/ivr/a$a;->a(Ljava/io/File;)Lcom/yulore/sdk/ivr/a$a;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "/"

    const-string v3, "system/csc"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/yulore/sdk/ivr/a$a;->b(Ljava/io/File;)Lcom/yulore/sdk/ivr/a$a;

    move-result-object v0

    sget-object v1, Lcom/yulore/sdk/ivr/b;->b:Lcom/yulore/sdk/ivr/b;

    invoke-virtual {v0, v1}, Lcom/yulore/sdk/ivr/a$a;->a(Lcom/yulore/sdk/ivr/b;)Lcom/yulore/sdk/ivr/a$a;

    move-result-object v0

    const/16 v1, 0xa8

    invoke-virtual {v0, v1}, Lcom/yulore/sdk/ivr/a$a;->a(I)Lcom/yulore/sdk/ivr/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yulore/sdk/ivr/a$a;->a()Lcom/yulore/sdk/ivr/a;

    move-result-object v0

    invoke-static {}, Lcom/yulore/sdk/ivr/a/a;->a()Lcom/yulore/sdk/ivr/a/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/yulore/sdk/ivr/a/a;->a(Lcom/yulore/sdk/ivr/a;Z)V

    :goto_1
    return-void

    :cond_1
    const-string v0, "VisualCallCenter"

    const-string v1, "file fail:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static VCC_isNoMenuIVR()Z
    .locals 1

    sget-boolean v0, Lcom/android/incallui/util/VisualCallCenter;->isNoMenuIVR:Z

    return v0
.end method

.method public static VCC_menu_getAction(Landroid/widget/AdapterView;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;I)Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/android/incallui/util/VisualCallCenter;->LMA:Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/util/VisualCallCenter;->LMA:Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

    invoke-virtual {v0}, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/util/VisualCallCenter;->LMA:Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

    invoke-virtual {v0}, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yulore/sdk/ivr/model/INode;

    instance-of v3, v0, Lcom/yulore/sdk/ivr/model/ItemNode;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/yulore/sdk/ivr/model/ItemNode;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/yulore/sdk/ivr/model/ItemNode;->f()Lcom/yulore/sdk/ivr/ItemNodeType;

    move-result-object v0

    sget-object v3, Lcom/yulore/sdk/ivr/ItemNodeType;->a:Lcom/yulore/sdk/ivr/ItemNodeType;

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    move v2, v0

    :cond_0
    :goto_1
    return v2

    :cond_1
    instance-of v0, v0, Lcom/yulore/sdk/ivr/model/ShortcutNode;

    if-eqz v0, :cond_0

    move v2, v1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public static VCC_menu_isShortcut(Landroid/widget/AdapterView;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;I)Z"
        }
    .end annotation

    const/4 v1, 0x0

    sget-object v0, Lcom/android/incallui/util/VisualCallCenter;->LMA:Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/util/VisualCallCenter;->LMA:Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

    invoke-virtual {v0}, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/util/VisualCallCenter;->LMA:Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

    invoke-virtual {v0}, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yulore/sdk/ivr/model/INode;

    instance-of v0, v0, Lcom/yulore/sdk/ivr/model/ShortcutNode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static VCC_obtainIVR(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    sput-object p0, Lcom/android/incallui/util/VisualCallCenter;->mCallNum:Ljava/lang/String;

    sput-boolean v0, Lcom/android/incallui/util/VisualCallCenter;->isNoMenuIVR:Z

    sget-object v1, Lcom/android/incallui/util/VisualCallCenter;->api:Lcom/yulore/sdk/ivr/c;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/android/incallui/util/VisualCallCenter;->api:Lcom/yulore/sdk/ivr/c;

    new-instance v1, Lcom/android/incallui/util/VisualCallCenter$1;

    invoke-direct {v1}, Lcom/android/incallui/util/VisualCallCenter$1;-><init>()V

    invoke-interface {v0, v1}, Lcom/yulore/sdk/ivr/c;->a(Lcom/yulore/sdk/ivr/c/a;)Z

    move-result v0

    :cond_0
    sput-boolean v0, Lcom/android/incallui/util/VisualCallCenter;->isHasIVR:Z

    sget-object v1, Lcom/android/incallui/util/VisualCallCenter;->api:Lcom/yulore/sdk/ivr/c;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/incallui/util/VisualCallCenter;->api:Lcom/yulore/sdk/ivr/c;

    invoke-interface {v1}, Lcom/yulore/sdk/ivr/c;->b()V

    :cond_1
    return v0
.end method

.method public static VCC_obtainIVRHierarchy(Ljava/lang/String;I)V
    .locals 2

    sget-object v0, Lcom/android/incallui/util/VisualCallCenter;->LMA:Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/util/VisualCallCenter;->LMA:Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

    invoke-virtual {v0}, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yulore/sdk/ivr/model/INode;

    sget-object v1, Lcom/android/incallui/util/VisualCallCenter;->api:Lcom/yulore/sdk/ivr/c;

    invoke-interface {v1, v0}, Lcom/yulore/sdk/ivr/c;->a(Lcom/yulore/sdk/ivr/model/INode;)Lcom/yulore/sdk/ivr/model/LayerMenu;

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

    invoke-static {}, Lcom/yulore/sdk/ivr/a/a;->a()Lcom/yulore/sdk/ivr/a/a;

    move-result-object v0

    sget-object v1, Lcom/yulore/sdk/ivr/b;->a:Lcom/yulore/sdk/ivr/b;

    invoke-virtual {v0, v1}, Lcom/yulore/sdk/ivr/a/a;->a(Lcom/yulore/sdk/ivr/b;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    invoke-static {}, Lcom/yulore/sdk/ivr/a/a;->a()Lcom/yulore/sdk/ivr/a/a;

    move-result-object v0

    sget-object v1, Lcom/yulore/sdk/ivr/b;->b:Lcom/yulore/sdk/ivr/b;

    invoke-virtual {v0, v1}, Lcom/yulore/sdk/ivr/a/a;->a(Lcom/yulore/sdk/ivr/b;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    invoke-static {}, Lcom/yulore/sdk/ivr/a/a;->a()Lcom/yulore/sdk/ivr/a/a;

    move-result-object v0

    sget-object v1, Lcom/yulore/sdk/ivr/b;->c:Lcom/yulore/sdk/ivr/b;

    invoke-virtual {v0, v1}, Lcom/yulore/sdk/ivr/a/a;->a(Lcom/yulore/sdk/ivr/b;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/yulore/sdk/ivr/a/a;->a()Lcom/yulore/sdk/ivr/a/a;

    move-result-object v0

    sget-object v1, Lcom/yulore/sdk/ivr/b;->d:Lcom/yulore/sdk/ivr/b;

    invoke-virtual {v0, v1}, Lcom/yulore/sdk/ivr/a/a;->a(Lcom/yulore/sdk/ivr/b;)V

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
