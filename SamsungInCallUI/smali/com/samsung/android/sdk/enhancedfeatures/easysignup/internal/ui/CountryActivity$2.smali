.class Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/andraskindler/quickscroll/TwLangIndexScrollView$OnIndexSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;

.field final synthetic val$listMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$2;->val$listMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIndexSelected(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$2;->val$listMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method
