.class final Landroid/widget/SelectionActionModeHelper$SelectionResult;
.super Ljava/lang/Object;
.source "SelectionActionModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SelectionActionModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SelectionResult"
.end annotation


# instance fields
.field private final mClassification:Landroid/view/textclassifier/TextClassification;

.field private final mEnd:I

.field private final mStart:I


# direct methods
.method static synthetic -get0(Landroid/widget/SelectionActionModeHelper$SelectionResult;)Landroid/view/textclassifier/TextClassification;
    .locals 1

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionResult;->mClassification:Landroid/view/textclassifier/TextClassification;

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I
    .locals 1

    iget v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionResult;->mEnd:I

    return v0
.end method

.method static synthetic -get2(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I
    .locals 1

    iget v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionResult;->mStart:I

    return v0
.end method

.method constructor <init>(IILandroid/view/textclassifier/TextClassification;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/widget/SelectionActionModeHelper$SelectionResult;->mStart:I

    iput p2, p0, Landroid/widget/SelectionActionModeHelper$SelectionResult;->mEnd:I

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassification;

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionResult;->mClassification:Landroid/view/textclassifier/TextClassification;

    return-void
.end method
