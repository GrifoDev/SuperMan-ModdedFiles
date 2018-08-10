.class Landroid/text/Hyphenator$HyphenationData;
.super Ljava/lang/Object;
.source "Hyphenator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Hyphenator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HyphenationData"
.end annotation


# instance fields
.field final mLanguageTag:Ljava/lang/String;

.field final mMinPrefix:I

.field final mMinSuffix:I


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/text/Hyphenator$HyphenationData;->mLanguageTag:Ljava/lang/String;

    iput p2, p0, Landroid/text/Hyphenator$HyphenationData;->mMinPrefix:I

    iput p3, p0, Landroid/text/Hyphenator$HyphenationData;->mMinSuffix:I

    return-void
.end method
