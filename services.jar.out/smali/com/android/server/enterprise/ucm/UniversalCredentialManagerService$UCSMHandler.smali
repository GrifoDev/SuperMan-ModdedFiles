.class Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;
.super Landroid/os/Handler;
.source "UniversalCredentialManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UCSMHandler"
.end annotation


# static fields
.field public static final MSG_CLEAN_INFO:I = 0x3

.field public static final MSG_CLEAN_USER_INFO:I = 0x1

.field public static final MSG_CONTAINER_LOCK_STATUS_UPDATE:I = 0x9

.field public static final MSG_LOAD_ADMINS:I = 0x2

.field public static final MSG_LOAD_PLUGINS:I = 0x4

.field public static final MSG_LOAD_WHITELIST_AND_EXEMPT_APPS:I = 0x5

.field public static final MSG_LOCK_STATUS_UPDATE:I = 0x7

.field public static final MSG_PRE_ADMIN_REMOVED:I = 0xa

.field public static final MSG_REINSTALL_CA_CERT:I = 0x8

.field public static final MSG_SYNC_UP_DATA:I = 0x6


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 68

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v61, v0

    packed-switch v61, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/16 v44, 0x0

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/16 v61, 0x1

    move/from16 v0, v61

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v45, v0

    const-string/jumbo v61, "adminUid"

    const/16 v62, 0x0

    aput-object v61, v45, v62

    const/16 v61, 0x1

    move/from16 v0, v61

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v61, 0x0

    aput-object v5, v46, v61

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get6(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v61

    const-string/jumbo v62, "UniversalCredentialEnforcedLockTypeTable"

    move-object/from16 v0, v61

    move-object/from16 v1, v62

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v44

    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v63, "performPreAdminCleanup - Enforce Lock Type status- "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v20

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get0()Z

    move-result v61

    if-eqz v61, :cond_1

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v63, "performPreAdminCleanup - Exception delete"

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v63

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-wrap6(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    const-string/jumbo v62, "****MSG_CLEAN_USER_INFO block started****"

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v52, v0

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v63, "userId - "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v61

    if-eqz v61, :cond_2

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    const-string/jumbo v62, "notifyChangeToPlugin is called for user removed..."

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v61, "userId"

    move-object/from16 v0, v19

    move-object/from16 v1, v61

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v61

    const/16 v62, 0x0

    const/16 v63, 0xb

    move-object/from16 v0, v61

    move-object/from16 v1, v62

    move/from16 v2, v63

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v52

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->removeEnforcedLockTypeNotification(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v52

    invoke-static {v0, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-wrap11(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;I)V

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    const-string/jumbo v62, "****MSG_CLEAN_USER_INFO block ended****"

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_1
    move-exception v20

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v63, "notifyChangeToPlugin Exception "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_3
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    const-string/jumbo v62, "****MSG_LOAD_ADMINS block started****"

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-wrap4(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get3(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v61

    if-eqz v61, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get3(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v61

    move-object/from16 v0, v61

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get3(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v61

    invoke-interface/range {v61 .. v61}, Ljava/util/List;->size()I

    move-result v61

    if-lez v61, :cond_3

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v63, "adminIds size- "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get3(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/util/List;->size()I

    move-result v63

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    :goto_3
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    const-string/jumbo v62, "****MSG_LOAD_ADMINS block ended****"

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get8(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v61

    const/16 v62, 0x4

    invoke-virtual/range {v61 .. v62}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get8(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v61

    move-object/from16 v0, v61

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :catch_2
    move-exception v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :pswitch_4
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    const-string/jumbo v62, "****MSG_CLEAN_INFO block started****"

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_3
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, [I

    if-eqz v13, :cond_c

    array-length v0, v13

    move/from16 v61, v0

    if-lez v61, :cond_c

    const/16 v61, 0x0

    array-length v0, v13

    move/from16 v63, v0

    move/from16 v62, v61

    :goto_4
    move/from16 v0, v62

    move/from16 v1, v63

    if-ge v0, v1, :cond_c

    aget v61, v13, v62

    invoke-static/range {v61 .. v61}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Integer;->intValue()I

    move-result v61

    invoke-static/range {v61 .. v61}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v52

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "uid - "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string/jumbo v65, ", userId-"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    move-object/from16 v0, v61

    move-object/from16 v1, v64

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get3(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v61

    move-object/from16 v0, v61

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v61

    if-eqz v61, :cond_4

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    const-string/jumbo v64, "UCS admin uninstall. Start cleaning...."

    move-object/from16 v0, v61

    move-object/from16 v1, v64

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Integer;->intValue()I

    move-result v64

    move-object/from16 v0, v61

    move/from16 v1, v64

    invoke-static {v0, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-wrap7(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Integer;->intValue()I

    move-result v64

    move-object/from16 v0, v61

    move/from16 v1, v64

    invoke-static {v0, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-wrap8(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get3(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v61

    move-object/from16 v0, v61

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get2(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v61

    move-object/from16 v0, v61

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v61

    if-eqz v61, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get2(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v61

    move-object/from16 v0, v61

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/lang/String;

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Active plugin is removed. Perform clean up for uid-"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string/jumbo v65, ", pluginPkg-"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    move-object/from16 v0, v61

    move-object/from16 v1, v64

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-wrap3(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v61

    if-lez v61, :cond_6

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v61

    if-eqz v61, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "notifyLicenseStatus expire - adminUid-"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    move-object/from16 v0, v61

    move-object/from16 v1, v64

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get7(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v61

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v64

    move-object/from16 v0, v61

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v41

    if-eqz v41, :cond_5

    const/16 v61, 0x0

    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v64, v0

    :goto_5
    move/from16 v0, v61

    move/from16 v1, v64

    if-ge v0, v1, :cond_5

    aget-object v40, v41, v61

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v65

    new-instance v66, Ljava/lang/StringBuilder;

    invoke-direct/range {v66 .. v66}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v67, "Sending event update to package "

    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v66

    invoke-static/range {v65 .. v66}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v38, Landroid/content/Intent;

    const-string/jumbo v65, "com.samsung.android.knox.intent.action.UCM_NOTIFY_EVENT"

    move-object/from16 v0, v38

    move-object/from16 v1, v65

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v65, "event_id"

    const/16 v66, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v65

    move/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v65, "package_name"

    move-object/from16 v0, v19

    move-object/from16 v1, v65

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v38

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :try_start_4
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v65

    const-string/jumbo v66, "Sending intent with UCSM Other permission..."

    invoke-static/range {v65 .. v66}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get5(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/Context;

    move-result-object v65

    new-instance v66, Landroid/os/UserHandle;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v67

    invoke-static/range {v67 .. v67}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v67

    invoke-direct/range {v66 .. v67}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v67, "com.samsung.android.knox.permission.KNOX_UCM_OTHER"

    move-object/from16 v0, v65

    move-object/from16 v1, v38

    move-object/from16 v2, v66

    move-object/from16 v3, v67

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get5(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/Context;

    move-result-object v65

    new-instance v66, Landroid/os/UserHandle;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v67

    invoke-static/range {v67 .. v67}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v67

    invoke-direct/range {v66 .. v67}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v67, "com.sec.enterprise.permission.KNOX_UCM_OTHER"

    move-object/from16 v0, v65

    move-object/from16 v1, v38

    move-object/from16 v2, v66

    move-object/from16 v3, v67

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_6
    add-int/lit8 v61, v61, 0x1

    goto/16 :goto_5

    :catch_3
    move-exception v47

    :try_start_5
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v65

    new-instance v66, Ljava/lang/StringBuilder;

    invoke-direct/range {v66 .. v66}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v67, "  Exception se-"

    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v66

    invoke-static/range {v65 .. v66}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :catch_4
    move-exception v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_6
    :try_start_6
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    const-string/jumbo v64, "No admin found related to package..."

    move-object/from16 v0, v61

    move-object/from16 v1, v64

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get2(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v61

    move-object/from16 v0, v61

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-wrap10(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;Ljava/lang/String;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get9(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v61

    move-object/from16 v0, v61

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v61

    if-eqz v61, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get9(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v61

    move-object/from16 v0, v61

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Calling performWhitelistAppCleanup for userId-"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string/jumbo v65, ", packageName-"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    move-object/from16 v0, v61

    move-object/from16 v1, v64

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v52

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-wrap12(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get9(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v61

    move-object/from16 v0, v61

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get4(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v61

    move-object/from16 v0, v61

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v61

    if-eqz v61, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get4(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v61

    move-object/from16 v0, v61

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Calling performExemptedAppCleanup for userId-"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string/jumbo v65, ", packageName-"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    move-object/from16 v0, v61

    move-object/from16 v1, v64

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v52

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-wrap9(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get4(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v61

    move-object/from16 v0, v61

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v61

    if-eqz v61, :cond_b

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    const-string/jumbo v64, "notifyChangeToPlugin is called for package uninstalled..."

    move-object/from16 v0, v61

    move-object/from16 v1, v64

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :try_start_7
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v61, "userId"

    move-object/from16 v0, v19

    move-object/from16 v1, v61

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v61, "packageUid"

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Integer;->intValue()I

    move-result v64

    move-object/from16 v0, v19

    move-object/from16 v1, v61

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v61

    const/16 v64, 0x0

    const/16 v65, 0xc

    move-object/from16 v0, v61

    move-object/from16 v1, v64

    move/from16 v2, v65

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :cond_b
    :goto_7
    add-int/lit8 v61, v62, 0x1

    move/from16 v62, v61

    goto/16 :goto_4

    :catch_5
    move-exception v20

    :try_start_8
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "notifyChangeToPlugin Exception "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    move-object/from16 v0, v61

    move-object/from16 v1, v64

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_c
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    const-string/jumbo v62, "****MSG_CLEAN_INFO block ended****"

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    :pswitch_5
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    const-string/jumbo v62, "****MSG_LOAD_PLUGINS block started****"

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-wrap0(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/ArrayList;

    move-result-object v17

    if-eqz v17, :cond_10

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v61

    if-lez v61, :cond_10

    const/16 v39, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v60

    :cond_d
    :goto_8
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v61

    if-eqz v61, :cond_f

    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Landroid/content/ContentValues;

    const-string/jumbo v61, "storagePackageName"

    move-object/from16 v0, v58

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    const-string/jumbo v61, "appUid"

    move-object/from16 v0, v58

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Integer;->intValue()I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    move-result v12

    const/16 v61, 0x3e8

    move/from16 v0, v61

    if-eq v12, v0, :cond_d

    if-eqz v12, :cond_d

    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get2(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v61

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v61 .. v62}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v61

    if-nez v61, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get2(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v61

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    move-object/from16 v0, v61

    move-object/from16 v1, v62

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v63, "Caching plugin app id-"

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v62

    const-string/jumbo v63, ", packageName-"

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_8

    :catch_6
    move-exception v20

    :try_start_b
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v63, "Exception "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    goto/16 :goto_8

    :catch_7
    move-exception v20

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v63, "Exception "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_9
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    const-string/jumbo v62, "****MSG_LOAD_PLUGINS block ended****"

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get8(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v61

    const/16 v62, 0x5

    invoke-virtual/range {v61 .. v62}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get8(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v61

    move-object/from16 v0, v61

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_f
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get2(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v61

    invoke-interface/range {v61 .. v61}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_a
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v61

    if-eqz v61, :cond_e

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/Map$Entry;

    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/Integer;

    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/String;

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v63, "Plugin ID = "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v62

    const-string/jumbo v63, ", Plugin package = "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_10
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    const-string/jumbo v62, "No active plugin found"

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    goto/16 :goto_9

    :pswitch_6
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    const-string/jumbo v62, "****MSG_LOAD_WHITELIST_AND_EXEMPT_APPS block started****"

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-wrap2(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/ArrayList;

    move-result-object v17

    if-eqz v17, :cond_14

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v61

    if-lez v61, :cond_14

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v63, "getAllWhitelistedApps - Size-"

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v63

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v39, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v60

    :cond_11
    :goto_b
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v61

    if-eqz v61, :cond_13

    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Landroid/content/ContentValues;

    const-string/jumbo v61, "appPackage"

    move-object/from16 v0, v58

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    const-string/jumbo v61, "appUid"

    move-object/from16 v0, v58

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Integer;->intValue()I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    move-result v12

    :try_start_e
    const-string/jumbo v61, "*"

    move-object/from16 v0, v39

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v61

    if-nez v61, :cond_11

    const/16 v61, 0x3e8

    move/from16 v0, v61

    if-eq v12, v0, :cond_11

    if-eqz v12, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get9(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v61

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v61 .. v62}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v61

    if-nez v61, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get9(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v61

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    move-object/from16 v0, v61

    move-object/from16 v1, v62

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v63, "Caching WhiteList app id-"

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v62

    const-string/jumbo v63, ", packageName-"

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    goto/16 :goto_b

    :catch_8
    move-exception v20

    :try_start_f
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v63, "Exception "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    goto/16 :goto_b

    :catch_9
    move-exception v20

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v63, "Exception -"

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    :goto_c
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    const-string/jumbo v62, "****MSG_LOAD_WHITELIST_AND_EXEMPT_APPS block ended****"

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_13
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get9(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v61

    invoke-interface/range {v61 .. v61}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_d
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v61

    if-eqz v61, :cond_15

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/Map$Entry;

    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/Integer;

    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/String;

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v63, "WHITELIST App UID = "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v62

    const-string/jumbo v63, ", App package = "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_14
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    const-string/jumbo v62, "getAllWhitelistedApps DB is empty..."

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-wrap1(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/ArrayList;

    move-result-object v18

    if-eqz v18, :cond_18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v61

    if-lez v61, :cond_18

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v63, "getAllExemptedApps - Size-"

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v63

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v39, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v60

    :cond_16
    :goto_e
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v61

    if-eqz v61, :cond_17

    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Landroid/content/ContentValues;

    const-string/jumbo v61, "appPackage"

    move-object/from16 v0, v58

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    const-string/jumbo v61, "appUid"

    move-object/from16 v0, v58

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Integer;->intValue()I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_9

    move-result v12

    :try_start_11
    const-string/jumbo v61, "com.samsung.knox.virtual.wifi"

    move-object/from16 v0, v39

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v61

    if-nez v61, :cond_16

    const/16 v61, 0x3e8

    move/from16 v0, v61

    if-eq v12, v0, :cond_16

    if-eqz v12, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get4(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v61

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v61 .. v62}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v61

    if-nez v61, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get4(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v61

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    move-object/from16 v0, v61

    move-object/from16 v1, v62

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v63, "Caching Exempted app id-"

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v62

    const-string/jumbo v63, ", packageName-"

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_a

    goto/16 :goto_e

    :catch_a
    move-exception v20

    :try_start_12
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v63, "Exception "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get4(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v61

    invoke-interface/range {v61 .. v61}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_f
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v61

    if-eqz v61, :cond_12

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/Map$Entry;

    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/Integer;

    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/String;

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v63, "EXEPMT-> App UID = "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v62

    const-string/jumbo v63, ", App package = "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_18
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    const-string/jumbo v62, "getAllExemptedApps DB is empty..."

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9

    goto/16 :goto_c

    :pswitch_7
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    const-string/jumbo v62, "****MSG_SYNC_UP_DATA block started****"

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_13
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v61

    const/16 v62, 0x0

    const/16 v63, 0x11

    move-object/from16 v0, v61

    move-object/from16 v1, v62

    move/from16 v2, v63

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-wrap5(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_1a

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v61

    if-lez v61, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get5(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/Context;

    move-result-object v61

    const-string/jumbo v62, "user"

    invoke-virtual/range {v61 .. v62}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/os/UserManager;

    invoke-virtual/range {v35 .. v35}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v57

    invoke-interface/range {v57 .. v57}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v56

    :cond_19
    :goto_10
    invoke-interface/range {v56 .. v56}, Ljava/util/Iterator;->hasNext()Z

    move-result v61

    if-eqz v61, :cond_23

    invoke-interface/range {v56 .. v56}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v55

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v52, v0

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v63, "Valid userid-"

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v61

    move-object/from16 v0, v61

    invoke-interface {v11, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v61

    if-eqz v61, :cond_19

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v63, "Found userid on cache-"

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v61

    move-object/from16 v0, v61

    invoke-interface {v11, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_b

    goto :goto_10

    :catch_b
    move-exception v20

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v63, "Exception-"

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    new-instance v51, Ljava/util/ArrayList;

    invoke-direct/range {v51 .. v51}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v43

    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get3(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v61

    invoke-interface/range {v61 .. v61}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1b
    :goto_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v61

    if-eqz v61, :cond_1c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v63, "MSG_SYNC_UP_DATA adminId-"

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get7(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v61

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v62

    invoke-virtual/range {v61 .. v62}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v41

    if-nez v41, :cond_24

    move-object/from16 v0, v51

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v61

    if-nez v61, :cond_1b

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v63, "MSG_SYNC_UP_DATA remove adminid : "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v51

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_c

    goto :goto_11

    :catch_c
    move-exception v21

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v63, "Exception-"

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get2(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v61

    invoke-interface/range {v61 .. v61}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_1d
    :goto_12
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v61

    if-eqz v61, :cond_1e

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/Map$Entry;

    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/Integer;

    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/String;

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v63, "MSG_SYNC_UP_DATA plugin id -"

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v63, "MSG_SYNC_UP_DATA plugin package -"

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get7(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v61

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v62

    invoke-virtual/range {v61 .. v62}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v41

    if-nez v41, :cond_27

    move-object/from16 v0, v51

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v61

    if-nez v61, :cond_1d

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v63, "MSG_SYNC_UP_DATA remove plugin : "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v51

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_d

    goto/16 :goto_12

    :catch_d
    move-exception v22

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v63, "Exception-"

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get4(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v61

    invoke-interface/range {v61 .. v61}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_1f
    :goto_13
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v61

    if-eqz v61, :cond_20

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/Map$Entry;

    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/Integer;

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v63, "MSG_SYNC_UP_DATA exempt app id -"

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get7(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v61

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v62

    invoke-virtual/range {v61 .. v62}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v41

    if-nez v41, :cond_1f

    move-object/from16 v0, v51

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v61

    if-nez v61, :cond_1f

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v63, "MSG_SYNC_UP_DATA remove exempt app : "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v51

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_e

    goto :goto_13

    :catch_e
    move-exception v23

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v63, "Exception-"

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    :try_start_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get9(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v61

    invoke-interface/range {v61 .. v61}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_21
    :goto_14
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v61

    if-eqz v61, :cond_22

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/Map$Entry;

    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/Integer;

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v63, "MSG_SYNC_UP_DATA Whitelist app id -"

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get7(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v61

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v62

    invoke-virtual/range {v61 .. v62}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v41

    if-nez v41, :cond_21

    move-object/from16 v0, v51

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v61

    if-nez v61, :cond_21

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v63, "MSG_SYNC_UP_DATA remove Whitelist app : "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v51

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_f

    goto :goto_14

    :catch_f
    move-exception v24

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v63, "Exception-"

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    invoke-interface/range {v51 .. v51}, Ljava/util/List;->size()I

    move-result v61

    if-lez v61, :cond_2b

    invoke-interface/range {v51 .. v51}, Ljava/util/List;->size()I

    move-result v61

    move/from16 v0, v61

    new-array v15, v0, [I

    const/16 v29, 0x0

    invoke-interface/range {v51 .. v51}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :goto_15
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v61

    if-eqz v61, :cond_2a

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Integer;

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v63, "adding clean app id-"

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v61

    aput v61, v15, v29

    add-int/lit8 v29, v29, 0x1

    goto :goto_15

    :cond_23
    :try_start_18
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v54

    :goto_16
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->hasNext()Z

    move-result v61

    if-eqz v61, :cond_1a

    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/Integer;

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v63, "InValid userid-"

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get8(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v61

    const/16 v62, 0x1

    invoke-virtual/range {v61 .. v62}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v61

    move/from16 v0, v61

    iput v0, v14, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get8(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v61

    move-object/from16 v0, v61

    invoke-virtual {v0, v14}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_b

    goto :goto_16

    :cond_24
    :try_start_19
    const-string/jumbo v61, "com.samsung.android.knox.permission.KNOX_UCM_ESE"

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v62

    move-object/from16 v0, v43

    move-object/from16 v1, v61

    move/from16 v2, v62

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v61

    if-eqz v61, :cond_25

    const-string/jumbo v61, "com.samsung.android.knox.permission.KNOX_UCM_OTHER"

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v62

    move-object/from16 v0, v43

    move-object/from16 v1, v61

    move/from16 v2, v62

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v61

    if-nez v61, :cond_26

    :cond_25
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    const-string/jumbo v62, "  Admin has valid permission. Processing further..."

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :cond_26
    const-string/jumbo v61, "com.sec.enterprise.permission.KNOX_UCM_ESE"

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v62

    move-object/from16 v0, v43

    move-object/from16 v1, v61

    move/from16 v2, v62

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v61

    if-eqz v61, :cond_25

    const-string/jumbo v61, "com.sec.enterprise.permission.KNOX_UCM_OTHER"

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v62

    move-object/from16 v0, v43

    move-object/from16 v1, v61

    move/from16 v2, v62

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v61

    if-eqz v61, :cond_25

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    const-string/jumbo v62, "  Admin don\'t has UCS permission..."

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v62

    invoke-static/range {v61 .. v62}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-wrap13(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;I)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_c

    goto/16 :goto_11

    :cond_27
    :try_start_1a
    const-string/jumbo v61, "com.samsung.android.knox.permission.KNOX_UCM_PLUGIN"

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v62

    move-object/from16 v0, v43

    move-object/from16 v1, v61

    move/from16 v2, v62

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v61

    if-eqz v61, :cond_28

    const-string/jumbo v61, "com.sec.enterprise.permission.KNOX_UCM_PLUGIN"

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v62

    move-object/from16 v0, v43

    move-object/from16 v1, v61

    move/from16 v2, v62

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v61

    if-nez v61, :cond_29

    :cond_28
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    const-string/jumbo v62, "  Agent has UCS PLUGIN permission. Processing further..."

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    :cond_29
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    const-string/jumbo v62, "  Agent don\'t has UCS PLUGIN permission. Notifying admin.."

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    const/16 v62, 0x2

    move-object/from16 v0, v61

    move/from16 v1, v62

    move-object/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->notifyLicenseStatus(ILjava/lang/String;)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_d

    goto/16 :goto_12

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get8(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v61

    const/16 v62, 0x3

    invoke-virtual/range {v61 .. v62}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    iput-object v15, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    const-string/jumbo v62, "MSG_SYNC_UP_DATA calling MSG_CLEAN_INFO..."

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get8(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v61

    move-object/from16 v0, v61

    invoke-virtual {v0, v14}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_2b
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    const-string/jumbo v62, "****MSG_SYNC_UP_DATA block ended****"

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_8
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    const-string/jumbo v62, "****MSG_LOCK_STATUS_UPDATE block started****"

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v61

    if-eqz v61, :cond_2c

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    const-string/jumbo v62, "notifyChangeToPlugin is called for Lock status update..."

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get5(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/Context;

    move-result-object v61

    const-string/jumbo v62, "keyguard"

    invoke-virtual/range {v61 .. v62}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/app/KeyguardManager;

    invoke-virtual/range {v34 .. v34}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v32

    :try_start_1b
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v61, "userId"

    const/16 v62, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v61

    move/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v32, :cond_2d

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v61

    const/16 v62, 0x0

    const/16 v63, 0xf

    move-object/from16 v0, v61

    move-object/from16 v1, v62

    move/from16 v2, v63

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_10

    :cond_2c
    :goto_17
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    const-string/jumbo v62, "****MSG_LOCK_STATUS_UPDATE block ended****"

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2d
    :try_start_1c
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v61

    const/16 v62, 0x0

    const/16 v63, 0x10

    move-object/from16 v0, v61

    move-object/from16 v1, v62

    move/from16 v2, v63

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_10

    goto :goto_17

    :catch_10
    move-exception v20

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v63, "notifyChangeToPlugin Exception "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    :pswitch_9
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v61

    if-eqz v61, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v48, v0

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v63, "notifyChangeToPlugin is called for container Lock status update containerId-"

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v62

    const-string/jumbo v63, ", status-"

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1d
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v61, "userId"

    move-object/from16 v0, v19

    move-object/from16 v1, v61

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v61, 0x1

    move/from16 v0, v48

    move/from16 v1, v61

    if-eq v0, v1, :cond_2e

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v61

    const/16 v62, 0x0

    const/16 v63, 0x14

    move-object/from16 v0, v61

    move-object/from16 v1, v62

    move/from16 v2, v63

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_11

    goto/16 :goto_0

    :catch_11
    move-exception v20

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v63, "notifyChangeToPlugin Exception "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2e
    :try_start_1e
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v61

    const/16 v62, 0x0

    const/16 v63, 0x15

    move-object/from16 v0, v61

    move-object/from16 v1, v62

    move/from16 v2, v63

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_11

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_9
        :pswitch_0
    .end packed-switch
.end method
