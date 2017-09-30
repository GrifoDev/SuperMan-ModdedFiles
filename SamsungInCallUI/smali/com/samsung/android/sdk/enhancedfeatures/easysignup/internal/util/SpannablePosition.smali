.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/SpannablePosition;
.super Ljava/lang/Object;


# instance fields
.field end:I

.field start:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/SpannablePosition;->start:I

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/SpannablePosition;->end:I

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/SpannablePosition;->start:I

    iput p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/SpannablePosition;->end:I

    return-void
.end method


# virtual methods
.method public getEnd()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/SpannablePosition;->end:I

    return v0
.end method

.method public getStart()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/SpannablePosition;->start:I

    return v0
.end method
