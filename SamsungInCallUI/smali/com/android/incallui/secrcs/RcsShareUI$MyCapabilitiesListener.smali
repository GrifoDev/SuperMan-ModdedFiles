.class Lcom/android/incallui/secrcs/RcsShareUI$MyCapabilitiesListener;
.super Lcom/gsma/services/rcs/capability/a;


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

    invoke-direct {p0}, Lcom/gsma/services/rcs/capability/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/secrcs/RcsShareUI$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/secrcs/RcsShareUI$MyCapabilitiesListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilitiesReceived(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/capability/Capabilities;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {p2}, Lcom/android/incallui/secrcs/RcsShareUI;->access$202(Lcom/gsma/services/rcs/capability/Capabilities;)Lcom/gsma/services/rcs/capability/Capabilities;

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCapabilitiesReceived contactId  new :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCapabilitiesReceived remote capabilities :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :try_start_0
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$400()Lcom/b/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/a/a/a;->c()Lcom/gsma/services/rcs/capability/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gsma/services/rcs/capability/b;->c()Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/secrcs/RcsShareUI;->access$302(Lcom/gsma/services/rcs/capability/Capabilities;)Lcom/gsma/services/rcs/capability/Capabilities;

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCapabilitiesReceived my myCapabilities1 :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$300()Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/gsma/services/rcs/e; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCapabilitiesReceived myCapabilities1.getSupportedExtensions().contains(\"gsma.sharedmap\") :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$300()Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gsma/services/rcs/capability/Capabilities;->a()Ljava/util/Set;

    move-result-object v2

    const-string v3, "gsma.sharedmap"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCapabilitiesReceived remoteCapabilities1.getSupportedExtensions().contains(\"gsma.sharedmap\") :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$200()Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gsma/services/rcs/capability/Capabilities;->a()Ljava/util/Set;

    move-result-object v2

    const-string v3, "gsma.sharedmap"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$300()Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gsma/services/rcs/capability/Capabilities;->a()Ljava/util/Set;

    move-result-object v0

    const-string v1, "gsma.sharedmap"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$200()Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gsma/services/rcs/capability/Capabilities;->a()Ljava/util/Set;

    move-result-object v0

    const-string v1, "gsma.sharedmap"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isSketch"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$300()Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gsma/services/rcs/capability/Capabilities;->a()Ljava/util/Set;

    move-result-object v0

    const-string v1, "gsma.sharedmap"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sput-boolean v5, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    :goto_2
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$200()Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gsma/services/rcs/capability/Capabilities;->a()Ljava/util/Set;

    move-result-object v0

    const-string v1, "gsma.sharedmap"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sput-boolean v5, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneRemote:Z

    :goto_3
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCapabilitiesReceived isCraneRemote  :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneRemote:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCapabilitiesReceived isCrane :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/secrcs/RcsShareUI$MyCapabilitiesListener$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/secrcs/RcsShareUI$MyCapabilitiesListener$1;-><init>(Lcom/android/incallui/secrcs/RcsShareUI$MyCapabilitiesListener;)V

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/gsma/services/rcs/e;->printStackTrace()V

    goto/16 :goto_0

    :cond_2
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isSketch"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_3
    sput-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    goto :goto_2

    :cond_4
    sput-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneRemote:Z

    goto :goto_3
.end method
