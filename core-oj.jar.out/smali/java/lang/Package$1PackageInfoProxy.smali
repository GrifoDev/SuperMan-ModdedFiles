.class Ljava/lang/Package$1PackageInfoProxy;
.super Ljava/lang/Object;
.source "Package.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/lang/Package;->getPackageInfo()Ljava/lang/Class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageInfoProxy"
.end annotation


# instance fields
.field final synthetic this$0:Ljava/lang/Package;


# direct methods
.method constructor <init>(Ljava/lang/Package;)V
    .locals 0

    iput-object p1, p0, Ljava/lang/Package$1PackageInfoProxy;->this$0:Ljava/lang/Package;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
