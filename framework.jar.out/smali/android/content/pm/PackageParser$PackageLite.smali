.class public Landroid/content/pm/PackageParser$PackageLite;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageLite"
.end annotation


# instance fields
.field public final baseCodePath:Ljava/lang/String;

.field public final baseRevisionCode:I

.field public final codePath:Ljava/lang/String;

.field public final coreApp:Z

.field public final extractNativeLibs:Z

.field public final installLocation:I

.field public final multiArch:Z

.field public final packageName:Ljava/lang/String;

.field public final splitCodePaths:[Ljava/lang/String;

.field public final splitNames:[Ljava/lang/String;

.field public final splitRevisionCodes:[I

.field public final use32bitAbi:Z

.field public final verifiers:[Landroid/content/pm/VerifierInfo;

.field public final versionCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;[Ljava/lang/String;[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "codePath"    # Ljava/lang/String;
    .param p2, "baseApk"    # Landroid/content/pm/PackageParser$ApkLite;
    .param p3, "splitNames"    # [Ljava/lang/String;
    .param p4, "splitCodePaths"    # [Ljava/lang/String;
    .param p5, "splitRevisionCodes"    # [I

    .prologue
    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    iget-object v0, p2, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    .line 380
    iget v0, p2, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    iput v0, p0, Landroid/content/pm/PackageParser$PackageLite;->versionCode:I

    .line 381
    iget v0, p2, Landroid/content/pm/PackageParser$ApkLite;->installLocation:I

    iput v0, p0, Landroid/content/pm/PackageParser$PackageLite;->installLocation:I

    .line 382
    iget-object v0, p2, Landroid/content/pm/PackageParser$ApkLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    iput-object v0, p0, Landroid/content/pm/PackageParser$PackageLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    .line 383
    iput-object p3, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    .line 384
    iput-object p1, p0, Landroid/content/pm/PackageParser$PackageLite;->codePath:Ljava/lang/String;

    .line 385
    iget-object v0, p2, Landroid/content/pm/PackageParser$ApkLite;->codePath:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    .line 386
    iput-object p4, p0, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    .line 387
    iget v0, p2, Landroid/content/pm/PackageParser$ApkLite;->revisionCode:I

    iput v0, p0, Landroid/content/pm/PackageParser$PackageLite;->baseRevisionCode:I

    .line 388
    iput-object p5, p0, Landroid/content/pm/PackageParser$PackageLite;->splitRevisionCodes:[I

    .line 389
    iget-boolean v0, p2, Landroid/content/pm/PackageParser$ApkLite;->coreApp:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageParser$PackageLite;->coreApp:Z

    .line 390
    iget-boolean v0, p2, Landroid/content/pm/PackageParser$ApkLite;->multiArch:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageParser$PackageLite;->multiArch:Z

    .line 391
    iget-boolean v0, p2, Landroid/content/pm/PackageParser$ApkLite;->use32bitAbi:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageParser$PackageLite;->use32bitAbi:Z

    .line 392
    iget-boolean v0, p2, Landroid/content/pm/PackageParser$ApkLite;->extractNativeLibs:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageParser$PackageLite;->extractNativeLibs:Z

    .line 378
    return-void
.end method


# virtual methods
.method public getAllCodePaths()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 396
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 397
    .local v0, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    iget-object v1, p0, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 399
    iget-object v1, p0, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 401
    :cond_0
    return-object v0
.end method
