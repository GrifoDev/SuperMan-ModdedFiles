.class Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine$1;
.super Ljava/lang/Object;
.source "YuloreIvrEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->copyOfflinePacket()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

.field final synthetic val$sp:Lcom/yulore/android/common/util/SharedPreferencesUtility;


# direct methods
.method constructor <init>(Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;Lcom/yulore/android/common/util/SharedPreferencesUtility;)V
    .locals 0
    .param p1, "this$0"    # Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine$1;->this$0:Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    iput-object p2, p0, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine$1;->val$sp:Lcom/yulore/android/common/util/SharedPreferencesUtility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 336
    const-string v2, "YuloreIVR"

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, " prepare to delete all old data except zip file "

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Lcom/yulore/android/common/util/Logger;->print(Ljava/lang/String;[Ljava/lang/String;)V

    .line 337
    iget-object v2, p0, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine$1;->this$0:Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    # getter for: Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->ivrFileDir:Ljava/io/File;
    invoke-static {v2}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->access$100(Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/yulore/android/common/util/FileUtils;->deleteFile(Ljava/io/File;)V

    .line 338
    const-string v2, "YuloreIVR"

    const-string v3, " delete all old data successfully, prepare to unzip the file"

    invoke-static {v2, v3}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string v2, "YuloreIVR"

    new-array v3, v6, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " start copy assets file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine$1;->this$0:Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    # getter for: Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->mFileName:Ljava/lang/String;
    invoke-static {v5}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->access$200(Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine$1;->this$0:Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    # getter for: Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->ivrFileDir:Ljava/io/File;
    invoke-static {v5}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->access$100(Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Lcom/yulore/android/common/util/Logger;->print(Ljava/lang/String;[Ljava/lang/String;)V

    .line 341
    iget-object v2, p0, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine$1;->this$0:Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    invoke-virtual {v2}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine$1;->this$0:Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    # getter for: Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->mFileName:Ljava/lang/String;
    invoke-static {v3}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->access$200(Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine$1;->this$0:Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    # getter for: Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->ivrFileDir:Ljava/io/File;
    invoke-static {v4}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->access$100(Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;)Ljava/io/File;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/yulore/android/common/util/FileUtils;->copyAssetsFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    .line 343
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 344
    const-string v2, "YuloreIVR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copy assets file failed, copy offline packet from user direction "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine$1;->this$0:Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    # getter for: Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->newPacketDir:Ljava/io/File;
    invoke-static {v4}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->access$300(Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v2, p0, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine$1;->this$0:Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    # getter for: Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->newPacketDir:Ljava/io/File;
    invoke-static {v2}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->access$300(Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/yulore/sdk/ivr/util/FileUtil;->isDirectory(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 347
    iget-object v2, p0, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine$1;->this$0:Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    # getter for: Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->newPacketDir:Ljava/io/File;
    invoke-static {v2}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->access$300(Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine$1;->this$0:Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    # getter for: Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->ivrFileDir:Ljava/io/File;
    invoke-static {v3}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->access$100(Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;)Ljava/io/File;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yulore/android/common/util/FileUtils;->copyOfflinePacket(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    .line 348
    iget-object v2, p0, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine$1;->this$0:Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    iget-object v3, p0, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine$1;->this$0:Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    # getter for: Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->newPacketDir:Ljava/io/File;
    invoke-static {v3}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->access$300(Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/yulore/android/common/util/FileUtils;->getOfflineFileName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->mFileName:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->access$202(Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;Ljava/lang/String;)Ljava/lang/String;

    .line 352
    :cond_0
    if-eqz v0, :cond_1

    .line 353
    const-string v2, "YuloreIVR"

    const-string v3, "copy assets file successfully, prepare to unzip the file"

    invoke-static {v2, v3}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine$1;->this$0:Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    # getter for: Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->ivrFileDir:Ljava/io/File;
    invoke-static {v3}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->access$100(Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;)Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine$1;->this$0:Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    .line 355
    # getter for: Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->mFileName:Ljava/lang/String;
    invoke-static {v4}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->access$200(Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine$1;->this$0:Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    # getter for: Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->ivrFileDir:Ljava/io/File;
    invoke-static {v3}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->access$100(Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;)Ljava/io/File;

    move-result-object v3

    .line 354
    invoke-static {v2, v3}, Lcom/yulore/sdk/ivr/util/ZipUtils;->unZipByFirstWord(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    .line 357
    .local v1, "success":Z
    if-eqz v1, :cond_1

    .line 358
    iget-object v2, p0, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine$1;->val$sp:Lcom/yulore/android/common/util/SharedPreferencesUtility;

    const-string v3, "exists"

    invoke-virtual {v2, v3, v6}, Lcom/yulore/android/common/util/SharedPreferencesUtility;->putBoolean(Ljava/lang/String;Z)V

    .line 359
    iget-object v2, p0, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine$1;->val$sp:Lcom/yulore/android/common/util/SharedPreferencesUtility;

    const-string v3, "last_update_time"

    .line 360
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 359
    invoke-virtual {v2, v3, v4, v5}, Lcom/yulore/android/common/util/SharedPreferencesUtility;->putLong(Ljava/lang/String;J)V

    .line 361
    iget-object v2, p0, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine$1;->val$sp:Lcom/yulore/android/common/util/SharedPreferencesUtility;

    const-string v3, "version"

    iget-object v4, p0, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine$1;->this$0:Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    .line 362
    # getter for: Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->mFileName:Ljava/lang/String;
    invoke-static {v4}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->access$200(Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/yulore/android/common/util/FileUtils;->getNumFromString(Ljava/lang/String;)I

    move-result v4

    .line 361
    invoke-virtual {v2, v3, v4}, Lcom/yulore/android/common/util/SharedPreferencesUtility;->putInt(Ljava/lang/String;I)V

    .line 364
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine$1;->this$0:Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    # getter for: Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->ivrFileDir:Ljava/io/File;
    invoke-static {v3}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->access$100(Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;)Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine$1;->this$0:Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    # getter for: Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->mFileName:Ljava/lang/String;
    invoke-static {v4}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->access$200(Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/yulore/android/common/util/FileUtils;->delete(Ljava/io/File;)Z

    .line 367
    .end local v1    # "success":Z
    :cond_1
    return-void
.end method
