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

.field public final configForSplit:Ljava/lang/String;

.field public final coreApp:Z

.field public final debuggable:Z

.field public final extractNativeLibs:Z

.field public final installLocation:I

.field public isFeatureSplit:Z

.field public final isolatedSplits:Z

.field public final multiArch:Z

.field public final packageName:Ljava/lang/String;

.field public final revisionCode:I

.field public final signatures:[Landroid/content/pm/Signature;

.field public final splitName:Ljava/lang/String;

.field public final use32bitAbi:Z

.field public final usesSplitName:Ljava/lang/String;

.field public final verifiers:[Landroid/content/pm/VerifierInfo;

.field public final versionCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILjava/util/List;[Landroid/content/pm/Signature;[[Ljava/security/cert/Certificate;ZZZZZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
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
            "ZZZZZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/PackageParser$ApkLite;->codePath:Ljava/lang/String;

    iput-object p2, p0, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    iput-object p3, p0, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    iput-boolean p4, p0, Landroid/content/pm/PackageParser$ApkLite;->isFeatureSplit:Z

    iput-object p5, p0, Landroid/content/pm/PackageParser$ApkLite;->configForSplit:Ljava/lang/String;

    iput-object p6, p0, Landroid/content/pm/PackageParser$ApkLite;->usesSplitName:Ljava/lang/String;

    iput p7, p0, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    iput p8, p0, Landroid/content/pm/PackageParser$ApkLite;->revisionCode:I

    iput p9, p0, Landroid/content/pm/PackageParser$ApkLite;->installLocation:I

    invoke-interface {p10}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/pm/VerifierInfo;

    invoke-interface {p10, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/VerifierInfo;

    iput-object v1, p0, Landroid/content/pm/PackageParser$ApkLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    iput-object p11, p0, Landroid/content/pm/PackageParser$ApkLite;->signatures:[Landroid/content/pm/Signature;

    iput-object p12, p0, Landroid/content/pm/PackageParser$ApkLite;->certificates:[[Ljava/security/cert/Certificate;

    iput-boolean p13, p0, Landroid/content/pm/PackageParser$ApkLite;->coreApp:Z

    move/from16 v0, p14

    iput-boolean v0, p0, Landroid/content/pm/PackageParser$ApkLite;->debuggable:Z

    move/from16 v0, p15

    iput-boolean v0, p0, Landroid/content/pm/PackageParser$ApkLite;->multiArch:Z

    move/from16 v0, p16

    iput-boolean v0, p0, Landroid/content/pm/PackageParser$ApkLite;->use32bitAbi:Z

    move/from16 v0, p17

    iput-boolean v0, p0, Landroid/content/pm/PackageParser$ApkLite;->extractNativeLibs:Z

    move/from16 v0, p18

    iput-boolean v0, p0, Landroid/content/pm/PackageParser$ApkLite;->isolatedSplits:Z

    return-void
.end method
