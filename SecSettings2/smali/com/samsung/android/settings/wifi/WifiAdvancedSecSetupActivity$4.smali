.class Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$4;
.super Ljava/lang/Object;
.source "WifiAdvancedSecSetupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$4;->this$0:Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiReset;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$4;->this$0:Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->-get0(Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/WifiReset;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiReset;->start()V

    return-void
.end method
