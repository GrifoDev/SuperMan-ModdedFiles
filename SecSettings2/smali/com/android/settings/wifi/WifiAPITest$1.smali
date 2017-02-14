.class Lcom/android/settings/wifi/WifiAPITest$1;
.super Ljava/lang/Object;
.source "WifiAPITest.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiAPITest;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiAPITest;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiAPITest;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiAPITest$1;->this$0:Lcom/android/settings/wifi/WifiAPITest;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiAPITest$1;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v2, p0, Lcom/android/settings/wifi/WifiAPITest$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiAPITest$1;->this$0:Lcom/android/settings/wifi/WifiAPITest;

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/wifi/WifiAPITest;->-set0(Lcom/android/settings/wifi/WifiAPITest;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiAPITest$1;->this$0:Lcom/android/settings/wifi/WifiAPITest;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiAPITest;->-get0(Lcom/android/settings/wifi/WifiAPITest;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiAPITest$1;->this$0:Lcom/android/settings/wifi/WifiAPITest;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiAPITest;->-get1(Lcom/android/settings/wifi/WifiAPITest;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    return-void
.end method
