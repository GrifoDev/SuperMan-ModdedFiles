.class final Lcom/android/incallui/util/PackageHelpers$4;
.super Ljava/lang/Object;
.source "PackageHelpers.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/util/PackageHelpers;->showDisabledAppDialog(Lcom/android/incallui/InCallActivity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/android/incallui/InCallActivity;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/incallui/InCallActivity;)V
    .locals 0

    .prologue
    .line 789
    iput-object p1, p0, Lcom/android/incallui/util/PackageHelpers$4;->val$packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/incallui/util/PackageHelpers$4;->val$activity:Lcom/android/incallui/InCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 791
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 793
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 794
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 795
    const-string v2, "package"

    iget-object v3, p0, Lcom/android/incallui/util/PackageHelpers$4;->val$packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 796
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 797
    iget-object v2, p0, Lcom/android/incallui/util/PackageHelpers$4;->val$activity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2, v0}, Lcom/android/incallui/InCallActivity;->startActivity(Landroid/content/Intent;)V

    .line 798
    return-void
.end method
