.class Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity$1;
.super Ljava/lang/Object;
.source "SecSetupIrisDisclaimerActivity.java"

# interfaces
.implements Lcom/samsung/android/settings/widget/BottomScrollView$OnBottomReachedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity$1;->this$0:Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBottomReached()V
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "SecSetupIrisDisclaimerActivity"

    const-string/jumbo v1, "onBottomReached"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity$1;->this$0:Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->-set0(Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity$1;->this$0:Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->-wrap0(Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;Z)V

    return-void
.end method
