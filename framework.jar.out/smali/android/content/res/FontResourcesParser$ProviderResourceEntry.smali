.class public final Landroid/content/res/FontResourcesParser$ProviderResourceEntry;
.super Ljava/lang/Object;
.source "FontResourcesParser.java"

# interfaces
.implements Landroid/content/res/FontResourcesParser$FamilyResourceEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/FontResourcesParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProviderResourceEntry"
.end annotation


# instance fields
.field private final mCerts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mProviderAuthority:Ljava/lang/String;

.field private final mProviderPackage:Ljava/lang/String;

.field private final mQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->mProviderAuthority:Ljava/lang/String;

    iput-object p2, p0, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->mProviderPackage:Ljava/lang/String;

    iput-object p3, p0, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->mQuery:Ljava/lang/String;

    iput-object p4, p0, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->mCerts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAuthority()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->mProviderAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getCerts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->mCerts:Ljava/util/List;

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->mProviderPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->mQuery:Ljava/lang/String;

    return-object v0
.end method
