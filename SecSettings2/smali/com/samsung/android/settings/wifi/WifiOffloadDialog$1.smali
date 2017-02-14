.class Lcom/samsung/android/settings/wifi/WifiOffloadDialog$1;
.super Ljava/lang/Object;
.source "WifiOffloadDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiOffloadDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiOffloadDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog$1;->this$0:Lcom/samsung/android/settings/wifi/WifiOffloadDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog$1;->this$0:Lcom/samsung/android/settings/wifi/WifiOffloadDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->-wrap0(Lcom/samsung/android/settings/wifi/WifiOffloadDialog;Z)V

    return-void
.end method
