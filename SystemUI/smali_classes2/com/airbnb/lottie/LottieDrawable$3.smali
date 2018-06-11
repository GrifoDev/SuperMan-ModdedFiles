.class Lcom/airbnb/lottie/LottieDrawable$3;
.super Ljava/lang/Object;
.source "LottieDrawable.java"

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/LottieDrawable;->playAnimation(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/lottie/LottieDrawable;

.field final synthetic val$endFrame:I

.field final synthetic val$startFrame:I


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;II)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable$3;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    iput p2, p0, Lcom/airbnb/lottie/LottieDrawable$3;->val$startFrame:I

    iput p3, p0, Lcom/airbnb/lottie/LottieDrawable$3;->val$endFrame:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable$3;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    iget v1, p0, Lcom/airbnb/lottie/LottieDrawable$3;->val$startFrame:I

    iget v2, p0, Lcom/airbnb/lottie/LottieDrawable$3;->val$endFrame:I

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/lottie/LottieDrawable;->playAnimation(II)V

    return-void
.end method
