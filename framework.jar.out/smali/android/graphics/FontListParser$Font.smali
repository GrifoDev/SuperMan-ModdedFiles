.class public Landroid/graphics/FontListParser$Font;
.super Ljava/lang/Object;
.source "FontListParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/FontListParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Font"
.end annotation


# instance fields
.field public final axes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/FontListParser$Axis;",
            ">;"
        }
    .end annotation
.end field

.field public fontName:Ljava/lang/String;

.field public isItalic:Z

.field public ttcIndex:I

.field public weight:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/util/List;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/FontListParser$Axis;",
            ">;IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/graphics/FontListParser$Font;->fontName:Ljava/lang/String;

    iput p2, p0, Landroid/graphics/FontListParser$Font;->ttcIndex:I

    iput-object p3, p0, Landroid/graphics/FontListParser$Font;->axes:Ljava/util/List;

    iput p4, p0, Landroid/graphics/FontListParser$Font;->weight:I

    iput-boolean p5, p0, Landroid/graphics/FontListParser$Font;->isItalic:Z

    return-void
.end method
