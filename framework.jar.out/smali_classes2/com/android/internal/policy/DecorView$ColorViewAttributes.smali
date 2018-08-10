.class public Lcom/android/internal/policy/DecorView$ColorViewAttributes;
.super Ljava/lang/Object;
.source "DecorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/DecorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorViewAttributes"
.end annotation


# instance fields
.field final hideWindowFlag:I

.field final horizontalGravity:I

.field final id:I

.field final seascapeGravity:I

.field final systemUiHideFlag:I

.field final transitionName:Ljava/lang/String;

.field final translucentFlag:I

.field final verticalGravity:I


# direct methods
.method private constructor <init>(IIIIILjava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p7, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->id:I

    iput p1, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->systemUiHideFlag:I

    iput p2, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->translucentFlag:I

    iput p3, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->verticalGravity:I

    iput p4, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->horizontalGravity:I

    iput p5, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->seascapeGravity:I

    iput-object p6, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->transitionName:Ljava/lang/String;

    iput p8, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->hideWindowFlag:I

    return-void
.end method

.method synthetic constructor <init>(IIIIILjava/lang/String;IILcom/android/internal/policy/DecorView$ColorViewAttributes;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;-><init>(IIIIILjava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public isPresent(IIZ)Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->systemUiHideFlag:I

    and-int/2addr v1, p1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->hideWindowFlag:I

    and-int/2addr v1, p2

    if-nez v1, :cond_1

    const/high16 v0, -0x80000000

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    :goto_0
    return p3

    :cond_0
    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    move p3, v0

    goto :goto_0
.end method

.method public isVisible(IIIZ)Z
    .locals 2

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isPresent(IIZ)Z

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isVisible(ZIIZ)Z

    move-result v1

    return v1
.end method

.method public isVisible(ZIIZ)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/high16 v1, -0x1000000

    and-int/2addr v1, p2

    if-eqz v1, :cond_1

    iget v0, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->translucentFlag:I

    and-int/2addr v0, p3

    if-eqz v0, :cond_0

    :goto_0
    return p4

    :cond_0
    const/4 p4, 0x1

    goto :goto_0

    :cond_1
    move p4, v0

    goto :goto_0
.end method
