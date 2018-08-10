.class Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$1;
.super Ljava/lang/Object;
.source "SmartScanSuwDisclaimer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->initSetupWizardUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string/jumbo v0, "SsstSmartScanSuwDisclaimer"

    const-string/jumbo v1, "onClick Prev"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->setResult(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;

    invoke-virtual {v0}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->finish()V

    return-void
.end method
