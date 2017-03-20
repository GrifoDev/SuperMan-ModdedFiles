.class final Lcom/android/incallui/util/PackageHelpers$1;
.super Ljava/lang/Object;
.source "PackageHelpers.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/util/PackageHelpers;->showDownloadAppDialog(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 147
    const-string v0, "com.samsung.android.app.memo"

    invoke-static {v0}, Lcom/android/incallui/util/PackageHelpers;->connectSamsungApps(Ljava/lang/String;)V

    .line 148
    return-void
.end method
