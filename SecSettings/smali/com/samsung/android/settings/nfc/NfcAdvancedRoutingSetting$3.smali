.class Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$3;
.super Ljava/lang/Object;
.source "NfcAdvancedRoutingSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->showErrorDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;

.field final synthetic val$Route:Ljava/lang/String;

.field final synthetic val$route_gsim_no:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$3;->this$0:Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;

    iput-object p2, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$3;->val$Route:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$3;->val$route_gsim_no:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$3;->this$0:Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->-get1(Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;)Landroid/nfc/cardemulation/CardEmulation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/cardemulation/CardEmulation;->disableAutoRouting()Z

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$3;->this$0:Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->-get6(Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$3;->val$Route:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/nfc/NfcAdapter;->setDefaultRoutingDestination(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$3;->this$0:Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$3;->val$Route:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->-set2(Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$3;->this$0:Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;

    invoke-virtual {v1}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0093

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->-set0(I)I

    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->-get2()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$3;->this$0:Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->getMetricsCategory()I

    move-result v2

    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->-get0()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$3;->val$route_gsim_no:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$3;->this$0:Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;

    invoke-virtual {v1}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "NfcAdvancedRoutingSetting"

    const-string/jumbo v2, "Exception occurred - setDefaultRoutingDestination"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
