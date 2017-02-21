.class public Landroid/media/Cea708CCParser$CaptionWindowAttr;
.super Ljava/lang/Object;
.source "Cea708CaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea708CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaptionWindowAttr"
.end annotation


# instance fields
.field public final borderColor:Landroid/media/Cea708CCParser$CaptionColor;

.field public final borderType:I

.field public final displayEffect:I

.field public final effectDirection:I

.field public final effectSpeed:I

.field public final fillColor:Landroid/media/Cea708CCParser$CaptionColor;

.field public final justify:I

.field public final printDirection:I

.field public final scrollDirection:I

.field public final wordWrap:Z


# direct methods
.method public constructor <init>(Landroid/media/Cea708CCParser$CaptionColor;Landroid/media/Cea708CCParser$CaptionColor;IZIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/Cea708CCParser$CaptionWindowAttr;->fillColor:Landroid/media/Cea708CCParser$CaptionColor;

    iput-object p2, p0, Landroid/media/Cea708CCParser$CaptionWindowAttr;->borderColor:Landroid/media/Cea708CCParser$CaptionColor;

    iput p3, p0, Landroid/media/Cea708CCParser$CaptionWindowAttr;->borderType:I

    iput-boolean p4, p0, Landroid/media/Cea708CCParser$CaptionWindowAttr;->wordWrap:Z

    iput p5, p0, Landroid/media/Cea708CCParser$CaptionWindowAttr;->printDirection:I

    iput p6, p0, Landroid/media/Cea708CCParser$CaptionWindowAttr;->scrollDirection:I

    iput p7, p0, Landroid/media/Cea708CCParser$CaptionWindowAttr;->justify:I

    iput p8, p0, Landroid/media/Cea708CCParser$CaptionWindowAttr;->effectDirection:I

    iput p9, p0, Landroid/media/Cea708CCParser$CaptionWindowAttr;->effectSpeed:I

    iput p10, p0, Landroid/media/Cea708CCParser$CaptionWindowAttr;->displayEffect:I

    return-void
.end method
