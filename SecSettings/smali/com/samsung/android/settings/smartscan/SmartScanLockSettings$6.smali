.class Lcom/samsung/android/settings/smartscan/SmartScanLockSettings$6;
.super Ljava/lang/Object;
.source "SmartScanLockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->showIrisErrorPopup(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings$6;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    check-cast p1, Landroid/app/AlertDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings$6;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->-wrap0(Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;Z)Z

    return-void
.end method
