.class Lcom/samsung/android/settings/wifi/CMCCChargeWarningDialog$UpdateTimeTask;
.super Ljava/util/TimerTask;
.source "CMCCChargeWarningDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/CMCCChargeWarningDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateTimeTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/CMCCChargeWarningDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/CMCCChargeWarningDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/CMCCChargeWarningDialog$UpdateTimeTask;->this$0:Lcom/samsung/android/settings/wifi/CMCCChargeWarningDialog;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string/jumbo v0, "CMCCChargeWaringDialog"

    const-string/jumbo v1, "timer end"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/CMCCChargeWarningDialog$UpdateTimeTask;->this$0:Lcom/samsung/android/settings/wifi/CMCCChargeWarningDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/CMCCChargeWarningDialog;->finish()V

    return-void
.end method
