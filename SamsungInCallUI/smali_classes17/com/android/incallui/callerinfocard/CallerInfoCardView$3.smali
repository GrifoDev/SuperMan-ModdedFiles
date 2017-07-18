.class Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;
.super Ljava/lang/Object;
.source "CallerInfoCardView.java"

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
    .locals 17

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onClick(View "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", id "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")..."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v12}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->getContext()Landroid/content/Context;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v13}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->getContext()Landroid/content/Context;

    const-string v13, "layout_inflater"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v12, 0x7f040168

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    const v12, 0x7f10041b

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    new-instance v12, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3$1;-><init>(Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;)V

    invoke-virtual {v7, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mImageUri :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v13}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$800(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v12}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$800(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v12}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$800(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v12}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$900(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0445

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v9, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v12}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$900(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0440

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v1, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v12}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$900(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0443

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    mul-int/lit8 v10, v12, -0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v12}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$900(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0442

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    mul-int/lit8 v11, v12, -0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v12}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$900(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0444

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    mul-int/lit8 v2, v12, -0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v12}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$700(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/widget/PopupWindow;

    move-result-object v12

    if-nez v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    new-instance v13, Landroid/widget/PopupWindow;

    invoke-direct {v13, v7, v9, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    invoke-static {v12, v13}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$702(Lcom/android/incallui/callerinfocard/CallerInfoCardView;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v12}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$700(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/widget/PopupWindow;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v12

    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v12}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$1000(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Z

    move-result v12

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v12}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$700(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/widget/PopupWindow;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v13}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$1100(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/widget/ImageView;

    move-result-object v13

    invoke-virtual {v12, v13, v11, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v12}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$700(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/widget/PopupWindow;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v13}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$1100(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/widget/ImageView;

    move-result-object v13

    invoke-virtual {v12, v13, v10, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto/16 :goto_0

    :pswitch_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Google maps with co-ordinates : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v13}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$1200(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v13}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$1300(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v13, "geo:%f,%f?q=%f,%f"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$1200(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$1300(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$1200(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$1300(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v6, Landroid/content/Intent;

    const-string v12, "android.intent.action.VIEW"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-direct {v6, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v12, "com.google.android.apps.maps"

    invoke-virtual {v6, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v12}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$900(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v12}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$900(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f100241
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
