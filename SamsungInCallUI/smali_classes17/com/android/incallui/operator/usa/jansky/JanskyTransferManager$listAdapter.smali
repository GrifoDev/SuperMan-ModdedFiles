.class Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;
.super Landroid/widget/ArrayAdapter;
.source "JanskyTransferManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "listAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private item:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;


# direct methods
.method public constructor <init>(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p4, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;->item:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    if-nez v2, :cond_1

    iget-object v4, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$100(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v4, 0x7f040182

    invoke-virtual {v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    new-instance v0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter$ViewHolder;

    invoke-direct {v0, p0, v7}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter$ViewHolder;-><init>(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$1;)V

    const v4, 0x7f10042e

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, v0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/view/View;->setClickable(Z)V

    new-instance v4, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter$1;

    invoke-direct {v4, p0, p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter$1;-><init>(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;->item:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v4, v0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setFocusable(Z)V

    iget-object v4, v0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setClickable(Z)V

    iget-object v4, v0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    invoke-virtual {v4, p1}, Landroid/widget/RadioButton;->setId(I)V

    iget-object v4, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mRadioButtonList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$800(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, v0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v2

    :cond_1
    move-object v2, p2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter$ViewHolder;

    goto :goto_0
.end method
