.class Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$5;
.super Ljava/lang/Object;
.source "SimLockStatus.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$5;->this$0:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string/jumbo v0, "persist.sys.kddi_sim_lock"

    const-string/jumbo v1, "3"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$5;->this$0:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->-wrap0(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "kddi_sim_lock_test"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$5;->this$0:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->-get2(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$5;->this$0:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->-get2(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$5;->this$0:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->-wrap4(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;)V

    return-void
.end method
