.class Landroid/view/View$MatchIdPredicate;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Lcom/android/internal/util/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MatchIdPredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/Predicate",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field public mId:I

.field final synthetic this$0:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/view/View$MatchIdPredicate;->this$0:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Landroid/view/View$MatchIdPredicate;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View$MatchIdPredicate;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;)Z
    .locals 2

    iget v0, p1, Landroid/view/View;->mID:I

    iget v1, p0, Landroid/view/View$MatchIdPredicate;->mId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View$MatchIdPredicate;->apply(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
