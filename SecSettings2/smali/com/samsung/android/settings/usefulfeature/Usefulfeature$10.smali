.class Lcom/samsung/android/settings/usefulfeature/Usefulfeature$10;
.super Landroid/telephony/PhoneStateListener;
.source "Usefulfeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/Usefulfeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$10;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "Usefulfeature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onServiceStateChanged roaming : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap3()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$10;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get11(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$10;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get11(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap2()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap2()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isSupportMccSmartCall()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$10;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get11(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method
