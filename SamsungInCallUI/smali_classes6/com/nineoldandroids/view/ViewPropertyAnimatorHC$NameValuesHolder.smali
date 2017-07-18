.class Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$NameValuesHolder;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorHC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;
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

    iput p1, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$NameValuesHolder;->mNameConstant:I

    iput p2, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$NameValuesHolder;->mFromValue:F

    iput p3, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$NameValuesHolder;->mDeltaValue:F

    return-void
.end method
