.class Lcom/nineoldandroids/animation/AnimatorSet$Dependency;
.super Ljava/lang/Object;
.source "AnimatorSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nineoldandroids/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Dependency"
.end annotation


# static fields
.field static final AFTER:I = 0x1

.field static final WITH:I


# instance fields
.field public node:Lcom/nineoldandroids/animation/AnimatorSet$Node;

.field public rule:I


# direct methods
.method public constructor <init>(Lcom/nineoldandroids/animation/AnimatorSet$Node;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nineoldandroids/animation/AnimatorSet$Dependency;->node:Lcom/nineoldandroids/animation/AnimatorSet$Node;

    iput p2, p0, Lcom/nineoldandroids/animation/AnimatorSet$Dependency;->rule:I

    return-void
.end method
