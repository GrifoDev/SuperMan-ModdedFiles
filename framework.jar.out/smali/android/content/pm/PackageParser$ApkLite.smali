.class public Landroid/content/pm/PackageParser$ApkLite;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApkLite"
.end annotation


# instance fields
.field public final certificates:[[Ljava/security/cert/Certificate;

.field public final codePath:Ljava/lang/String;

.field public final coreApp:Z

.field public final extractNativeLibs:Z

.field public final installLocation:I

.field public final multiArch:Z

.field public final packageName:Ljava/lang/String;

.field public final revisionCode:I

.field public final signatures:[Landroid/content/pm/Signature;

.field public final splitName:Ljava/lang/String;

.field public final use32bitAbi:Z

.field public final verifiers:[Landroid/content/pm/VerifierInfo;

.field public final versionCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;[Landroid/content/pm/Signature;[[Ljava/security/cert/Certificate;ZZZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/VerifierInfo;",
            ">;[",
            "Landroid/content/pm/Signature;",
            "[[",
            "Ljava/security/cert/Certificate;",
            "ZZZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/PackageParser$ApkLite;->codePath:Ljava/lang/String;

    iput-object p2, p0, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    iput-object p3, p0, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    iput p4, p0, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    iput p5, p0, Landroid/content/pm/PackageParser$ApkLite;->revisionCode:I

    iput p6, p0, Landroid/content/pm/PackageParser$ApkLite;->installLocation:I

    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/pm/VerifierInfo;

    invoke-interface {p7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/VerifierInfo;

    iput-object v0, p0, Landroid/content/pm/PackageParser$ApkLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    iput-object p8, p0, Landroid/content/pm/PackageParser$ApkLite;->signatures:[Landroid/content/pm/Signature;

    iput-object p9, p0, Landroid/content/pm/PackageParser$ApkLite;->certificates:[[Ljava/security/cert/Certificate;

    iput-boolean p10, p0, Landroid/content/pm/PackageParser$ApkLite;->coreApp:Z

    iput-boolean p11, p0, Landroid/content/pm/PackageParser$ApkLite;->multiArch:Z

    iput-boolean p12, p0, Landroid/content/pm/PackageParser$ApkLite;->use32bitAbi:Z

    iput-boolean p13, p0, Landroid/content/pm/PackageParser$ApkLite;->extractNativeLibs:Z

    return-void
.end method
