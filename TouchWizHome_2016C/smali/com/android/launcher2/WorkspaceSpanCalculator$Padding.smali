.class public Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
.super Ljava/lang/Object;
.source "WorkspaceSpanCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/WorkspaceSpanCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Padding"
.end annotation


# instance fields
.field public final bottom:I

.field public final left:I

.field public final right:I

.field public final top:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->left:I

    iput p2, p0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->top:I

    iput p3, p0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->right:I

    iput p4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->bottom:I

    return-void
.end method
