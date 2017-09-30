.class Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EasySignupLengthFilter$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ObservableLengthFilter$OnMaxLengthReachListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EasySignupLengthFilter;-><init>(Landroid/content/Context;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EasySignupLengthFilter;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EasySignupLengthFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EasySignupLengthFilter$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EasySignupLengthFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMaxLengthReachListener(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EasySignupLengthFilter$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EasySignupLengthFilter;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EasySignupLengthFilter;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EasySignupLengthFilter;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EasySignupLengthFilter$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EasySignupLengthFilter;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EasySignupLengthFilter;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EasySignupLengthFilter;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EasySignupLengthFilter$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EasySignupLengthFilter;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EasySignupLengthFilter;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EasySignupLengthFilter;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
