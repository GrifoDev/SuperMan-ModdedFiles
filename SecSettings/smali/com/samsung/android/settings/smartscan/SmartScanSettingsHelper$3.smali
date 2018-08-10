.class final Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$3;
.super Ljava/lang/Object;
.source "SmartScanSettingsHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->showSmartScanDisclaimerDialog(Landroid/content/Context;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$3;->val$context:Landroid/content/Context;

    iput p2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$3;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$3;->val$context:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$3;->val$userId:I

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->setSmartScanDisclaimerConfirmedValue(Landroid/content/Context;ZI)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
