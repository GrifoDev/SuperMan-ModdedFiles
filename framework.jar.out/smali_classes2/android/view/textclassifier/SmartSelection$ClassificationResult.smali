.class final Landroid/view/textclassifier/SmartSelection$ClassificationResult;
.super Ljava/lang/Object;
.source "SmartSelection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/SmartSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ClassificationResult"
.end annotation


# instance fields
.field final mCollection:Ljava/lang/String;

.field final mScore:F


# direct methods
.method constructor <init>(Ljava/lang/String;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/textclassifier/SmartSelection$ClassificationResult;->mCollection:Ljava/lang/String;

    iput p2, p0, Landroid/view/textclassifier/SmartSelection$ClassificationResult;->mScore:F

    return-void
.end method
