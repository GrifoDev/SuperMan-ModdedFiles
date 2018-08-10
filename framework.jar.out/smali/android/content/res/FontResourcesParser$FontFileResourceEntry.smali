.class public final Landroid/content/res/FontResourcesParser$FontFileResourceEntry;
.super Ljava/lang/Object;
.source "FontResourcesParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/FontResourcesParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FontFileResourceEntry"
.end annotation


# instance fields
.field private final mFileName:Ljava/lang/String;

.field private mItalic:I

.field private mResourceId:I

.field private mWeight:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->mFileName:Ljava/lang/String;

    iput p2, p0, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->mWeight:I

    iput p3, p0, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->mItalic:I

    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getItalic()I
    .locals 1

    iget v0, p0, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->mItalic:I

    return v0
.end method

.method public getWeight()I
    .locals 1

    iget v0, p0, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->mWeight:I

    return v0
.end method
