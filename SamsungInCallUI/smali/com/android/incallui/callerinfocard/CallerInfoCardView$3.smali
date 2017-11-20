.class Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/callerinfocard/CallerInfoCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;


# direct methods
.method constructor <init>(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->getContext()Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f04017c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f1004a6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v2, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3$1;-><init>(Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mImageUri :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v3}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$800(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v2}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$800(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v2}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$800(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$900(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0477

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v2}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$900(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0472

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v3}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$900(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0475

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v4}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$900(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0474

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$900(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0476

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    mul-int/lit8 v5, v5, -0x1

    iget-object v6, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v6}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$700(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/widget/PopupWindow;

    move-result-object v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    new-instance v7, Landroid/widget/PopupWindow;

    invoke-direct {v7, v1, v0, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    invoke-static {v6, v7}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$702(Lcom/android/incallui/callerinfocard/CallerInfoCardView;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$700(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$1000(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$700(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$1100(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$700(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$1100(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v5}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto/16 :goto_0

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Maps with co-ordinates : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$1200(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$1300(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IsChinaFeature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "feature_chn"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feature_chn"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "androidamap://myLocation?sourceApplication=samsung&lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$1200(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&lon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$1300(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&dev=1&style=2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Map URI..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$900(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$900(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "Can\'t resolve given pkg name..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$900(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8bf7\u5b89\u88c5\u9ad8\u5fb7\u5730\u56fe\u67e5\u770b"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_5
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "geo:%f,%f?q=%f,%f"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v4}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$1200(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v3}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$1300(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v4}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$1200(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v4}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$1300(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "com.google.android.apps.maps"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$900(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$900(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x7f1002bd
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
