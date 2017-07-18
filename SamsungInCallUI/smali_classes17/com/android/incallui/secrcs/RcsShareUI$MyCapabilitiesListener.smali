.class Lcom/android/incallui/secrcs/RcsShareUI$MyCapabilitiesListener;
.super Lcom/gsma/services/rcs/capability/CapabilitiesListener;
.source "RcsShareUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/secrcs/RcsShareUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyCapabilitiesListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/gsma/services/rcs/capability/CapabilitiesListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/secrcs/RcsShareUI$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/secrcs/RcsShareUI$MyCapabilitiesListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilitiesReceived(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/capability/Capabilities;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {p2}, Lcom/android/incallui/secrcs/RcsShareUI;->access$202(Lcom/gsma/services/rcs/capability/Capabilities;)Lcom/gsma/services/rcs/capability/Capabilities;

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCapabilitiesReceived contactId  new :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCapabilitiesReceived remote capabilities :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :try_start_0
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$400()Lcom/orangelabs/rcs/api/connection/ConnectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->getCapabilityApi()Lcom/gsma/services/rcs/capability/CapabilityService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gsma/services/rcs/capability/CapabilityService;->getMyCapabilities()Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/secrcs/RcsShareUI;->access$302(Lcom/gsma/services/rcs/capability/Capabilities;)Lcom/gsma/services/rcs/capability/Capabilities;

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCapabilitiesReceived my myCapabilities :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$300()Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/gsma/services/rcs/RcsServiceException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCapabilitiesReceived myCapabilities.getSupportedExtensions().contains(\"gsma.sharedmap\") :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$300()Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gsma/services/rcs/capability/Capabilities;->getSupportedExtensions()Ljava/util/Set;

    move-result-object v3

    const-string v4, "gsma.sharedmap"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCapabilitiesReceived remoteCapabilities.getSupportedExtensions().contains(\"gsma.sharedmap\") :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$200()Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gsma/services/rcs/capability/Capabilities;->getSupportedExtensions()Ljava/util/Set;

    move-result-object v3

    const-string v4, "gsma.sharedmap"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCapabilitiesReceived myCapabilities.getSupportedExtensions().contains(\"gsma.callcomposer\") :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$300()Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gsma/services/rcs/capability/Capabilities;->getSupportedExtensions()Ljava/util/Set;

    move-result-object v3

    const-string v4, "gsma.sharedmap"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCapabilitiesReceived remoteCapabilities.getSupportedExtensions().contains(\"gsma.callcomposer\") :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$200()Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gsma/services/rcs/capability/Capabilities;->getSupportedExtensions()Ljava/util/Set;

    move-result-object v3

    const-string v4, "gsma.callcomposer"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$300()Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gsma/services/rcs/capability/Capabilities;->getSupportedExtensions()Ljava/util/Set;

    move-result-object v1

    const-string v2, "gsma.sharedmap"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$200()Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gsma/services/rcs/capability/Capabilities;->getSupportedExtensions()Ljava/util/Set;

    move-result-object v1

    const-string v2, "gsma.sharedmap"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "isSketch"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$300()Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gsma/services/rcs/capability/Capabilities;->getSupportedExtensions()Ljava/util/Set;

    move-result-object v1

    const-string v2, "gsma.callcomposer"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sput-boolean v6, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    :goto_2
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$200()Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gsma/services/rcs/capability/Capabilities;->getSupportedExtensions()Ljava/util/Set;

    move-result-object v1

    const-string v2, "gsma.callcomposer"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sput-boolean v6, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneRemote:Z

    :goto_3
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCapabilitiesReceived isCraneRemote  :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneRemote:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCapabilitiesReceived isCrane :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/secrcs/RcsShareUI$MyCapabilitiesListener$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/secrcs/RcsShareUI$MyCapabilitiesListener$1;-><init>(Lcom/android/incallui/secrcs/RcsShareUI$MyCapabilitiesListener;)V

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/gsma/services/rcs/RcsServiceException;->printStackTrace()V

    goto/16 :goto_0

    :cond_2
    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "isSketch"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_3
    sput-boolean v5, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    goto :goto_2

    :cond_4
    sput-boolean v5, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneRemote:Z

    goto :goto_3
.end method
