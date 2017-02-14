.class Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;
.super Ljava/lang/Object;
.source "WebViewUpdateServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProviderAndPackageInfo"
.end annotation


# instance fields
.field public final packageInfo:Landroid/content/pm/PackageInfo;

.field public final provider:Landroid/webkit/WebViewProviderInfo;


# direct methods
.method public constructor <init>(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    iput-object p2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    return-void
.end method
