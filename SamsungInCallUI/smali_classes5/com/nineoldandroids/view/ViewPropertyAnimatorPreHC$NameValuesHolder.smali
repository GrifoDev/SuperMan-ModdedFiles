.class Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$NameValuesHolder;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorPreHC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameValuesHolder"
.end annotation


# instance fields
.field mDeltaValue:F

.field mFromValue:F

.field mNameConstant:I


# direct methods
.method constructor <init>(IFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$NameValuesHolder;->mNameConstant:I

    iput p2, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$NameValuesHolder;->mFromValue:F

    iput p3, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$NameValuesHolder;->mDeltaValue:F

    return-void
.end method
