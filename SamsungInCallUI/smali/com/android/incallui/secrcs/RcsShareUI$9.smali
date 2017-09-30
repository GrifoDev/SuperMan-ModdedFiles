.class Lcom/android/incallui/secrcs/RcsShareUI$9;
.super Lcom/sec/ims/options/CapabilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/secrcs/RcsShareUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/secrcs/RcsShareUI;


# direct methods
.method constructor <init>(Lcom/android/incallui/secrcs/RcsShareUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/secrcs/RcsShareUI$9;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-direct {p0}, Lcom/sec/ims/options/CapabilityListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/Capabilities;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCapabilitiesChanged: uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " capabilities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    sget-wide v0, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_MAP:J

    invoke-virtual {p2, v0, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isSketch"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sput-boolean v3, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneRemote:Z

    :cond_0
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/incallui/secrcs/RcsShareUI$9$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/secrcs/RcsShareUI$9$1;-><init>(Lcom/android/incallui/secrcs/RcsShareUI$9;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isSketch"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sput-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneRemote:Z

    goto :goto_0
.end method

.method public onOwnCapabilitiesChanged()V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOwnCapabilitiesChanged mCapabilityManager : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/secrcs/RcsShareUI$9;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-static {v2}, Lcom/android/incallui/secrcs/RcsShareUI;->access$2600(Lcom/android/incallui/secrcs/RcsShareUI;)Lcom/sec/ims/options/CapabilityManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI$9;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-static {v0}, Lcom/android/incallui/secrcs/RcsShareUI;->access$2600(Lcom/android/incallui/secrcs/RcsShareUI;)Lcom/sec/ims/options/CapabilityManager;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI$9;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-static {v0}, Lcom/android/incallui/secrcs/RcsShareUI;->access$2600(Lcom/android/incallui/secrcs/RcsShareUI;)Lcom/sec/ims/options/CapabilityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/options/CapabilityManager;->getOwnCapabilities()Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOwnCapabilitiesChanged  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_MAP:J

    invoke-virtual {v0, v2, v3}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isSketch"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    :cond_1
    :goto_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/incallui/secrcs/RcsShareUI$9$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/secrcs/RcsShareUI$9$2;-><init>(Lcom/android/incallui/secrcs/RcsShareUI$9;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "onOwnCapabilitiesChanged - error"

    invoke-static {p0, v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isSketch"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
