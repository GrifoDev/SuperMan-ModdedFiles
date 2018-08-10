.class Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment$1;
.super Ljava/lang/Object;
.source "RegisterKnoxFingerPlusInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;->initializeBottombar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment$1;->this$1:Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment$1;->this$1:Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;->-get1(Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment$1;->this$1:Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0450

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment$1;->this$1:Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b044f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils$KnoxLogging;->addEvent(II)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment$1;->this$1:Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment$1;->this$1:Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;

    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;->-get1(Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils$KnoxLogging;->send(Landroid/content/Context;Ljava/util/ArrayList;I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment$1;->this$1:Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;->-get1(Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment$1;->this$1:Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;->-get0(Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment$1;->this$1:Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;->-get0(Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v4, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment$1;->this$1:Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;

    const-string/jumbo v1, "lock_screen_fingerprint"

    const/16 v2, 0x2711

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;->startBiometricsLockSettings(Ljava/lang/String;IZ)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment$1;->this$1:Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x271b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment$1;->this$1:Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
