.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EasySignupLengthFilter;
.super Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ObservableLengthFilter;


# instance fields
.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ObservableLengthFilter$OnMaxLengthReachListener;

.field private toast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ObservableLengthFilter;-><init>(I)V

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/R$string;->toast_text_max_Length:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EasySignupLengthFilter;->toast:Landroid/widget/Toast;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EasySignupLengthFilter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EasySignupLengthFilter$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EasySignupLengthFilter;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EasySignupLengthFilter;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ObservableLengthFilter$OnMaxLengthReachListener;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EasySignupLengthFilter;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ObservableLengthFilter$OnMaxLengthReachListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EasySignupLengthFilter;->setOnMaxLengthReachListener(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ObservableLengthFilter$OnMaxLengthReachListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    invoke-direct {p0, p3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ObservableLengthFilter;-><init>(I)V

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EasySignupLengthFilter;->toast:Landroid/widget/Toast;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EasySignupLengthFilter$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EasySignupLengthFilter$2;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EasySignupLengthFilter;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EasySignupLengthFilter;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ObservableLengthFilter$OnMaxLengthReachListener;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EasySignupLengthFilter;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ObservableLengthFilter$OnMaxLengthReachListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EasySignupLengthFilter;->setOnMaxLengthReachListener(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ObservableLengthFilter$OnMaxLengthReachListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EasySignupLengthFilter;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EasySignupLengthFilter;->toast:Landroid/widget/Toast;

    return-object v0
.end method
