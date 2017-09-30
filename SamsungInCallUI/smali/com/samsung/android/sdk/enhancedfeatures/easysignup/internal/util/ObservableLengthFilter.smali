.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ObservableLengthFilter;
.super Landroid/text/InputFilter$LengthFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ObservableLengthFilter$OnMaxLengthReachListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ObservableLengthFilter$OnMaxLengthReachListener;

.field private mMaxLength:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ObservableLengthFilter;-><init>(ILcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ObservableLengthFilter$OnMaxLengthReachListener;)V

    return-void
.end method

.method public constructor <init>(ILcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ObservableLengthFilter$OnMaxLengthReachListener;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ObservableLengthFilter;->mMaxLength:I

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ObservableLengthFilter;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ObservableLengthFilter$OnMaxLengthReachListener;

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 3

    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ObservableLengthFilter;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ObservableLengthFilter$OnMaxLengthReachListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ObservableLengthFilter;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ObservableLengthFilter$OnMaxLengthReachListener;

    iget v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ObservableLengthFilter;->mMaxLength:I

    invoke-interface {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ObservableLengthFilter$OnMaxLengthReachListener;->onMaxLengthReachListener(I)V

    goto :goto_0
.end method

.method public getMaxLength()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ObservableLengthFilter;->mMaxLength:I

    return v0
.end method

.method public setOnMaxLengthReachListener(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ObservableLengthFilter$OnMaxLengthReachListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ObservableLengthFilter;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ObservableLengthFilter$OnMaxLengthReachListener;

    return-void
.end method
