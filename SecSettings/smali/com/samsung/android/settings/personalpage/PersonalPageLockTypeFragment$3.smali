.class Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3;
.super Lcom/samsung/android/fingerprint/IFingerprintClient$Stub;
.source "PersonalPageLockTypeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->identifyFinger(Landroid/os/Bundle;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3;->this$0:Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/IFingerprintClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v1, p1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3;->this$0:Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;

    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3;->this$0:Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;

    invoke-virtual {v4}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v2, v3}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->-set1(Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;Landroid/os/Handler;)Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3;->this$0:Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->-get0(Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3;->this$0:Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->-get0(Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3$1;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3$1;-><init>(Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3;Lcom/samsung/android/fingerprint/FingerprintEvent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "PersonalPageLockTypeFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onFingerprintEvent: Error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
