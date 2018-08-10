.class public final Landroid/content/res/FontResourcesParser$FontFamilyFilesResourceEntry;
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
    name = "FontFamilyFilesResourceEntry"
.end annotation


# instance fields
.field private final mEntries:[Landroid/content/res/FontResourcesParser$FontFileResourceEntry;


# direct methods
.method public constructor <init>([Landroid/content/res/FontResourcesParser$FontFileResourceEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/res/FontResourcesParser$FontFamilyFilesResourceEntry;->mEntries:[Landroid/content/res/FontResourcesParser$FontFileResourceEntry;

    return-void
.end method


# virtual methods
.method public getEntries()[Landroid/content/res/FontResourcesParser$FontFileResourceEntry;
    .locals 1

    iget-object v0, p0, Landroid/content/res/FontResourcesParser$FontFamilyFilesResourceEntry;->mEntries:[Landroid/content/res/FontResourcesParser$FontFileResourceEntry;

    return-object v0
.end method
