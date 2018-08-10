.class Lcom/samsung/android/settings/wifi/WifiWarning$7;
.super Ljava/lang/Object;
.source "WifiWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiWarning;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiWarning;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiWarning;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiWarning$7;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning$7;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiWarning;->-wrap1(Lcom/samsung/android/settings/wifi/WifiWarning;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning$7;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiWarning;->finish()V

    return-void
.end method
