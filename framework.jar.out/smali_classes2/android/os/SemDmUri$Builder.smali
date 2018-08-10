.class public final Landroid/os/SemDmUri$Builder;
.super Ljava/lang/Object;
.source "SemDmUri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SemDmUri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private buildUri:Landroid/net/Uri;

.field private builderColumnDataType:Ljava/lang/String;

.field private builderColumnName:Ljava/lang/String;

.field private builderMappedName:Ljava/lang/String;

.field private builderWhereColumnArg:Ljava/lang/String;

.field private builderWhereColumnName:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/os/SemDmUri$Builder;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/os/SemDmUri$Builder;->buildUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get1(Landroid/os/SemDmUri$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/SemDmUri$Builder;->builderColumnDataType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Landroid/os/SemDmUri$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/SemDmUri$Builder;->builderColumnName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Landroid/os/SemDmUri$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/SemDmUri$Builder;->builderMappedName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Landroid/os/SemDmUri$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/SemDmUri$Builder;->builderWhereColumnArg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Landroid/os/SemDmUri$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/SemDmUri$Builder;->builderWhereColumnName:Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/os/SemDmUri$Builder;->buildUri:Landroid/net/Uri;

    const-string/jumbo v0, "value"

    iput-object v0, p0, Landroid/os/SemDmUri$Builder;->builderColumnName:Ljava/lang/String;

    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SemDmUri$Builder;->builderColumnDataType:Ljava/lang/String;

    iput-object v1, p0, Landroid/os/SemDmUri$Builder;->builderMappedName:Ljava/lang/String;

    iput-object v1, p0, Landroid/os/SemDmUri$Builder;->builderWhereColumnName:Ljava/lang/String;

    iput-object v1, p0, Landroid/os/SemDmUri$Builder;->builderWhereColumnArg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Landroid/os/SemDmUri;
    .locals 2

    new-instance v0, Landroid/os/SemDmUri;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/os/SemDmUri;-><init>(Landroid/os/SemDmUri$Builder;Landroid/os/SemDmUri;)V

    return-object v0
.end method

.method public setColumnDataType(Ljava/lang/String;)Landroid/os/SemDmUri$Builder;
    .locals 0

    iput-object p1, p0, Landroid/os/SemDmUri$Builder;->builderColumnDataType:Ljava/lang/String;

    return-object p0
.end method

.method public setColumnName(Ljava/lang/String;)Landroid/os/SemDmUri$Builder;
    .locals 0

    iput-object p1, p0, Landroid/os/SemDmUri$Builder;->builderColumnName:Ljava/lang/String;

    return-object p0
.end method

.method public setMappedName(Ljava/lang/String;)Landroid/os/SemDmUri$Builder;
    .locals 0

    iput-object p1, p0, Landroid/os/SemDmUri$Builder;->builderMappedName:Ljava/lang/String;

    return-object p0
.end method

.method public setUri(Landroid/net/Uri;)Landroid/os/SemDmUri$Builder;
    .locals 0

    iput-object p1, p0, Landroid/os/SemDmUri$Builder;->buildUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setWhereColumnArg(Ljava/lang/String;)Landroid/os/SemDmUri$Builder;
    .locals 0

    iput-object p1, p0, Landroid/os/SemDmUri$Builder;->builderWhereColumnArg:Ljava/lang/String;

    return-object p0
.end method

.method public setWhereColumnName(Ljava/lang/String;)Landroid/os/SemDmUri$Builder;
    .locals 0

    iput-object p1, p0, Landroid/os/SemDmUri$Builder;->builderWhereColumnName:Ljava/lang/String;

    return-object p0
.end method
