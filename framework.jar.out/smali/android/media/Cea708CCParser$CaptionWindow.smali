.class public Landroid/media/Cea708CCParser$CaptionWindow;
.super Ljava/lang/Object;
.source "Cea708CaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea708CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaptionWindow"
.end annotation


# instance fields
.field public final anchorHorizontal:I

.field public final anchorId:I

.field public final anchorVertical:I

.field public final columnCount:I

.field public final columnLock:Z

.field public final id:I

.field public final penStyle:I

.field public final priority:I

.field public final relativePositioning:Z

.field public final rowCount:I

.field public final rowLock:Z

.field public final visible:Z

.field public final windowStyle:I


# direct methods
.method public constructor <init>(IZZZIZIIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/Cea708CCParser$CaptionWindow;->id:I

    iput-boolean p2, p0, Landroid/media/Cea708CCParser$CaptionWindow;->visible:Z

    iput-boolean p3, p0, Landroid/media/Cea708CCParser$CaptionWindow;->rowLock:Z

    iput-boolean p4, p0, Landroid/media/Cea708CCParser$CaptionWindow;->columnLock:Z

    iput p5, p0, Landroid/media/Cea708CCParser$CaptionWindow;->priority:I

    iput-boolean p6, p0, Landroid/media/Cea708CCParser$CaptionWindow;->relativePositioning:Z

    iput p7, p0, Landroid/media/Cea708CCParser$CaptionWindow;->anchorVertical:I

    iput p8, p0, Landroid/media/Cea708CCParser$CaptionWindow;->anchorHorizontal:I

    iput p9, p0, Landroid/media/Cea708CCParser$CaptionWindow;->anchorId:I

    iput p10, p0, Landroid/media/Cea708CCParser$CaptionWindow;->rowCount:I

    iput p11, p0, Landroid/media/Cea708CCParser$CaptionWindow;->columnCount:I

    iput p12, p0, Landroid/media/Cea708CCParser$CaptionWindow;->penStyle:I

    iput p13, p0, Landroid/media/Cea708CCParser$CaptionWindow;->windowStyle:I

    return-void
.end method
