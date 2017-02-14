.class Lcom/android/launcher2/utils/BackgroundBlurUtil$2;
.super Ljava/lang/Object;
.source "BackgroundBlurUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/utils/BackgroundBlurUtil;->doTransientBlur(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/utils/BackgroundBlurUtil;

.field final synthetic val$duration:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/utils/BackgroundBlurUtil;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil$2;->this$0:Lcom/android/launcher2/utils/BackgroundBlurUtil;

    iput p2, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil$2;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil$2;->this$0:Lcom/android/launcher2/utils/BackgroundBlurUtil;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil$2;->val$duration:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->blurByWindowManager(ZI)V

    return-void
.end method
